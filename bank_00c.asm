; Disassembly of "money_idol_exchanger.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    ld hl, $4087
    ld de, $4037
    call Call_000_0fe5
    ld hl, $5087
    ld de, $4047
    call Call_000_0fe5
    nop
    nop
    nop
    ld hl, $6087
    ld de, $4057
    call Call_000_0fe5
    nop
    nop
    nop
    ld hl, $68e7
    ld de, $4067
    call Call_000_0fe5
    nop
    nop
    nop
    ld hl, $693f
    ld de, $4077
    call Call_000_0fe5
    ret


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
    nop
    nop
    nop
    nop
    sbc c
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
    and c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    ld a, a
    add b
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
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    nop
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    rst $38
    rst $38
    ld a, a
    add b
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
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
    rst $38
    nop
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rrca
    db $fc
    rra
    ldh a, [$3f]
    ldh [$7f], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add a
    cp $ee
    pop af
    pop af
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    ld sp, $2000
    nop
    jr nz, jr_00c_41c7

jr_00c_41c7:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, de
    rst $20
    and a
    ld e, [hl]
    ld e, a
    ld b, $07
    ld b, $07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and $00
    ld e, h
    nop
    inc b
    nop
    inc b
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
    ldh [$3f], a
    ldh a, [$1f]
    ld hl, sp+$1f
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    add b
    rst $38
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
    ld a, a
    nop
    ld a, a
    nop
    ld bc, $01fe
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    nop
    inc a
    db $f4
    db $ec
    inc e
    inc d
    inc c
    inc c
    ld b, $b6
    ld c, a
    rst $08
    rst $38
    ccf
    ccf
    ld e, $1f
    inc a
    nop
    inc c
    nop
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    pop bc
    nop
    ld [hl+], a
    nop
    inc d
    nop
    rrca
    jr jr_00c_4279

    ld [$380f], sp
    rrca
    ld a, a
    ld e, $7f
    db $fc
    rst $30
    adc [hl]
    ei
    add $3d
    rrca
    nop

jr_00c_4279:
    rrca
    nop
    rrca
    nop
    rrca
    nop
    stop
    add sp, $00
    inc b
    nop
    ld [bc], a
    nop
    rst $38
    ld bc, $02fe
    db $fc
    inc b
    db $fc
    add h
    db $fc
    db $fc
    db $ec
    cp $fe
    jp $bde7


    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld a, h
    nop
    inc b
    nop
    ld a, $00
    ld b, e
    nop
    rra
    ld sp, $1f0e
    dec b
    ld c, $05
    ld a, $06
    ld a, a
    dec b
    cp $0f
    rst $38
    ld a, [de]
    cp $1f
    nop
    ld c, $00
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    add hl, bc
    nop
    ld [de], a
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
    pop bc
    rst $38
    add e
    rst $38
    rlca
    rst $38
    sbc a
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
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    jr nz, jr_00c_4319

jr_00c_4319:
    jr nz, jr_00c_431b

jr_00c_431b:
    jr nz, jr_00c_431d

jr_00c_431d:
    jr nz, jr_00c_431f

jr_00c_431f:
    jr nz, jr_00c_4321

jr_00c_4321:
    jr nz, jr_00c_4323

jr_00c_4323:
    inc [hl]
    nop
    add sp, $00
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    inc b
    nop
    inc c
    nop
    rrca
    cp $0f
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    inc bc
    nop
    ld a, a
    nop
    dec de
    ld a, h
    dec [hl]
    ld hl, sp-$07
    ldh a, [$ec]

jr_00c_436e:
    ldh a, [$f4]
    ld hl, sp-$03
    ld hl, sp-$06
    ldh a, [$fc]
    ld a, [c]
    jr jr_00c_4379

jr_00c_4379:
    jr nc, jr_00c_437b

jr_00c_437b:
    ret nc

    nop
    jr nz, jr_00c_437f

jr_00c_437f:
    jr nz, jr_00c_4381

jr_00c_4381:
    jr z, jr_00c_4383

jr_00c_4383:
    jr nc, jr_00c_4385

jr_00c_4385:
    jr nz, jr_00c_4387

jr_00c_4387:
    add d
    ld a, a
    ld bc, $81ff
    ld a, a
    ld b, a
    dec sp
    xor e
    rla
    or a
    ld [hl], a
    db $ed
    ld b, a
    cp l
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld [hl], $00
    ld b, l
    nop
    or l
    nop
    push bc
    ld a, d
    add d
    db $fd
    ld b, e
    cp h
    and h
    jr jr_00c_436e

    inc e
    cp a
    add d
    cp $91
    rst $38
    sbc $81
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    and d
    nop
    cp [hl]
    nop
    ld a, a
    nop
    ld a, [c]
    cp $fb
    ld a, a
    ret z

    ld c, a
    ld c, h
    rst $18
    rst $38
    ccf
    ld a, a
    rra
    rst $38
    ccf
    ld l, a
    cp a
    ld [c], a
    nop
    or c
    nop
    ret z

    nop
    ld c, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld c, d
    nop
    ld b, [hl]
    nop
    rst $18
    ld a, a
    add b
    jp nz, $c380

    add b
    jp nz, $e981

    add e
    rst $10
    xor d
    cp d
    and $67
    rst $18
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    add e
    nop
    xor e
    nop
    xor $00
    cp $00
    db $10
    sub h
    jr nz, jr_00c_4477

    ret z

    set 6, h
    db $f4
    cp e
    xor e
    ld hl, sp+$7f
    cp e
    cp h
    dec de
    adc h
    jr c, jr_00c_4419

jr_00c_4419:
    jr nc, jr_00c_441b

jr_00c_441b:
    db $fc
    nop
    rst $38
    nop
    xor a
    nop
    ld a, b
    nop
    ld hl, sp+$00
    ld l, b
    nop
    inc de
    inc de
    ld [$0628], sp
    or $0f
    rst $28
    rst $30
    push af
    ccf
    rst $38
    or [hl]
    ld d, [hl]
    ret c

    inc de
    scf
    nop
    inc e
    nop
    rrca
    nop
    rra
    nop
    push af
    nop
    ccf
    nop
    rra
    nop
    inc d
    nop
    add a
    add h
    rlca
    inc b
    inc bc
    ld b, $03
    ld e, [hl]
    add e
    xor d
    db $d3
    jp nc, $baab

    cp a
    xor a
    add a
    nop
    rlca
    nop
    inc bc
    nop
    add e
    nop
    rst $10
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    ldh a, [$f7]
    ld a, c
    ei
    db $fd
    rst $38
    cp $ff
    rst $28
    rst $38
    ld c, a
    rst $38
    inc b
    rst $38
    rrca

jr_00c_4477:
    jp nz, $c200

    nop
    sub d
    nop
    or c
    nop
    cp b
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    cp $bf
    rst $28
    ld a, a
    call nc, $dd77
    ld e, [hl]
    db $dd
    ld e, [hl]
    sbc $df
    sbc $df
    db $ed
    cp $7a
    nop
    rst $28
    nop
    call nc, $dc00
    nop
    call c, $9400
    nop
    call nc, Call_00c_6800
    nop
    rst $30
    cp $6b
    ei
    rst $28
    ld l, a
    xor a
    ld l, a
    rst $08
    cpl
    rst $28
    rrca
    rst $20
    rra
    pop hl
    rrca
    or a
    nop
    ld l, e
    nop

Call_00c_44bb:
    cpl
    nop
    rrca
    nop
    dec bc
    nop
    add hl, bc
    nop
    ld b, $00
    ld bc, $6700
    cp a
    and e
    ld e, [hl]
    and e
    ld e, [hl]
    or a
    ld e, [hl]
    rst $38
    ld a, [hl]
    cp a
    db $fc
    xor a
    ld hl, sp+$2f
    ld hl, sp+$43
    nop
    and e
    nop
    and e
    nop
    and e
    nop
    jp $9700


    nop
    xor a
    nop
    cpl
    nop
    ldh [$e2], a
    or h
    push af
    rst $18
    rst $38
    ld a, a
    ld a, a
    rst $30
    rst $38
    add e
    rst $38
    ld bc, $07ff
    rst $38
    db $fc
    nop
    ld e, $00
    adc a
    nop
    pop af
    nop
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or e
    ld [hl], h
    ld h, a
    ld hl, sp+$3f
    ld b, e
    rst $18
    ldh [$e6], a
    jp hl


    ld sp, hl
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    jr c, jr_00c_4519

jr_00c_4519:
    nop
    nop
    add b
    nop
    ret nz

    nop
    jr nc, jr_00c_4521

jr_00c_4521:
    add hl, sp
    nop
    ld b, a
    nop
    ld [bc], a
    nop
    reti


    inc l
    call z, $831f
    ei
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    jp $87ff


    rst $38
    ld [$0000], sp
    nop
    rlca
    nop
    ld a, h
    nop
    add d
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ld c, l
    rst $38
    ld e, e
    ld a, a
    db $f4
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
    ld c, b
    nop
    db $d3
    nop
    rst $20
    nop
    dec d
    nop
    inc c
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    rst $38
    ld sp, $4bfe
    rst $38
    adc c
    rst $38
    ld b, $ff
    add [hl]
    rst $38
    ret nz

    rst $38
    ldh [$fe], a
    ld h, e
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    cp $00
    jp $dfdd


    pop hl
    or $f9
    db $fd
    sbc [hl]
    rst $38
    rlca
    rst $38
    ld a, c
    add a
    rst $38
    ld [bc], a
    rst $38
    add b
    nop
    add b
    nop
    ld h, b
    nop
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    add a
    nop
    ld [bc], a
    nop
    reti


    rst $20
    ld a, c
    rst $00
    di
    rst $08
    ld l, [hl]
    rst $18
    add hl, sp
    ld a, [$fef5]
    ld e, b
    cp a
    jp hl


    rra
    nop
    nop
    nop
    nop
    ld bc, $0600
    nop
    inc e
    nop
    db $f4
    nop
    jr jr_00c_45c5

jr_00c_45c5:
    add hl, bc
    nop
    rst $38
    ldh a, [rIE]
    cp $bd
    jp Jump_000_07fb


    call c, $a03e
    ld a, b
    ret nz

    ldh [rP1], a
    ldh [$bf], a
    nop
    ld a, a
    nop
    add c
    nop
    inc bc
    nop
    inc e
    nop
    jr nz, jr_00c_45e3

jr_00c_45e3:
    ret nz

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
    ld bc, $7bff
    add [hl]
    adc $04
    inc c
    dec c
    dec e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    add h
    nop
    inc b
    nop
    ld [$ff00], sp
    ld e, b
    rst $30
    ld [hl], h
    ei
    ei
    db $ed
    cp l
    sub $be
    db $eb
    sbc a
    ld a, a
    ld [hl], l
    cpl
    dec l
    rst $20
    nop
    db $e3
    nop
    or b
    nop
    ld a, b
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    rrca
    nop
    ld h, $00
    rst $08
    inc a
    rst $30
    rrca
    ld a, [$7f87]
    ld d, c
    xor a
    xor d
    ld b, l
    ld b, l
    sub l
    sub l
    ld a, [$ffea]
    nop
    rst $38
    nop
    ld a, a
    nop
    cpl
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    sub b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$9f], a
    ldh a, [rIE]
    sbc a
    ld hl, sp+$6f
    ret c

    sbc $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret c

    nop
    ld c, b
    nop
    dec bc
    dec de
    dec de
    dec sp
    rla
    inc [hl]
    rla
    ld [hl], h
    scf
    ld [hl], h
    cpl
    add sp, $6f
    ld [$d7dc], a
    ld [$1000], sp
    nop
    inc de
    nop
    inc de
    nop
    inc hl
    nop
    daa
    nop
    ld b, a
    nop
    rst $08
    nop
    rst $38
    ld l, [hl]
    rst $18
    ld a, a
    ret nz

    ld a, a
    ld b, b
    ld hl, sp-$80
    ldh a, [$80]
    ldh a, [$f0]
    ld hl, sp-$01
    rst $38
    cp e
    nop
    rst $18
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    ldh a, [rP1]
    cp a
    nop
    rst $38
    push de
    rst $38
    ldh [rNR31], a
    push af
    rla
    dec a
    ld a, [bc]
    rra
    ld a, [bc]
    rra
    dec d
    ccf
    rst $30
    rst $38
    ld l, d
    nop
    rst $38
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    dec e
    nop
    rst $38
    nop
    db $e4
    and a
    db $f4
    scf
    cp h
    ld l, a
    sbc [hl]
    ld [hl], a
    sbc [hl]
    di
    sub a
    ld sp, hl
    inc de
    db $fd
    ld d, b
    rst $38
    ld h, h
    nop
    db $e4
    nop
    db $f4
    nop
    ld a, [$fe00]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call c, $bad7
    and a
    ld [hl], c
    ld c, a
    pop hl
    sbc a
    push hl
    rra
    jp nz, $833f

    ld a, a
    ld a, h
    rst $38
    adc a
    nop
    sbc a
    nop
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
    db $fc
    nop
    db $fc
    rst $38
    or $f7
    ld e, l
    cp $d7
    sbc $9f
    sbc $8d
    cp $c3
    db $ec
    ld l, a
    pop af
    db $fc
    nop
    sub $00
    call c, $9c00
    nop
    inc d
    nop
    adc b
    nop
    add b
    nop
    ld b, b
    nop
    ld a, a
    rst $38
    dec a
    db $fd
    rst $10
    ccf
    push de
    scf
    or $17
    db $e3
    rra
    ldh [rIF], a
    ld sp, $1fef
    nop
    add hl, hl
    nop
    rla
    nop
    rla
    nop
    dec b
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ldh [rIE], a
    ldh a, [$ef]
    rst $38
    ldh a, [rIE]
    cp $fb
    ld [$d4f7], a
    rst $38
    rst $18
    ei
    cp [hl]
    cp a
    nop
    rst $38
    nop
    xor a
    nop
    pop hl
    nop
    or c
    nop
    ld h, e
    nop
    ld h, a
    nop
    db $db
    nop
    ldh a, [$9b]
    ldh [$37], a
    ret nz

    ld h, a
    add e
    rst $08
    ld c, $9c
    add hl, sp
    ld [hl], b
    rst $20
    ret nz

    or c
    ld c, $f0
    nop
    ldh [rP1], a
    ret nz

    nop
    add e
    nop
    inc c
    nop
    jr nc, jr_00c_4783

jr_00c_4783:
    ret nz

    nop
    nop
    nop
    dec sp
    db $fc
    ld a, $ff
    ld a, a
    rst $28
    rst $28
    rst $20
    rst $20
    inc hl
    inc de
    pop af
    ld c, $fb
    inc c
    rst $38
    jr nc, jr_00c_4799

jr_00c_4799:
    inc a
    nop
    ld l, d
    nop
    push hl
    nop
    ld [hl+], a
    nop
    ld de, $0a00
    nop
    inc c
    nop
    inc hl
    rst $18
    rst $08
    ccf
    ccf
    ei
    rst $38
    pop af
    sbc $c3
    rrca
    inc b
    sbc h
    sbc b

jr_00c_47b5:
    db $eb
    ldh a, [rSB]
    nop
    rlca
    nop
    dec de
    nop
    pop af
    nop
    jp nz, $0400

    nop
    sbc b
    nop
    ldh [rP1], a
    pop hl
    rst $38
    ld bc, $80ff
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    add sp, $1f
    add h
    ld a, a
    ld [bc], a
    rst $38
    pop hl
    nop
    ld bc, $8000
    nop
    ret nz

    nop
    jr nc, jr_00c_47e1

jr_00c_47e1:
    ld [$0400], sp
    nop
    ld [bc], a
    nop
    adc a
    ld d, b
    adc a
    ld [hl], b
    rst $00
    jr c, jr_00c_47b5

    jr c, @-$1c

    dec e
    ld [c], a
    dec d
    ldh a, [$0b]
    pop af
    ld c, $ff
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ldh a, [$0d]
    pop bc
    inc sp
    add e
    ld c, a
    dec bc
    cp a
    daa
    ld a, a
    ld c, a
    rst $20
    sbc a
    ld c, [hl]
    daa
    sbc l
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [$91ff], sp
    rst $38
    ld [hl+], a
    rst $38
    cp $c3
    rst $38
    adc a
    rst $38
    cp a

Jump_00c_482d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    cp [hl]
    rst $38
    cp e
    dec a
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    ld b, c
    rst $38
    ld b, h
    rst $38
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ldh [$8f], a
    ldh a, [$8f]
    ret nc

    rst $00
    add sp, $07
    add sp, -$7d
    inc [hl]
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    add a
    rst $38
    ld sp, hl
    ld b, $fa
    dec b
    ld hl, sp+$06
    ld hl, sp+$07
    ld a, [$f205]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    db $fd
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld b, e
    dec l
    dec d
    ld b, d
    ld bc, $00d4
    db $ed
    ret nz

    ccf
    call nc, $fc2f
    inc hl
    and $59
    ld b, d
    rst $38
    ld d, l
    rst $38
    sub l
    rst $38
    and l
    rst $38
    push hl
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    cp [hl]
    rst $38
    ld a, [$4a95]
    or b
    ld b, l
    jr z, jr_00c_48b2

    ld [hl], e
    daa
    ld a, [hl]
    inc c

jr_00c_48b2:
    ei
    sbc e
    ld [hl], h
    ld h, $fd
    ld l, d
    rst $38
    ld l, d
    rst $38
    ld h, l
    rst $38
    ld h, l
    rst $38
    ld d, c
    rst $38
    ld d, a
    rst $38
    rst $08
    rst $38
    adc e
    rst $38
    add e
    inc d
    ld b, e
    inc [hl]
    ld sp, $114a
    ld [$2ad1], a
    reti


    ld h, $b9
    ld b, [hl]
    ld bc, $87fe
    rst $38
    ld b, a
    rst $38
    ld [hl], e
    rst $38
    inc sp
    rst $38
    di
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    inc c
    di
    dec c
    push af
    dec bc
    pop af
    ld c, $f3
    inc c
    di
    inc c
    db $f4
    rrca
    ld [$fb17], a
    rst $38
    ld a, [$feff]
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ei
    add h
    inc bc
    db $fd
    add c
    ld [hl], a
    ld b, b
    dec a
    ld b, b
    cpl
    ld h, c
    rra
    pop de
    ld [hl], $d2
    dec a
    ld a, a
    rst $38
    cp $ff
    or $ff
    ld l, a
    rst $38
    ld l, c
    rst $38
    db $76
    rst $38
    pop hl
    rst $38
    ld [c], a
    rst $38
    ld h, b
    cp a
    add sp, $1e
    and b
    ld e, a
    add sp, $1b
    call nc, $e82f
    dec d
    ld [hl], a
    adc b
    add sp, $77
    rlca
    rst $38
    and $ff
    xor e
    rst $38
    and d
    rst $38
    sub c
    rst $38
    adc b
    rst $38
    rlca
    rst $38
    ld bc, $09ff
    or $16
    xor c
    ld d, $a9
    ld [hl], $c9
    ld h, [hl]
    sbc c
    ld h, [hl]
    sbc c
    sub $29
    cp e
    ld b, h
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp c, $ca25

    dec h
    add d
    ld d, a
    add e
    ld [hl], a
    ld b, $af
    add l
    ld l, $0a
    ld b, l
    add hl, de
    ld b, [hl]
    db $fd
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    call z, $d9ff
    rst $38
    db $db
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp l
    ld b, d
    db $10
    rst $28
    ld c, l
    cp $20
    cp $44
    ei
    ld [$d2f6], sp
    ld a, $22

jr_00c_4996:
    sbc [hl]
    db $fc
    rst $38
    sbc a
    rst $38
    or e
    rst $38
    jp $81ff


    rst $38
    jp $e5ff


    rst $38
    ld sp, hl
    rst $38
    jp nc, $882f

    rst $38
    ld b, $f9
    ld b, [hl]
    sub c
    sub c
    rst $38
    ld [bc], a

jr_00c_49b2:
    rst $30
    ld a, [hl-]
    ld a, a
    jr jr_00c_49b2

    ld bc, $07ff
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld c, $ff
    db $fc
    rst $38
    push bc
    rst $38
    add $ff
    dec sp
    call nz, Call_00c_44bb
    dec l
    jp nc, $d2ad

    ld b, l
    cp d
    dec b
    ld a, [$d22d]
    jp hl


    ld d, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ld hl, sp+$05
    jr nc, @-$33

    ld b, $30
    ld [$19f0], sp
    ldh [rNR30], a
    ld h, c
    inc d
    db $eb
    inc c
    ld a, [c]
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    rst $38
    ld [$87df], sp
    ld l, b
    ld h, [hl]
    db $10
    add b
    ld [hl], e
    nop
    rst $00
    jr jr_00c_4996

    ldh [rIF], a
    adc c
    ld [hl], $37
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ld c, c
    add [hl]
    add [hl]
    ld sp, $f804
    ld [bc], a
    ld hl, sp-$5e
    ld e, h
    pop de
    inc c
    add hl, bc
    add [hl]
    ld c, h
    add d
    rst $38
    rst $38
    rst $08
    rst $38
    rlca
    rst $38
    rlca
    rst $38

jr_00c_4a3f:
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    ld e, a
    jr nz, jr_00c_4a3f

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    ldh a, [rIF]
    add $39
    sbc e
    ld h, b
    daa
    ret nz

    ld b, a
    add b
    ld b, e
    add b
    call nz, $fe02
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $8bff
    ld d, h
    or a
    ld c, b
    dec c
    ldh a, [rTMA]
    add sp, $16
    ret nc

    add e
    ld d, h
    sbc e
    ld e, b
    inc bc
    jr nz, jr_00c_4a98

jr_00c_4a98:
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr z, @+$01

    jr z, @+$01

    inc h
    rst $38
    call c, $e0ff
    db $10
    add sp, $10
    call nc, Call_00c_6808
    rlca
    daa
    nop
    inc bc
    nop
    sub c
    nop
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

jr_00c_4ac0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec sp
    ld b, h
    ld e, a
    jr nz, jr_00c_4aeb

    ldh [$c3], a
    inc a
    ld sp, hl
    ld b, $c0
    inc hl
    jr c, jr_00c_4ada

    sbc [hl]
    ld bc, $ff7f
    ccf

jr_00c_4ada:
    rst $38
    ccf
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    dec e
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    jr @-$5a

    sub b
    ld l, b

jr_00c_4aeb:
    nop
    cp e

jr_00c_4aed:
    nop
    ld [hl], c
    ld [hl+], a
    pop de
    jr nz, jr_00c_4b46

    jr nc, jr_00c_4ac0

    ld [de], a
    db $ed
    jp $c7ff


    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    adc [hl]
    rst $38
    add a
    rst $38
    add e
    rst $38
    sbc c
    ld h, d
    and l
    ld c, d
    add h
    add hl, bc
    ld [hl], $c8
    inc bc
    ld hl, sp+$02
    ldh a, [rSC]
    ld hl, sp+$41
    xor h
    add h
    rst $38
    add h
    rst $38
    add $ff
    rst $00
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    ld [hl-], a
    call Call_00c_6798
    add b
    ccf
    ld b, b
    sbc [hl]
    jr nz, jr_00c_4b3a

    sbc b

jr_00c_4b32:
    rlca
    ld h, b
    rra
    ld [bc], a
    cp e
    nop
    rst $38
    nop

jr_00c_4b3a:
    rst $38
    ld b, b
    rst $38
    ld h, c
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, c

jr_00c_4b46:
    rst $38
    ld [hl], a
    ld [$8b34], sp
    jr jr_00c_4b51

    nop
    ld [hl], e
    inc bc
    db $e4

jr_00c_4b51:
    inc bc
    call nz, $a403
    add c
    ld h, d
    rst $38
    rst $38
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
    ld a, a
    rst $38
    add b
    dec b
    jr z, jr_00c_4aed

    jr nz, jr_00c_4b32

    ld [hl], b
    add l
    ld d, b
    adc d
    sbc b
    ld [bc], a
    sub $08
    ld e, d
    adc l
    ld b, d
    rst $38
    ld b, l
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld bc, $04ff
    rst $38
    inc bc
    ld b, b
    ld a, [bc]
    cp c
    ld [hl+], a
    ld d, h
    ld h, h
    ld [de], a
    ld h, c
    sub l
    ldh [rNR21], a
    db $10
    ld sp, hl
    ld [$bcfd], sp

jr_00c_4b98:
    rst $38
    ld b, h
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    ld a, [bc]
    rst $38
    add hl, bc
    rst $38
    ld h, [hl]
    rst $38
    sub d
    rst $38
    ld e, b
    dec b
    ld c, h
    ld [bc], a
    ld b, a
    add b
    ld h, c
    add b
    jr nc, jr_00c_4bf1

    sbc c
    and b
    ld b, d
    ld b, l
    db $10
    ld a, a
    add d
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    cp b
    rst $38
    adc a
    rst $38
    and $01
    ld a, $41
    inc e
    and e
    add c
    ld b, a
    ld e, b
    inc bc
    jp nz, Jump_00c_6023

    sub c
    jr nc, jr_00c_4b98

    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr c, @+$01

    inc h
    rst $38
    inc d
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld bc, $02f8
    pop hl
    inc b
    add e
    db $10
    adc a
    adc b
    ld e, a

jr_00c_4bf1:
    adc a
    ld e, a
    push bc
    cpl
    ld bc, $87f7
    rst $38
    sbc a

jr_00c_4bfa:
    rst $38

jr_00c_4bfb:
    db $fd
    rst $38
    ld sp, hl
    rst $38
    rst $30
    rst $38
    ldh a, [rIE]
    ld a, [$feff]
    rst $38
    add hl, bc
    cp h
    sbc c
    ld a, [hl]
    ld b, b
    dec sp
    rra
    ldh [$3f], a
    ld b, b
    jr jr_00c_4bfa

    nop
    sbc a
    nop
    ld hl, sp-$49
    rst $38
    rst $20
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ret nc

    rst $38
    ld a, [bc]
    rst $38
    adc h
    ld e, a
    nop
    rst $28
    pop bc
    inc a
    nop
    xor $08
    ld [hl], a
    jr nz, jr_00c_4bfb

    ld [$7507], sp
    rst $38
    or d
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ld a, [c]
    rst $38
    add e
    rst $38
    rlca
    rst $38
    jr nz, @+$43

    ld c, b
    add c
    add [hl]
    nop
    ld d, e
    nop
    add b
    ld sp, $f930
    ld [hl], c
    ld a, [$f463]
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
    rst $08
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    ld [hl-], a

jr_00c_4c68:
    call Call_00c_6f98
    add $39
    add $39
    ld h, [hl]
    sbc c
    sub d
    ld l, c
    ld a, [hl+]
    sub c
    sub b
    ld h, e
    adc c
    rst $38
    rst $00
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop af
    rst $38
    ld h, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$3e], a
    jr nc, jr_00c_4c68

    ld a, [de]
    call z, $a40b
    rlca
    ld hl, sp+$37
    cp b
    ccf
    ret nz

    add hl, de
    ldh [$c9], a
    rst $38
    ld [c], a
    rst $38
    pop de
    rst $38
    cp b
    rst $38
    jr @+$01

    nop
    rst $38
    add b
    rst $38
    add $ff
    rst $00
    rst $38
    rra
    ldh a, [rSVBK]
    rst $08
    ld b, b
    or a
    nop
    ld d, c
    ld h, c
    sbc a
    cp l
    rra
    ld [c], a
    ld e, $30
    rst $38
    ld c, a
    rst $38
    ccf
    rst $38
    ld [hl], a
    rst $38
    sbc a
    rst $38
    ld c, $ff
    nop
    rst $38
    ld bc, $41ff

jr_00c_4cc8:
    pop hl
    and c
    ld sp, $f000
    ld d, d
    ld [hl], b
    ld d, l
    ld [hl], h
    ld a, [bc]
    ld l, [hl]
    ld [$936f], sp
    di
    cp d
    rst $38
    jp c, $f9ff

    rst $38
    adc l
    rst $38
    adc d
    rst $38
    sub c
    rst $38
    sub b
    rst $38
    inc c
    rst $38
    jr nz, jr_00c_4cc8

    inc e
    db $e3
    inc c
    di
    add hl, bc
    or $40
    cp h
    call nz, Call_000_3738
    ld [$0d32], sp
    adc a
    rst $38
    ld b, c
    rst $38
    ld hl, $e2ff
    rst $38
    inc d
    rst $38
    ld [$f8ff], sp
    rst $38
    ld hl, sp-$01
    nop
    rst $18
    inc bc
    db $ec
    rlca
    ld hl, sp+$18
    rst $20
    adc a
    ld [hl], b
    rst $00
    jr c, @+$03

    cp $00
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    daa
    rst $38
    ld hl, $40ff
    rst $38
    inc d
    db $eb
    ld l, b
    sub a
    or $09
    ld c, $f1
    db $ec
    inc de
    ret nc

    cpl
    nop
    rst $38
    ld bc, $effe
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    pop af
    rst $38
    pop bc
    rst $38
    ld [bc], a
    rst $38
    daa
    ld hl, sp-$61
    ld h, b
    add e
    ld a, h
    add hl, de
    and $00
    rst $38
    ld b, e
    cp h
    inc hl
    inc e
    jr nc, jr_00c_4d66

    ld e, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld b, e
    rst $38
    ld h, l
    rst $38
    sbc b
    rst $38
    ld [$05ff], sp

jr_00c_4d66:
    rst $38
    ld b, h
    add e
    jr @+$08

    ldh [$1f], a
    nop
    rst $38
    ld bc, $c0fe
    ccf
    jr nc, jr_00c_4dc4

    adc h

jr_00c_4d76:
    inc sp
    ld bc, $03ff
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    ret z

    rst $38
    jr nc, @+$01

    adc h
    rst $38
    db $d3
    rst $38
    adc c
    ld [hl], h
    add a
    ld a, b
    inc b
    ld a, a
    nop
    rst $38
    nop
    ld sp, hl
    ret nz

    add hl, sp
    ld b, b
    cp c
    jr nz, jr_00c_4d76

    ld [c], a
    rst $38
    ret nc

    rst $38
    ret z

    rst $38
    adc a
    rst $38
    db $eb
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    call nz, $103e
    cp $81
    cp $70
    adc [hl]
    ldh a, [$0e]
    ldh [$1f], a
    sbc b
    ld a, a
    ld b, c
    rst $38
    inc bc
    rst $38
    dec c
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, [$e7ff]

jr_00c_4dc4:
    rst $38
    add b
    rst $38
    inc b
    db $fd
    add b
    rst $38
    ld b, b
    ld a, a
    ld [$a08f], sp
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld e, $ff
    ccf
    rst $38
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
    ld e, $00
    ld de, $ff00
    nop
    rst $38
    nop
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop

jr_00c_4e5e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    ccf
    ld a, [$f739]
    ld h, a
    cp b
    ret c

    ld a, b
    ld hl, sp-$07
    sbc b
    rst $38
    inc e
    db $fc
    dec bc
    stop
    nop
    ld [bc], a
    nop
    db $10
    rlca
    jr nz, jr_00c_4ea7

    nop
    rlca
    nop
    ld [bc], a
    ld bc, $0004

jr_00c_4ea7:
    rst $38
    db $fc
    ld a, a
    rst $38
    rst $18
    rst $38
    ld a, $31
    ld l, b
    rlca
    and b
    rra

jr_00c_4eb3:
    ld [hl], h
    dec bc

jr_00c_4eb5:
    sbc b
    rlca
    ld [hl], b
    nop
    inc e
    nop
    nop
    nop
    adc $00
    ldh [$08], a
    add b
    jr nz, jr_00c_4f08

    jr nc, jr_00c_4e5e

    nop
    rst $38
    inc a
    ei
    ld b, [hl]
    pop hl
    rst $38
    ccf
    rst $18
    rrca
    di
    rlca
    ld hl, sp+$08
    rst $30
    nop
    rst $38
    nop
    nop
    nop
    jr c, jr_00c_4edc

jr_00c_4edc:
    nop
    ld hl, $0c00
    nop
    rlca
    nop
    ld [$0000], sp
    nop
    rst $38
    rlca
    rst $38
    ld a, a
    db $fc
    db $fc
    ret nz

    ret nz

    ret nz

    nop
    jr nc, jr_00c_4eb3

    jr c, jr_00c_4eb5

    inc d
    ldh [rP1], a
    nop
    inc b
    nop
    ld b, e
    nop
    ccf
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    jr nc, jr_00c_4f0d

    db $10
    rst $38

jr_00c_4f08:
    db $fc
    rst $38
    db $fc
    rla
    inc d

jr_00c_4f0d:
    rla
    inc d
    rla
    inc d
    rra
    inc e
    rra
    inc e
    rra
    inc e
    ld a, b
    nop
    ld [$c000], sp
    nop
    add b
    nop
    add b
    nop
    adc b
    nop
    ld [$0800], sp
    nop
    ld sp, hl
    sub $ff
    ldh [$fc], a
    and a
    db $fd
    ld d, $fe
    dec de
    cp $0b
    db $fd
    ld d, $ff
    dec d
    add hl, bc
    nop
    sbc [hl]
    ld bc, $0018
    add hl, bc
    nop
    inc b
    nop
    inc b
    nop
    add hl, bc
    nop
    ld a, [bc]
    nop
    jr nc, @+$11

    db $d3
    inc c
    cp [hl]
    nop
    ret z

    nop
    adc d
    nop
    rst $10
    nop
    dec [hl]
    rst $00
    rra
    push hl
    jr nz, jr_00c_4f69

    ld d, d
    add c
    and h
    ld a, [de]
    ld c, b
    add b
    adc d
    nop
    sub l
    ld b, d
    db $10
    jr nz, jr_00c_4f78

    ld [$7f80], sp

jr_00c_4f69:
    ret nc

    cpl
    ld e, h
    inc hl
    rst $20
    nop
    ret nc

    inc b
    and [hl]
    sub b

jr_00c_4f73:
    db $fd
    and [hl]
    sub $7b
    nop

jr_00c_4f78:
    add b
    nop
    ret nc

    ld b, b
    inc e
    add b
    ld h, a
    add b
    ld d, b
    inc h
    ld [bc], a
    db $10
    ld c, c
    add h
    nop
    ld a, [bc]
    ldh a, [$0a]
    ldh a, [$d7]
    jr nz, jr_00c_4f73

    ld [bc], a
    dec hl
    inc b
    ld [hl], e
    inc l
    rst $10
    jr c, @+$01

    rst $10
    inc bc
    ld [$0802], sp
    add c
    ld d, [hl]
    ld b, c
    and h
    inc hl
    ld [$5003], sp
    rlca
    ret nz

    jr z, jr_00c_4fa7

jr_00c_4fa7:
    ccf
    jr c, jr_00c_4fe9

    jr c, jr_00c_4feb

    jr c, jr_00c_502d

    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    stop
    stop
    stop
    jr nz, jr_00c_4fbf

jr_00c_4fbf:
    jr nz, jr_00c_4fc1

jr_00c_4fc1:
    ld h, b
    nop
    ld b, b
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
    ld [$14ff], sp
    ei
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    rst $38
    dec d

jr_00c_4fe9:
    rst $38
    dec de

jr_00c_4feb:
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    adc d
    ld a, a
    push hl
    ccf
    push hl
    rst $38
    jp Jump_000_000a


    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    sbc a
    ld [hl], l
    rst $38
    dec de
    rst $38
    daa
    ld sp, hl
    add hl, bc
    ei
    sbc e
    ei
    db $eb
    cp d
    db $db
    ld sp, hl
    ld e, c
    adc d
    nop
    db $e4
    nop
    ret c

    nop
    ldh a, [rDIV]
    ld h, b
    inc b
    stop
    ld hl, $2621
    ld h, $7f
    ld d, d
    ccf
    dec l

jr_00c_502b:
    sbc [hl]
    ld a, [de]

jr_00c_502d:
    xor l
    and l
    or l
    or l
    cp c
    cp c
    cp c
    cp c
    cp [hl]
    cp [hl]
    xor l
    add b
    jp nc, $e4c0

    ld h, c
    ld e, b
    ld [hl], d
    ld c, b
    ld a, b
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, b
    ld a, [hl]
    cp $2b
    ei
    adc $fb
    cp $7f
    ld l, d
    cp $fb
    cp $eb
    scf
    db $fd
    rst $10
    rst $18
    call nc, Call_000_3004
    dec b
    nop
    dec b
    inc d
    dec b
    inc b
    inc b
    inc d
    inc b
    jp nz, Jump_000_20c2

    jr nz, @+$01

    ld b, b
    ld a, a
    jr nz, jr_00c_502b

    jr nz, jr_00c_502d

    jr nz, @+$01

    jr nz, jr_00c_50f1

    ret nc

    rst $28
    cp b
    rst $30
    ld e, $00
    add b
    nop
    ld b, b
    nop
    add b
    nop
    add b
    nop
    ret nz

    jr nz, jr_00c_5083

jr_00c_5083:
    ld b, b
    nop
    ldh [rP1], a
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld b, $fb
    ld c, $ff
    inc [hl]
    nop
    nop
    dec b
    ld bc, $080c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$60ff], sp
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld h, c
    cp $02
    cp $8e
    ld [hl], h
    ld a, h
    nop
    nop
    ld b, b
    ld b, b
    ret nz

    add b
    ld b, b
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    rst $38
    scf
    ei
    inc sp
    db $fc
    ld l, b
    rst $38
    rst $38
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    dec bc
    rlca
    inc c
    rlca
    rla
    inc bc
    jr nz, jr_00c_50ff

    xor $0e
    ld e, a
    rrca
    ld e, a
    inc e
    ccf
    jr jr_00c_5145

    ld e, l
    cp a
    cp a
    xor $c6
    sbc e
    ld de, $d6ff

jr_00c_50f1:
    ld sp, hl
    ld a, [$fbcf]
    rst $38
    xor a
    and b
    cp l
    ld b, b
    rst $00
    add hl, hl
    rst $00
    cp $64

jr_00c_50ff:
    add hl, hl

jr_00c_5100:
    ld bc, $0701
    add h
    inc b
    inc bc
    ld d, e
    rst $38
    push de
    ld l, a
    ld a, [hl-]
    rst $38
    ld [hl], c
    rst $38
    rst $00
    rst $38
    ld a, a
    db $fc
    db $fc
    cp $fe
    cp $fe
    ld [c], a
    ret z

    push bc
    add b
    adc [hl]
    nop
    jr c, jr_00c_511f

jr_00c_511f:
    add a
    add a

jr_00c_5121:
    dec sp
    jr c, jr_00c_511f

    ld a, [$f2fb]
    jp hl


    rra
    add $bf
    pop bc
    ld a, a
    ldh [$df], a
    add hl, sp
    ld h, $17
    db $10
    ld [$0f08], sp
    inc c
    ldh [rP1], a
    ld b, b
    nop
    add b
    nop
    nop
    jr nz, jr_00c_5100

    add hl, de
    ld h, b
    rlca
    jr nc, jr_00c_5145

jr_00c_5145:
    db $10
    inc bc
    rst $18
    ret z

    cp a
    jr nc, @+$01

    ldh [$bf], a
    db $10
    rst $08
    ld a, $43
    dec a
    ldh [$1f], a
    sbc b
    ld h, a
    nop
    stop
    add b
    nop
    nop
    nop
    and b
    add b
    ld b, b
    ld b, d
    nop
    jr nz, @-$3e

    jr @-$7e

    ret c

    adc b
    db $fc
    ld a, h
    call nc, $2efc
    cp $d3
    ld a, a
    and b
    pop af
    ld b, c
    pop hl
    add b
    pop bc
    dec b
    ld d, b
    rlca
    inc b
    inc bc
    ld [$1203], sp
    nop
    xor h
    nop
    ld e, a
    nop
    cp [hl]
    nop
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

jr_00c_5197:
    cp [hl]
    cp b
    ld a, [hl]
    jr nc, @+$7e

    jr nc, jr_00c_5121

    add b
    cp a
    sub b
    ld a, a
    jr nc, @+$01

    ld h, b
    ld a, [hl]
    jr nz, jr_00c_5197

    ld e, e
    db $d3
    ccf
    ld h, a
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld bc, $01a5
    ret nz

    inc bc
    nop
    ld b, $00
    adc a
    nop
    sbc a
    ld [$080f], sp
    rrca
    inc c
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
    cp $fe
    db $fd
    db $fd
    ld hl, sp-$08
    ei
    ret nz

    ei
    add b
    ei
    nop
    rst $30
    inc b
    ld [hl], a
    inc b
    adc e
    ld a, [bc]
    rst $10
    dec d
    rst $28
    ld [$0f0e], sp
    dec c
    rrca
    ld b, $07
    dec b
    rlca
    inc c
    dec c
    ld a, b
    ld a, h
    ldh a, [$f8]
    ld h, b
    ld [hl], b
    jr jr_00c_5201

    jr jr_00c_5205

    sbc b
    ld bc, $0298
    ld hl, sp+$0b

jr_00c_5201:
    ret nc

    ld d, a
    and b
    xor a

jr_00c_5205:
    ret nz

    ld e, a
    rlca
    cp $89
    ld [hl], a
    call nz, Call_00c_63bb
    db $dd
    or b
    rst $28
    ld e, b
    rst $30
    inc l
    ld a, e
    inc h
    ccf
    ld bc, $8800
    nop
    ld b, h
    nop
    ld [hl+], a
    add b
    db $10
    ld b, b
    ld [$04a0], sp
    ret nc

    nop
    ret c

    sbc l
    cp a
    scf
    rst $30
    ld a, [hl]
    ld a, [hl]
    ld [hl], h
    db $f4
    db $e4
    db $e4
    and h
    and h
    and [hl]
    and [hl]
    db $e3
    db $e3
    nop
    ld h, d
    inc e
    call nc, $b435
    dec hl
    and b
    ld d, d
    ld b, b
    ld d, d
    nop
    dec b
    inc b
    ld d, [hl]
    ld b, d
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld a, a
    ld a, a
    ld [hl], e
    ld a, e
    ld a, c
    ld a, d

jr_00c_5253:
    ld l, e
    ld l, a
    ld l, a
    ld l, a
    cp [hl]
    add b
    db $dd
    pop bc
    db $eb
    ld [c], a
    db $e3
    ld h, e
    ret nz

    ld c, b
    or c
    inc sp
    and b
    inc h
    jp $ff43


    rst $38
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $18
    cp $3e
    ld hl, sp-$08
    sbc h
    sbc h
    inc c
    inc c
    cpl
    inc l
    rst $28
    inc l
    rst $08
    ld c, h
    inc l
    jr nz, jr_00c_5253

    jp nc, Jump_000_2829

    db $f4
    sub h
    rst $30
    inc b
    rst $38
    rst $38
    or $fc
    ei
    ei
    call $86cd
    add [hl]
    ld b, e
    ld b, e
    rlca
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    jp Jump_000_3409


    scf
    ld a, d
    ld c, e
    db $fd
    add l
    db $e4
    ld b, b
    call $8305
    add e
    or b
    or b
    ldh a, [$f0]
    and b
    or b
    and b
    or b
    ld [hl], b
    ld a, b
    ret c

    call c, $9c9c
    inc d
    ld d, $e0
    xor a
    nop
    rrca
    ld b, b
    rst $18
    ld b, b
    rst $18
    add b
    adc a
    ld [hl], b
    ld d, a
    add sp, -$75
    add sp, $03
    ld d, $3d
    ld [de], a
    rra
    dec bc
    ld e, $09
    rrca
    dec b
    rrca
    inc b
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    add sp, $00
    db $ec
    ld bc, $00f4
    or $00
    ld a, [$fb00]
    nop
    db $fd
    nop
    db $fd
    ld [hl], e
    di
    ld d, a
    rst $10
    ld [hl], a
    ld [hl], a
    ld a, $7e
    ld a, $7e
    rst $38
    rst $00
    rst $08
    or a
    and a
    sbc e
    inc l
    and b
    dec hl
    add e
    ld a, [hl+]
    and d
    dec d
    call nc, $c405
    ld a, [hl-]
    ld [bc], a

Jump_00c_5303:
    dec bc
    ld b, e
    dec b
    ld hl, $f3f3
    cp $fe
    sbc [hl]
    sbc [hl]
    inc bc
    inc bc
    ld bc, $0001
    nop
    add b
    add b
    rst $20
    rst $20
    jp nc, $2dd2

    inc l
    pop af
    sub b
    adc [hl]
    ld [bc], a
    inc bc
    ld bc, $0081
    ld b, e
    nop
    sbc c
    add c
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
    sbc c
    rst $38
    rst $38
    adc a
    adc a
    di
    di
    ret z

    ld [$0001], sp
    nop
    nop
    sub d
    nop
    ld l, [hl]
    ld [$9696], sp
    ld e, c
    add hl, bc
    ld e, $12
    cp $fe
    ld hl, sp-$08
    ld l, b
    ld l, b
    ld l, l
    ld l, l
    db $ed
    db $ed
    rst $08
    rst $08
    rst $38
    rst $38
    ei
    ei
    ld a, a
    ld a, [hl]
    cp a
    cp b
    rst $18
    ld c, b
    rst $18
    ld c, l
    cp d
    xor b
    ld a, d
    ld c, d
    or c
    or c
    ld c, $0a
    inc [hl]
    ld [hl], $76
    db $76
    db $ec
    xor $f8
    db $fc
    rst $38
    rst $00
    ld sp, hl
    add $e1
    sbc [hl]
    pop hl
    ld e, $e8
    inc hl
    call c, $b855
    xor e
    ld b, b
    ld b, a
    cp b
    add b
    cp b
    add c
    ld h, b
    ld bc, $01e0
    ld bc, $0103
    ld bc, $0100
    nop
    nop
    nop
    add b
    ldh [$f0], a
    jr c, @+$1e

    inc [hl]
    ld e, $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    daa
    nop
    inc hl
    db $d3
    adc l
    jp hl


    add a
    call $f763
    ld b, c
    db $fc
    jr nc, @-$03

    adc [hl]
    cp $87
    rst $38
    add c
    ld [bc], a
    ld d, b
    ld b, b
    jr z, jr_00c_53bc

jr_00c_53bc:
    inc c
    inc h
    ld [de], a
    inc b
    ld [$0100], sp
    nop
    nop
    nop
    nop
    cp a
    cp a
    rst $38
    or $9e
    ld [bc], a
    ld h, [hl]
    ld h, d
    di
    pop af
    ei
    ld sp, hl
    cp l
    cp l
    ld a, l
    db $fc
    and $a6
    add hl, bc
    nop
    db $fd
    ld h, c
    sbc l
    ld sp, hl
    ld c, $7c
    ld b, $7c
    ld b, d
    ld a, [hl]
    inc bc
    ld a, $ff
    rst $38
    pop af
    or c
    rst $38
    rra
    rrca
    ld bc, $e1e3
    ld sp, hl
    ld sp, hl
    ld a, c
    ld a, c
    db $fd
    db $fc
    and c
    and c
    ld e, a
    ld de, $00e0
    cp $f0
    ld e, $fc
    ld b, $fe
    add [hl]
    cp $03
    ld a, [hl]
    rst $38
    adc [hl]
    cp $81
    ld hl, sp+$47
    ldh a, [$2f]
    di
    inc e
    db $fc
    adc b
    cp $44
    cp a
    ld [c], a
    ld [hl], c
    nop
    ld a, [hl]
    nop
    cp b
    add b
    ret nc

    ret nz

    ldh [$e3], a
    ld [hl], b
    ld [hl], h
    cp b
    ld a, [hl-]
    inc e
    dec e
    jp nc, $0c2c

    ldh a, [rNR32]
    ldh [rNR22], a
    ldh [$f7], a
    nop
    jp nc, Jump_00c_5303

    ld b, c
    ld l, l
    dec sp
    ret nc

    ld [bc], a
    ld [$0404], sp
    jr jr_00c_5442

    inc de
    add d
    ld [hl], l
    ld d, b

jr_00c_5442:
    add b
    db $10
    ld [bc], a
    nop
    ld b, h
    ld l, [hl]
    scf
    xor a
    ld a, c
    xor a
    ld a, b
    ld l, a
    ld hl, sp+$6f
    db $f4
    rst $20
    cp h
    rst $30
    ld a, [de]
    rst $38
    ld c, $08
    ld b, c
    nop
    add b
    nop
    add b
    nop
    nop
    ld [$0000], sp
    nop
    inc b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    db $fc
    rlca
    db $fd
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop

jr_00c_5486:
    nop
    db $fd
    db $fc
    db $dd
    ld e, h
    ei
    ei
    db $fc
    rst $38
    cp $ff
    cp $ff

jr_00c_5493:
    cp $ff
    rst $38
    rst $38
    inc bc
    ld a, $23
    ld a, $04
    inc b
    ld l, e
    ld h, e
    push af
    pop bc
    push bc
    add c
    or l
    ld bc, $004c
    cp h
    cp h
    db $fc
    db $fc
    rst $10
    sub $ef
    rst $28
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld b, e
    ld a, a
    inc bc
    ccf
    add hl, hl
    jr c, jr_00c_54d4

    ld d, $6e
    ld l, h
    ld e, b
    ld d, b
    ld d, [hl]
    ld d, b
    ld d, l
    ld b, b
    rst $18
    pop af
    rst $38
    cp b
    rst $38
    add [hl]
    rst $38
    or e
    rst $08
    ld a, [$fbce]
    rst $08

jr_00c_54d4:
    ld sp, hl
    rst $18
    pop af
    ld c, $0e
    rlca
    rlca
    ld bc, $0001
    nop
    or c
    jr nc, @-$4e

    jr nc, @-$4e

    jr nc, jr_00c_5486

    jr nz, jr_00c_5493

    dec a
    rst $28
    cp d
    ld a, a
    ld l, h
    ccf
    inc [hl]
    sbc a
    adc b
    rst $08
    ld b, h
    and a
    ld [c], a
    or e
    ld [hl], d
    ld [bc], a
    add b
    inc b
    ld b, b

jr_00c_54fb:
    db $10
    add b

jr_00c_54fd:
    ld [$10c0], sp
    ld [hl], b
    adc b
    jr c, jr_00c_5508

    inc e
    add b
    inc c
    rst $20

jr_00c_5508:
    inc a
    rst $28
    jr c, jr_00c_54fb

    jr c, jr_00c_54fd

    jr c, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nz, @+$01

    nop
    nop
    jr jr_00c_551a

jr_00c_551a:
    stop
    stop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $7e
    db $fc
    inc a
    ldh a, [$30]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [$30]
    ret nz

    ld b, b
    dec de
    ld [bc], a
    rlca
    inc b
    rra
    db $10
    ld de, $1100
    nop
    ld de, $1900
    db $10
    ld hl, $df00
    rst $38
    ld a, a
    ld a, a
    ld a, [hl]
    ld e, [hl]
    ld a, b
    ld e, b
    db $fc
    call z, $8cfc
    db $fc
    adc h
    db $fc
    adc h
    xor e
    and b
    sub b
    db $10
    adc a
    ld c, $8f
    ld [$8486], sp
    ld b, $04
    ld b, $04
    ld b, $04
    cp a
    ld [c], a
    rst $38
    db $e3
    ld a, a
    ld h, b
    ccf
    jr nz, jr_00c_55af

    jr nz, @+$41

    jr nz, @+$41

    jr nz, jr_00c_55b5

    jr nc, jr_00c_55b9

    ld b, b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    jr nz, jr_00c_5603

    ret


    ld sp, hl
    adc c
    db $fd
    inc b
    db $fd
    inc e
    db $fd
    dec a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp $3e
    ld [bc], a
    ld b, $00
    ld b, $01
    inc bc
    ld bc, $1803
    ld a, [de]
    dec a
    jr nc, jr_00c_55e0

    jr nz, jr_00c_55be

    ld bc, $30ff
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38
    db $fc

jr_00c_55af:
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld b, b

jr_00c_55b5:
    rst $38
    ld b, b
    nop
    nop

jr_00c_55b9:
    jr nc, jr_00c_55eb

    jr c, jr_00c_55dd

    ld a, b

jr_00c_55be:
    ld b, b
    ld [hl], b
    ld b, b
    nop
    nop
    add b
    add b
    add b
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop

jr_00c_55dd:
    nop
    nop
    nop

jr_00c_55e0:
    nop
    ld bc, $0201
    ld [bc], a
    ld b, $04
    pop af
    ld sp, $60e0

jr_00c_55eb:
    ret nz

    ret nz

    add b
    add b
    rst $00
    rst $00
    dec b
    dec b
    dec c
    dec c
    rra
    rra
    rra
    ld de, $2033
    ld h, c
    ld b, b
    call nz, $ec80
    call nz, $01cb

jr_00c_5603:
    ld a, [de]
    ld [$1272], sp
    db $fc
    adc h
    db $fc
    add h
    rst $38
    add a
    db $fc
    add h
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    ld b, $04
    inc bc
    nop
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    ld bc, $3f00
    jr nc, jr_00c_5649

    db $10
    rra
    db $10
    ld a, a
    ld [hl], b
    sbc a
    sbc b
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld h, b
    jr nz, jr_00c_569a

    nop
    ldh [rP1], a
    ldh [$60], a
    ldh a, [$90]
    sub b
    nop
    jr @+$0a

    adc b
    ld [$1afe], sp

jr_00c_5649:
    cp $02
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    rst $38
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
    rst $38
    ret nz

    rst $38
    ldh a, [$80]
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
    rst $38
    rrca
    rlca
    inc b
    nop

jr_00c_569a:
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$60], a
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    add e
    add e
    rst $00
    rst $00
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
    adc h
    inc b
    call nz, Call_00c_7c80
    ld b, h
    jr c, jr_00c_5727

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

jr_00c_5727:
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    db $ed
    di
    xor $f1
    and $f9
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    di
    pop hl
    pop hl
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fd
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
    cp $fe
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
    ccf
    rst $38
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
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
    rra
    rra
    db $e3
    db $f4
    db $e3
    db $f4
    pop hl
    ld a, [c]
    pop hl
    ld a, [c]
    ldh a, [$f9]
    ldh a, [$f8]
    ldh a, [$f8]
    ld hl, sp-$04
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld a, [c]
    ldh a, [$f3]
    ldh a, [$f1]
    ldh a, [$f9]

jr_00c_57e6:
    ld hl, sp+$7f
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    sbc $3f
    ld e, l
    cp a
    ld l, d
    sbc [hl]
    ld a, [hl+]
    ld e, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ld e, $1e
    inc e
    inc e
    ld [$8808], sp
    ld [$ffff], sp
    rst $38
    rst $38
    ret nz

    rst $38
    jr jr_00c_57e6

    cp b
    and a
    ld a, [hl]
    ld b, c
    ccf
    jr nz, jr_00c_5836

    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    rrca
    nop
    rra
    nop
    ccf
    nop
    rra
    nop
    jr nc, jr_00c_5827

jr_00c_5827:
    rst $38
    rst $38
    inc bc
    rst $38
    inc a
    rst $08
    ld a, c
    adc c
    rst $38
    ld b, $78
    add a
    di
    dec c
    ld [hl], e

jr_00c_5836:
    adc h
    rst $38
    rst $38
    inc bc
    inc bc
    ldh a, [rP1]
    ldh a, [rP1]
    ld sp, hl
    nop
    db $fc
    nop
    ld a, [$ff00]
    nop
    db $fd
    cp $fb
    db $fc
    ld a, e
    db $fc
    scf
    ld hl, sp+$01
    cp $0e
    add hl, bc
    and a
    and h
    di
    ld [hl], d
    db $fc
    db $fc
    ld hl, sp-$08
    ld a, b
    ld a, b
    or b
    jr nc, jr_00c_5860

jr_00c_5860:
    nop
    ld b, $00
    inc bc
    nop
    add c
    nop
    rst $18
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    cp a
    ld a, a
    sbc a
    ld a, a
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    ld e, a
    rra
    cp a
    ccf
    rst $18
    rra
    ld hl, sp-$04
    db $fc
    cp $fc
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld hl, sp-$04
    db $fc
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
    scf
    ld c, e
    inc de
    dec l
    ld de, $082e
    rla
    ld [$0017], sp
    adc a
    add b
    rst $08
    ret nz

    rst $28
    add h
    nop
    add $00
    rst $00
    nop
    db $e3
    nop
    db $e3
    nop
    ld [hl], d
    nop
    or d
    add b
    jp nc, $47c0

    inc [hl]
    cpl
    xor $21
    pop hl
    ld h, b
    or d
    ld e, b
    cp h
    ld [de], a
    xor $12
    db $ed
    nop
    rst $38
    ld b, e
    nop
    add c
    nop
    add b
    nop
    ld d, d
    nop
    ld h, h
    nop
    cp b
    nop
    cp d
    nop
    cp d
    nop
    and a
    ld e, b
    db $e3
    inc e
    push de
    xor e
    ld [$0077], sp
    rst $38
    nop
    rst $38
    ld c, b
    or a
    sbc d
    ld h, l
    rst $38
    nop
    rst $38
    nop
    ld e, h
    nop
    ld a, [hl+]
    nop
    dec hl
    nop
    daa
    nop
    ld c, c
    ld c, b
    add d
    cp $f8
    add hl, de
    jp hl


    add hl, hl
    pop af
    sub l
    ld [hl], c
    ld [hl], e
    ld [hl+], a
    or e
    ld b, $8f
    ld a, [de]
    sbc l
    ld a, d
    push af
    ldh [rP1], a
    ret nz

    nop
    ld h, h
    nop
    ld [bc], a
    nop
    ld de, $0800
    nop
    inc bc
    nop
    dec bc
    nop
    rrca
    rst $38
    rlca
    rst $38
    xor a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18
    ccf
    ld e, a
    cp a
    rra
    rst $38
    ld l, a
    rrca
    rla
    rlca
    cpl
    cpl
    cp a
    ccf
    cp a
    ccf
    rst $18
    rra
    ld e, a
    rra
    ld e, a
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    adc a
    sbc a
    rst $08
    rst $18
    rst $18
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
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
    sbc a
    rra
    cp a
    ccf
    cp a
    ccf
    ldh [rIE], a
    db $ec
    rst $38
    db $dd
    rst $38
    adc $ef
    adc $ef
    sub $f5
    xor $fd
    push hl
    ld a, [$e0e2]
    ldh [$ec], a
    ret nz

    db $dd
    ret nz

    adc $c0
    adc $c0
    call nc, $ece0
    ldh [$e0], a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    add c
    ei
    and b
    ld e, [hl]
    add b
    ld a, [hl]
    and b
    ld d, d
    ld b, l
    cp b
    sbc l
    nop
    xor b
    nop
    jr nz, jr_00c_599d

jr_00c_599d:
    nop
    add c
    jr nz, jr_00c_59c1

    nop
    nop
    jr nz, jr_00c_59d1

    ld b, h
    ld h, l
    inc a
    jp $c33c


    cp b
    ld b, a
    inc a
    jp nz, $8778

    ld a, b
    add a
    ldh a, [$0d]
    pop af
    ld c, $00
    ld a, [hl]
    nop
    ld a, [hl]
    add b
    db $fc
    inc b
    ld a, h
    nop
    ld a, b

jr_00c_59c1:
    nop
    ld hl, sp+$00
    ld a, [$f901]
    or b
    ld c, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add l
    ld a, a

jr_00c_59d1:
    rlca
    ld a, a
    rla
    ld l, a
    cpl
    rst $18
    cp e
    nop
    xor e
    nop
    ld l, d
    nop
    ld e, d
    nop
    dec [hl]
    dec b
    daa
    rlca
    rlca
    rlca
    rrca
    adc a
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    adc a
    rst $18
    add $ef
    call nz, $c9ee
    db $ed
    cp l
    ld sp, hl
    ld e, a
    rra
    ld e, a
    rra
    sbc a
    sbc a
    adc a
    adc a
    add $c6
    call nz, $c0c4
    ret nz

    add h
    add b
    rst $18
    ld a, a
    ld b, a
    cp a
    jr @+$01

    dec de
    and $c0
    rst $38
    db $e4
    rst $38
    cp $ff
    db $fc
    cp $9f
    rra
    rst $00
    rlca
    ldh [rP1], a
    dec a
    nop
    db $db
    ret nz

    push hl
    db $e4
    cp $fe
    db $fc
    db $fc
    ret c

    rst $30
    call c, $18e3
    rst $20
    ret nz

    ccf
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    add b
    nop
    nop
    ret z

    ret nz

    rst $18
    ret nz

    rra
    nop
    ldh [rP1], a
    db $e3
    nop
    adc a
    nop
    ld b, $00
    db $e4
    nop
    ld e, $fc
    cpl
    ret nc

    rla
    xor b
    dec b
    ld a, [de]
    ld bc, $00be
    ld a, l
    nop
    ld e, [hl]
    nop
    ccf
    nop
    ld [hl+], a
    jr nz, jr_00c_5a9a

    db $10
    rra
    inc b
    rlca
    ld bc, $9a01
    ld a, [de]
    sbc l
    dec e
    add b
    nop
    db $e3
    rra
    ld hl, sp+$07
    xor b
    daa
    jp nc, Jump_00c_482d

    or [hl]
    nop
    ld sp, hl
    nop
    ld a, $01
    db $fd
    nop
    db $fc
    ld [$50ff], sp
    rst $18
    ld [bc], a
    cp $09
    ld hl, sp+$06
    nop
    ret c

    reti


    add hl, bc
    ld a, [bc]
    ld e, a
    cp a
    ld c, a
    cp a
    add a
    ld l, a
    ld bc, $008f
    ld bc, $c300
    add b
    and c
    ret nz

    ldh [$5f], a
    rst $18
    ld c, a

jr_00c_5a9a:
    rst $08
    add a
    add a
    ld b, c
    ld bc, $00c0
    ld bc, $9000
    ld b, b
    ret c

    nop
    sbc $e7
    rst $10
    db $eb
    and e
    db $dd
    ld e, e
    db $e4
    ret nz

    cp a
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    reti


    ret nz

    call c, $bec0
    add b
    ccf
    nop
    ld b, b
    nop
    rst $18
    rra
    rra
    rra
    ld a, a
    ld a, a
    ld hl, sp-$04
    db $fc
    cp $fa
    db $fd
    db $f4
    cp $ec
    ld a, [$f2dc]
    cp b
    db $e4
    ld a, b
    call nz, $f8f9
    db $fd
    db $fc
    ld a, [$f1f8]
    ldh a, [$e4]
    ldh [$cc], a
    ret nz

    sbc d
    add b
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_00c_5af6

jr_00c_5af6:
    ld a, [c]
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
    jp $0500


    nop
    inc e
    inc a
    rra
    ccf
    rra
    ccf
    inc bc
    inc de
    nop
    stop
    stop
    stop
    inc de
    sbc h
    inc bc
    rra
    nop
    rra
    nop
    inc bc
    inc c
    nop
    rrca

jr_00c_5b21:
    add b
    rrca
    add b
    rrca
    ret nz

    inc c
    inc hl
    db $eb
    ld sp, $b875
    db $fc
    sbc b
    call c, $cc88
    nop
    ld b, a
    nop
    ld hl, sp+$18
    inc h
    inc hl
    inc d
    ld sp, $b88a
    inc bc
    sbc b

jr_00c_5b3e:
    inc hl
    adc b
    inc sp
    nop
    cp b
    nop
    rlca
    nop
    jp $d0c0


    add sp, -$01
    pop hl
    ld [$7970], a
    inc [hl]
    ccf
    ld bc, $058e
    ld a, [hl]
    ld c, d
    ld e, e
    ret


    jr nz, @-$1e

    nop
    pop hl
    db $10
    ld [hl], h
    add b
    jr nc, jr_00c_5b21

    ld bc, $0170
    add b
    ld b, h
    and b
    ccf
    rst $38
    rst $08
    rst $38
    rst $30
    ld a, a
    db $eb
    cpl
    push af
    rla
    ld a, d
    adc e
    cp l
    ld b, l
    sbc $22
    ccf
    ccf
    rrca
    rrca
    add a
    rlca
    jp $e103


    ld bc, $0070
    cp b
    nop
    call c, Call_00c_7400
    rst $08
    rst $30
    adc h
    rst $28
    sbc b
    add sp, $1f
    and $19
    xor $11
    push af
    ld a, [bc]
    push bc
    ld a, [hl-]
    jr nc, jr_00c_5b99

jr_00c_5b99:
    ld [hl], e
    nop
    ld h, a
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ret nz

    nop
    and d
    ld d, a
    and a
    ld e, a
    or [hl]
    ld c, [hl]
    inc [hl]
    call z, Call_000_0cf4
    ld [$e81a], a
    jr jr_00c_5b3e

    ld a, b
    adc b
    nop
    add b
    nop
    add c
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld b, $00
    inc b
    nop
    db $10
    inc a
    add hl, bc
    push af
    ld de, $0369
    ld a, e
    inc sp
    ld a, e
    inc hl
    ld [hl], e
    and a
    rst $30
    ld h, e
    ei
    ret nz

    inc bc
    ld bc, $8102
    ld b, $03
    inc b
    inc bc
    inc b
    inc bc
    inc c

jr_00c_5be3:
    rlca
    ld [$0403], sp
    ret nz

    db $fc
    call nc, $d0f6
    ld a, [c]
    jp z, $82fb

    xor a
    adc b
    cp e
    or d
    ld a, [$feba]

jr_00c_5bf7:
    ret nz

    inc bc
    ret z

    ld bc, $01cc
    call nz, $9000
    ld d, b
    add b
    ld b, b
    add c
    ld bc, $0181
    ld h, l
    ld l, l
    jr nc, jr_00c_5c42

    jr c, jr_00c_5c47

    db $10
    inc d
    inc b
    inc c
    ld [$1098], sp
    or b
    jr nz, jr_00c_5bf7

    ld h, d
    sub b
    jr nc, jr_00c_5be3

    add hl, sp
    call nz, $e812
    ld [bc], a
    ldh a, [rDIV]
    ld h, b
    ld [$1140], sp
    nop
    rrca
    pop af
    ld h, a
    sbc c
    or a
    ret


    dec de
    ld h, h

jr_00c_5c2f:
    inc c
    ld d, e
    ld d, $59
    rlca
    xor b
    rlca
    xor b
    ld c, $00
    ld b, $00
    ld b, $00
    add e
    nop
    jr nz, jr_00c_5c41

jr_00c_5c41:
    and b

jr_00c_5c42:
    nop
    ld d, b
    nop
    nop
    nop

jr_00c_5c47:
    add hl, hl
    sub $ef
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_00c_5c2f

    jr nz, jr_00c_5cb1

    and b
    sbc [hl]
    ld h, c
    call c, Call_000_0022
    nop
    nop
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
    pop bc
    ld bc, $fc34
    ld h, b
    db $e4
    ld [hl], b
    di
    cp b
    ld a, c
    sbc b
    ld a, b
    ld c, $9e
    ld b, $0f
    ld c, c
    ld c, [hl]

jr_00c_5c77:
    nop
    nop
    ld a, [de]
    nop
    inc c
    nop
    ld b, $00
    rlca
    nop
    ld h, c
    ld h, b
    ldh a, [$f0]
    or b
    or b
    jr z, jr_00c_5c77

    ld [hl+], a
    db $e3
    ld d, b
    ldh a, [rNR50]
    rst $38
    dec hl
    rst $38
    ld d, h
    rst $38
    add hl, hl
    db $fd
    jp z, Jump_000_103b

    ld bc, $001c
    rrca
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
    nop
    inc [hl]
    ld a, [hl]
    ld a, [hl+]
    ei
    jr nc, jr_00c_5cdd

    nop
    nop
    nop
    sbc c

jr_00c_5cb1:
    sbc c
    rst $38
    ld a, [hl+]
    ei
    pop de
    rst $38
    ld bc, $0481
    nop
    rlc b
    ld hl, sp+$00
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    pop af
    jr nz, @-$1d

    ld [bc], a
    inc bc

jr_00c_5ccd:
    inc b
    add $80
    cp h
    nop
    ld b, $40
    ld sp, hl
    xor c
    xor $08
    nop
    ld [de], a
    nop
    db $e4
    nop

jr_00c_5cdd:
    add hl, sp
    nop
    ld b, d
    nop
    add hl, bc
    nop
    ld b, $00
    nop
    nop
    ld bc, $8c2e
    db $dd
    ld de, $03b2
    inc l
    ld bc, $0342
    db $fc
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    ret nc

    nop
    ld [hl+], a
    ld [bc], a
    ld c, h
    inc c
    ld d, b
    db $10
    cp h
    inc a
    nop
    nop
    nop
    nop
    nop
    nop

jr_00c_5d07:
    jr c, jr_00c_5ccd

    ld hl, sp+$05
    db $fc
    ld [bc], a
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
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
    dec bc
    adc h
    ld e, e
    ld e, h
    sub a
    ld hl, sp+$47
    xor b
    ld l, a
    sub b
    rst $20
    jr jr_00c_5d07

    inc [hl]
    db $db
    inc a
    ld [hl], b
    ld [hl], b

jr_00c_5d39:
    and b
    and b
    nop
    nop
    db $10
    stop
    nop
    nop
    nop
    nop
    stop
    jr jr_00c_5d39

    ld c, $fc
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
    ld a, [c]

jr_00c_5d56:
    dec c
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld [bc], a
    inc bc
    inc l
    rst $18
    ld [de], a
    db $ed
    nop
    rst $38
    ld a, l
    add d
    db $fc
    inc bc
    ld hl, sp+$07
    ld a, [c]
    dec c
    jr nz, jr_00c_5d56

    jr nz, jr_00c_5d99

    ld [de], a
    ld a, [c]
    nop
    cp $01
    db $fd
    nop
    db $fd
    nop
    db $fd
    ld [bc], a
    ei
    nop
    inc sp
    ld b, l
    cp d
    add c
    ld a, [hl]
    inc de
    db $ec
    dec sp
    call nz, $8c73
    rst $30
    ld [$18e7], sp
    adc e
    ld [hl], h
    ld b, h
    ld b, h

jr_00c_5d99:
    add b
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ret nz

    xor $11
    xor $11
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ldh a, [rIF]
    push af
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
    ld bc, $fe01
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    db $fd
    ld [bc], a
    dec a
    jp nz, $e2dd

    nop
    nop
    nop
    nop
    nop
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

    rst $20
    jr @+$01

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
    ld [bc], a
    db $fd
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
    ldh [rNR22], a
    ret


    dec hl
    call $8f2d
    ld l, a
    ld h, a
    sub a
    and a
    ld [hl], a
    or e
    ld l, e
    ret c

    inc [hl]
    nop
    ld a, [bc]
    add hl, bc
    inc d
    dec c
    ld [de], a
    rrca
    db $10
    rlca
    ld [$2807], sp
    inc bc
    inc h
    nop
    inc de
    adc d
    db $fd
    ld e, b
    ld a, d
    ld sp, $0133
    inc bc
    add c
    add l
    ldh a, [$f4]
    db $e4
    ld [$bd82], a
    adc d
    ld [hl+], a
    ld e, b
    ld bc, $0031
    ld bc, $8100
    ld [bc], a
    ldh a, [$03]
    ldh [rSB], a
    add b
    ld b, b
    dec h
    cp $49
    jp c, $cac9

    add h
    add a
    jp $fac4


    rst $38
    ld h, l
    ld l, [hl]
    dec bc
    db $f4
    inc h
    add b
    ld c, b
    nop
    ret z

    nop
    add h
    nop
    ret nz

    nop
    ld hl, sp+$02
    ld h, b
    sub h
    nop
    nop
    push af
    rrca
    push af
    dec bc
    ei
    rlca
    ei
    rlca
    ld a, e
    add a
    rst $30
    rrca
    rst $30
    rrca
    rst $28
    rra
    ld bc, $0501
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    call $d3f2
    db $ec
    db $eb
    db $f4
    rst $30
    ld hl, sp-$05
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ret nc

    ret nz

    add sp, -$20
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ld [bc], a
    cp $01
    cp $01
    cp $01
    cp $01
    ld e, $e1
    and $f9
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
    ldh [$e0], a
    ld hl, sp-$08
    db $ec
    inc de
    ldh [$1f], a
    rst $28
    rra
    add sp, $18
    add sp, $18
    add sp, $18
    add sp, $18
    ld d, b
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld [$3500], sp
    adc $0e
    rst $38
    ret c

    ld hl, sp+$10
    jr nc, jr_00c_5f00

    jr nc, jr_00c_5f43

    ld [hl], c
    jr nz, @+$63

    jr nz, jr_00c_5f58

    nop
    nop
    nop
    nop
    rlca
    nop
    ret z

    nop
    ld c, c

jr_00c_5f00:
    nop
    ld [$1000], sp
    nop
    sub d
    nop
    rst $20
    jr jr_00c_5f29

    ldh [$bf], a
    ret nz

    ld a, [hl]
    add c
    ld a, l
    add e
    ld a, e
    add a
    rlca
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
    ld bc, $0301
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    rst $28
    rra

jr_00c_5f29:
    rst $18
    ccf
    cp a
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
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38

jr_00c_5f43:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38

jr_00c_5f58:
    rst $38
    rst $38
    rst $38
    rst $38
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
    sub b
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$a5]
    db $fd
    or [hl]
    rst $30
    ld b, b
    pop bc
    add b
    add c
    adc b
    add b
    ret z

    ret nz

    ret z

    ret nz

    ret


    ret nz

    add d
    add b
    adc b
    add b
    inc a
    nop
    ld h, d
    nop
    ld [hl+], a
    ld h, e
    xor b
    rst $28
    ld sp, $02f1
    jp $c101


    and b
    ldh [$b0], a
    ret nc

    xor h
    db $ec
    add b
    nop
    stop
    ld a, [bc]
    nop
    inc [hl]
    nop
    jr nc, jr_00c_5fa1

jr_00c_5fa1:
    sub b
    add b
    xor [hl]
    add b
    sub e
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ld e, a
    ld a, a
    rrca
    rra
    rla
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp a
    ccf
    sbc a
    rra
    cpl
    rrca
    rlca
    rlca
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, [$fbfe]
    rst $38
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$03
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    add d
    add c
    ld bc, $0303
    rlca
    rla
    rra
    xor a
    sbc a
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, [hl]
    nop
    adc l
    ld bc, $031b
    rst $20
    rlca
    ld l, a
    rrca
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    add $ea
    db $d3
    db $fd
    call nz, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    ret nz

    jp nz, $c4c0

    call nz, $ffff
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00c_6023:
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rrca
    scf
    cpl
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
    rst $38
    sub a
    rlca
    rst $10
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    ld bc, $0210

jr_00c_60b2:
    db $10
    inc bc

jr_00c_60b4:
    db $10
    inc b

jr_00c_60b6:
    db $10
    ld bc, $0210

jr_00c_60ba:
    db $10
    inc bc

jr_00c_60bc:
    db $10
    inc b
    db $10
    ld bc, $0210
    db $10
    dec b
    db $10
    inc b
    db $10
    ld b, $10
    rlca
    db $10
    ld [$0910], sp
    db $10
    ld a, [bc]
    db $10
    dec bc
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, $10
    rrca
    db $10
    db $10
    db $10
    ld de, $0610
    db $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10

jr_00c_60f3:
    inc c

jr_00c_60f4:
    db $10
    dec c

jr_00c_60f6:
    db $10
    or [hl]

jr_00c_60f8:
    jr @-$48

    jr jr_00c_60b2

jr_00c_60fc:
    jr jr_00c_60b4

    jr jr_00c_60b6

    jr @-$48

    jr jr_00c_60ba

    jr jr_00c_60bc

    jr jr_00c_610b

    db $10
    inc b
    db $10

jr_00c_610b:
    inc de
    db $10
    inc d
    db $10
    dec d
    db $10
    ld d, $10
    ld bc, $0210
    db $10
    rla
    db $10
    jr jr_00c_612b

    add hl, de
    db $10
    ld a, [de]
    db $10
    inc bc
    db $10
    inc b
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10

jr_00c_612b:
    ld bc, $0210
    db $10
    inc bc

jr_00c_6130:
    db $10
    inc b
    db $10
    ld bc, $0210

jr_00c_6136:
    db $10
    or [hl]
    jr @-$48

    jr jr_00c_60f3

jr_00c_613c:
    jr jr_00c_60f4

    jr jr_00c_60f6

    jr jr_00c_60f8

jr_00c_6142:
    jr jr_00c_60fc

    jr @-$45

    jr @+$0e

    db $10
    dec c
    db $10
    dec de
    db $10
    inc e
    db $10
    dec e
    db $10
    ld e, $10
    ld b, $10
    rlca
    db $10
    rra
    db $10
    jr nz, jr_00c_616b

    ld hl, $2210
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10

jr_00c_616b:
    ld b, $10
    rlca
    db $10
    inc c

jr_00c_6170:
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    or [hl]
    jr jr_00c_6130

    jr jr_00c_6136

jr_00c_617c:
    jr @-$43

    jr jr_00c_613c

    jr @-$41

jr_00c_6182:
    jr jr_00c_6142

    jr @-$3f

    jr jr_00c_6189

jr_00c_6188:
    db $10

jr_00c_6189:
    ld [bc], a
    db $10

jr_00c_618b:
    inc hl
    db $10
    inc h
    db $10
    dec h
    db $10
    ld h, $10
    inc bc
    db $10
    inc b
    db $10
    daa
    db $10
    jr z, jr_00c_61ab

    add hl, hl
    db $10
    ld a, [hl+]
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    ld bc, $0210
    db $10

jr_00c_61ab:
    inc bc
    db $10
    inc b
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    or [hl]
    jr jr_00c_6170

    jr jr_00c_617c

    jr @-$3d

    jr jr_00c_6182

    jr @-$3b

    jr jr_00c_6188

    jr jr_00c_618b

    jr jr_00c_61ce

jr_00c_61c8:
    db $10
    rlca
    db $10

jr_00c_61cb:
    inc c
    db $10
    dec c

jr_00c_61ce:
    db $10
    ld b, $10

jr_00c_61d1:
    rlca
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    add $18
    rst $00
    jr jr_00c_61c8

    jr jr_00c_61cb

    jr jr_00c_61ce

    jr jr_00c_61d1

    jr jr_00c_620b

    db $10
    inc b
    db $10

jr_00c_620b:
    ld bc, $0210

jr_00c_620e:
    db $10
    inc bc
    db $10

jr_00c_6211:
    inc b
    stop

jr_00c_6214:
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    call z, $cd18
    jr jr_00c_620e

    jr jr_00c_6211

    jr jr_00c_6214

    jr @-$2d

    jr jr_00c_6254

    db $10
    dec c
    db $10
    dec hl
    db $10
    inc l
    db $10
    dec l
    db $10
    ld l, $10
    nop

jr_00c_6254:
    stop
    stop
    stop

jr_00c_625a:
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    jp nc, $d318

    jr jr_00c_6254

    jr @-$29

    jr jr_00c_625a

    jr @-$27

    jr jr_00c_6289

    db $10

jr_00c_6289:
    ld [bc], a
    db $10
    cpl
    db $10
    jr nc, @+$12

    ld sp, $3210
    stop
    stop
    stop
    stop

jr_00c_629a:
    stop
    stop
    stop

jr_00c_62a0:
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ret c

    jr @-$25

    jr jr_00c_629a

    jr @-$23

    jr jr_00c_62a0

    jr @-$21

    jr jr_00c_62ce

    db $10
    rlca
    db $10
    inc sp
    db $10
    inc [hl]

jr_00c_62ce:
    db $10
    dec [hl]
    db $10
    ld [hl], $10
    nop
    stop
    stop
    stop
    stop
    stop
    stop

jr_00c_62e0:
    stop
    stop
    stop

jr_00c_62e6:
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    sbc $18
    rst $18
    jr jr_00c_62e0

    jr @-$1d

    jr jr_00c_62e6

    jr @-$1b

    jr jr_00c_630b

    db $10
    inc b
    db $10

jr_00c_630b:
    scf
    db $10
    jr c, @+$12

    add hl, sp
    db $10
    ld a, [hl-]
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop

jr_00c_6326:
    stop
    stop
    stop

jr_00c_632c:
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    db $e4
    jr @-$19

    jr jr_00c_6326

    jr @-$17

    jr jr_00c_632c

    jr @-$15

    jr jr_00c_6354

    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    stop

jr_00c_6354:
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop

jr_00c_636c:
    stop
    stop
    stop

jr_00c_6372:
    stop
    stop
    stop
    stop
    db $10
    ld [$eb18], a
    jr jr_00c_636c

    jr @-$11

    jr jr_00c_6372

    jr @-$0f

    jr jr_00c_6389

    db $10

jr_00c_6389:
    ld [bc], a
    db $10
    inc bc
    db $10
    inc b
    db $10
    ld bc, $0210
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop

jr_00c_63b2:
    stop
    stop
    stop

jr_00c_63b8:
    stop
    db $10

Call_00c_63bb:
    ldh a, [rNR23]
    pop af
    jr jr_00c_63b2

    jr @-$0b

    jr jr_00c_63b8

    jr @-$48

    jr @+$6d

    inc d
    ld l, l
    inc d
    ld l, [hl]
    inc d
    ld l, e
    inc d
    ld l, a
    inc d
    ld l, e
    inc d
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop

jr_00c_63f4:
    stop
    stop
    stop

jr_00c_63fa:
    db $10
    or [hl]

jr_00c_63fc:
    jr jr_00c_63f4

    jr @-$07

    jr jr_00c_63fa

    jr @-$05

    jr @-$48

    jr jr_00c_6478

    inc d
    ld [hl], c
    inc d
    ld [hl], d
    inc d
    ld [hl], e
    inc d
    ld [hl], h
    inc d
    ld l, e
    inc d
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop

jr_00c_6438:
    stop
    db $10

jr_00c_643b:
    or [hl]
    jr jr_00c_6438

jr_00c_643e:
    jr jr_00c_643b

    jr jr_00c_643e

    jr @-$01

    jr jr_00c_63fc

    jr jr_00c_64bd

    inc d
    db $76
    inc d
    ld [hl], a
    inc d
    ld a, b
    inc d
    ld a, c
    inc d
    ld a, d
    inc d
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop

jr_00c_6478:
    stop
    db $10
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    ld a, e
    inc d
    ld a, h
    inc d
    ld a, l
    inc d
    ld a, [hl]
    inc d
    ld a, a
    inc d
    add b
    inc d
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    inc bc
    db $10

jr_00c_64bd:
    inc b
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    add c
    inc d
    add d
    inc d
    add e
    inc d
    add h
    inc d
    add l
    inc d
    add [hl]
    inc d
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    dec sp
    db $10
    inc a
    db $10
    dec a
    db $10
    ld a, $10
    inc c
    db $10
    dec c
    db $10
    add a
    inc d
    adc b
    inc d
    adc c
    inc d
    adc d
    inc d
    adc e
    inc d
    adc h
    inc d
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ccf
    db $10
    ld b, b
    db $10
    ld b, c
    db $10
    ld b, d
    db $10
    ld bc, $0210
    db $10
    adc l
    inc d
    adc [hl]
    inc d
    adc a
    inc d
    sub b
    inc d
    sub c
    inc d
    sub d
    inc d
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld b, e
    db $10
    ld b, h
    db $10
    ld b, l
    db $10
    ld b, [hl]
    db $10
    ld b, $10
    rlca
    db $10
    sub e
    inc d
    sub h
    inc d
    sub l
    inc d
    sub [hl]
    inc d
    sub a
    inc d
    sbc b
    inc d
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld b, a
    db $10
    ld c, b
    db $10
    ld c, c
    db $10
    ld c, d
    db $10
    inc bc
    db $10
    inc b
    db $10
    sbc c
    inc d
    sbc d
    inc d
    sbc e
    inc d
    sbc h
    inc d
    sbc l
    inc d
    sbc [hl]
    inc d
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10
    sbc a
    inc d
    and b
    inc d
    and c
    inc d
    and d
    inc d
    and e
    inc d
    ld l, e
    inc d
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    ld bc, $0210
    db $10
    ld l, e
    inc d
    and l
    inc d
    and [hl]
    inc d
    and a
    inc d
    xor b
    inc d
    xor c
    inc d
    and h
    inc d
    ld l, e
    inc d
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    ld c, e
    db $10
    ld c, h
    db $10
    ld c, l
    db $10
    ld c, [hl]
    db $10
    inc c
    db $10
    dec c
    db $10
    ld c, a
    db $10
    ld d, b
    db $10
    ld d, c
    db $10
    ld d, d
    db $10
    ld b, $10
    rlca
    db $10
    xor d
    inc d
    xor e
    inc d
    xor h
    inc d
    xor l
    inc d
    xor [hl]
    inc d
    xor a
    inc d
    ld l, e
    inc d
    ld l, e
    inc d
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    ld d, e
    db $10
    ld d, h
    db $10
    ld d, l
    db $10
    ld d, [hl]
    db $10
    ld bc, $0210
    db $10
    ld d, a
    db $10
    ld e, b
    db $10
    ld e, c
    db $10
    ld e, d
    db $10
    inc bc
    db $10
    inc b
    db $10
    or b
    inc d
    or c
    inc d
    or d
    inc d
    or e
    inc d
    or h
    inc d
    or l
    inc d
    ld l, e
    inc d
    ld l, e
    inc d
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10
    ld e, e
    db $10
    ld e, h
    db $10
    ld e, l
    db $10
    ld e, [hl]
    db $10
    ld b, $10
    rlca
    db $10
    ld e, a
    db $10
    ld h, b
    db $10
    ld h, c
    db $10
    ld h, d
    db $10
    inc c
    db $10
    dec c
    db $10
    ld l, e
    inc d
    ld l, e
    inc d
    ld l, e
    inc d
    ld l, e
    inc d
    ld l, e
    inc d
    ld l, e
    inc d
    ld l, e
    inc d
    ld l, e
    inc d
    inc bc
    db $10
    inc b
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    ld bc, $0210
    db $10
    inc bc
    db $10
    inc b
    db $10
    ld bc, $0210
    db $10
    ld h, e
    db $10
    ld h, h
    db $10
    ld h, l
    db $10
    ld h, [hl]
    db $10
    inc bc
    db $10
    inc b
    db $10
    ld h, a
    db $10
    ld l, b
    db $10
    ld l, c
    db $10
    ld l, d
    db $10
    ld bc, $0210
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    db $10
    inc c
    db $10
    dec c
    db $10
    ld b, $10
    rlca
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop

Call_00c_6798:
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00c_6800:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00c_6808:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00c_6873:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld l, $6f
    ld [$a66e], a
    ld l, [hl]
    ld h, d
    ld h, [hl]
    ret nz

    ld h, l
    ld b, b
    ld e, l
    ld b, b
    ld d, l
    ld a, e
    ld l, [hl]
    sbc e
    ld l, l
    dec de
    ld l, l
    sbc e
    ld l, h
    ld e, c
    ld h, h
    rla
    ld e, h
    inc de
    ld c, h
    nop
    nop
    rst $38
    rst $38
    rla
    jr z, @+$59

    ld bc, $0000
    dec sp
    ld l, [hl]
    sub c
    nop
    dec de
    ld d, l
    rla
    jr z, jr_00c_68ba

    ld h, l
    ld [hl], l

jr_00c_68ba:
    ld [bc], a
    ld [bc], a
    ld h, h
    db $db
    ld sp, $111b
    add h
    jr z, @+$44

    add hl, de
    dec de
    ld d, l
    rst $38
    rst $38
    ld [hl+], a
    ld a, [hl-]
    nop
    nop
    add hl, de
    ld h, l
    db $db
    ld h, l
    ld d, c
    ld e, h
    ld c, b
    ld b, h
    dec [hl]
    ld [bc], a
    pop de
    nop
    db $db
    ld sp, $111b
    ld a, [hl+]
    ld l, a
    dec d
    jr z, jr_00c_6873

    nop
    ret nz

    ld e, h
    nop
    ld d, h
    rst $38
    ld a, a
    rst $30
    ld e, [hl]
    xor l
    dec [hl]
    nop
    nop
    ld e, a
    ld a, [hl]
    ldh a, [rIF]
    ld c, b
    inc de
    and l
    dec d
    cp a
    ld a, l
    and $7f
    db $d3
    ld a, l
    ld a, [hl+]
    ld [hl], b
    rra
    ld a, l
    ld a, l
    ld bc, $4016
    ld c, $40
    rst $38
    rrca
    ld h, l
    inc c
    adc l
    inc b
    push af
    add hl, bc
    rst $38
    rrca
    ld d, a
    dec c
    rra
    nop
    ldh [rIF], a
    ld e, a
    ld a, [hl]
    ld e, d
    scf
    ld [hl], $22
    ld [hl], d
    db $10
    ld e, a
    ld a, [hl]
    ld e, a
    inc [hl]
    scf
    jr z, jr_00c_6997

    ld b, h
    rst $38
    ld a, a
    rst $30
    ld e, [hl]
    xor l
    dec [hl]
    nop
    nop
    rst $38
    ld a, a
    sbc $7b
    ld e, l
    add hl, hl
    dec a
    ld bc, $7fff
    ret nz

    inc bc
    add hl, bc
    ld h, $64
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00c_6997:
    nop
    nop
    xor d
    xor d
    cp a
    rst $38
    rst $38
    xor d
    xor d
    cp a
    rst $38
    rst $38
    xor d
    xor d
    cp a
    rst $38
    rst $38
    xor d
    xor d
    cp a
    rst $38
    rst $38
    xor d
    xor d
    sub l
    ld d, l
    ld d, l
    xor d
    xor d
    sub l
    ld d, l
    ld d, l
    xor d
    xor d
    sub l
    ld d, l
    ld d, l
    xor d
    xor d
    sub l
    ld d, l
    ld d, l
    xor d
    xor d
    sub l
    ld d, l
    ld d, l
    xor d
    xor d
    sub l
    ld d, l
    ld d, l
    xor d
    xor d
    sub l
    ld d, l
    ld d, l
    xor d
    xor d
    sub l
    ld d, l
    ld d, l
    xor d
    xor d
    sub l
    ld d, l
    ld d, l
    xor d
    xor d
    sub l
    ld d, l
    ld d, l
    xor d
    xor d
    sub l
    ld d, l
    ld d, l
    xor d
    xor d
    sub l
    ld d, l
    ld d, l
    xor d
    xor d
    sub l
    ld d, l
    ld d, l
    xor d
    xor d
    sub l
    ld d, l
    ld d, l
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    ld b, $aa
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    ld a, [bc]
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
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
    nop
    nop
    nop
    nop
    nop
    dec b
    ld d, l
    ld e, d
    and l
    ld d, b
    dec b
    ld d, l
    ld e, d
    and l
    ld d, b
    dec b
    ld d, l
    ld e, d
    and l
    ld d, b
    dec b
    ld d, l
    ld e, d
    and l
    ld d, b
    dec b
    ld d, l
    ld d, l
    ld e, d
    and b
    dec b
    ld d, l
    ld d, l
    ld e, d
    and b
    dec b
    ld d, l
    ld d, l
    ld e, d
    and b
    dec b
    ld d, l
    ld d, l
    ld e, d
    and b
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    inc bc
    ret nz

    nop
    nop
    nop
    inc bc
    ret nz

    nop
    nop
    nop
    inc bc
    ret nz

    nop
    nop
    nop
    inc bc
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld b, b
    nop
    nop
    nop
    ld bc, $0040
    nop
    nop
    ld bc, $0040
    nop
    nop
    ld bc, $0040
    nop
    nop
    ld bc, $0040
    nop
    nop
    ld bc, $0040
    nop
    nop
    ld bc, $0040
    nop
    nop
    ld bc, $0040
    nop
    nop
    ld bc, $0040
    nop
    nop
    ld bc, $0040
    nop
    nop
    ld bc, $0040
    nop
    nop
    ld bc, $0040
    nop
    nop
    ld bc, $0040
    nop
    nop
    ld bc, $0040
    nop
    nop
    ld bc, $0040
    nop
    nop
    ld bc, $0040
    nop
    nop
    ld bc, $5555
    ld d, l
    ld d, l
    ld d, l
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    ld a, [bc]
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    ld b, $aa
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    ld b, $aa
    nop
    nop
    nop
    ld b, $aa
    nop
    nop
    nop
    ld b, $aa
    nop
    nop
    nop
    ld b, $aa
    nop
    nop
    nop
    ld b, $aa
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    dec b
    ld d, l
    ld d, l
    ld d, l
    ld d, b
    dec b
    ld d, l
    ld d, l
    ld d, l
    ld d, b
    dec b
    ld d, l
    ld d, l
    ld d, l
    ld d, b
    dec b
    ld d, l
    ld d, l
    ld d, l
    ld d, b
    dec b
    ld d, l
    ld d, l
    ld d, l
    ld d, b
    dec b
    ld d, l
    ld d, l
    ld d, l
    ld d, b
    dec b
    ld d, l
    ld d, l
    ld d, l
    ld d, b
    dec b
    ld d, l
    ld d, l
    ld d, l
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
    nop
    nop
    nop
    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Call_00c_6f98:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00c_7400:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00c_7c80:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
