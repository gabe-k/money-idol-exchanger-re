; Disassembly of "money_idol_exchanger.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

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
    jr nc, jr_009_403c

    ld h, b
    ld h, b
    pop bc
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
    add e
    add e
    xor h
    xor a
    di
    rst $38
    inc bc
    inc bc
    ld c, $0d
    rla
    dec de
    cpl
    scf
    ld a, [hl-]
    cpl
    push af
    sbc $f7
    sbc h
    rst $20
    inc a
    adc [hl]
    rst $38
    ld [hl], b
    rst $38
    rst $38
    rst $38
    adc a
    ldh a, [$f3]
    nop
    rst $38
    nop

jr_009_403c:
    rst $38
    nop
    ldh a, [rP1]
    ccf
    rst $38
    jr nc, @+$01

    ccf
    ret nz

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
    ret nz

    ret nz

    cp $fe
    reti


    ccf
    or $0f
    db $fd
    inc bc
    rst $38
    nop
    rst $38
    nop
    cp $01
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$fc], a
    db $fc
    cpl
    di
    sbc d
    ld a, h
    dec d
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
    inc bc
    inc bc
    dec b
    ld b, $06
    inc b
    ld e, $19
    db $e3
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ret nz

    nop
    rra
    nop
    cp a
    ld a, a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]

jr_009_40a8:
    jr @+$0a

    db $ec
    add h
    db $76
    ld h, d
    ld e, $12
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld b, c
    pop bc
    add d
    add e
    add d
    add e
    add l
    add a
    ld b, a
    push bc
    ld b, a
    push bc
    and l
    rst $20
    ld h, d
    ld h, e
    ld a, l
    add $fb
    adc h
    rst $30
    sbc b

jr_009_40d6:
    cp a
    ld [de], a
    xor e
    ld [hl], $bd
    ld h, $fe
    dec h
    push af
    xor [hl]
    ei
    inc l
    rst $28
    jr @-$27

    jr c, jr_009_40d6

    jr nc, jr_009_40a8

    ld h, b
    rst $18
    ld h, b
    rst $38
    ld b, b
    cp a
    ld b, b
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
    cp $00
    ccf
    nop
    add a
    nop
    pop bc
    nop
    add b
    nop
    ld a, a
    nop
    ccf
    nop
    sbc a
    nop
    rrca
    nop
    ld hl, sp+$07
    cp $03
    db $fd
    inc bc
    rst $38
    ld bc, $01fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    call c, $fb3f
    rlca
    ld a, a
    cp a
    rst $08
    ldh a, [$7f]
    rst $38

jr_009_4136:
    inc de
    di
    inc c
    rst $38
    inc bc
    rst $38
    dec e
    cp $ef
    ldh a, [$6f]
    sbc a
    db $fc
    rst $38
    and b
    cp a
    ld c, a
    ldh a, [$bf]
    ret nz

    ld a, a
    add b
    rst $38
    nop
    adc a
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_009_4136

    or b
    ld [hl], b
    add sp, $38
    db $e4
    inc a
    jp nc, $e93e

    rra
    inc d
    inc e
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld c, $07
    dec b
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
    add b
    add b
    ret nz

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
    rlca
    rlca
    dec bc
    inc c
    rrca
    ld [$1912], sp
    ld a, [de]
    dec de
    rlca
    rlca
    jr c, jr_009_41d5

    rst $00
    rst $38
    cp [hl]
    ld a, a
    ld c, e
    db $fc
    cp a
    ldh a, [$bf]
    ldh [$f5], a
    xor $63
    db $fc
    and b
    rst $38
    and e
    rst $18
    inc h
    rst $38
    push bc
    ccf
    jp z, $ed3f

    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ret nz

    ld a, a
    ret nz

    ld e, a
    ldh [$3d], a
    ldh [$38], a
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    db $f4
    nop
    ld hl, sp+$00
    cp h
    nop
    cp h
    nop
    or c
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf

jr_009_41d5:
    nop
    ccf
    nop
    rst $18
    nop
    rst $38
    nop
    cp $01
    ldh a, [rIF]
    rst $38
    nop
    rst $38

jr_009_41e3:
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ret nz

    ccf
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
    nop
    rst $38
    nop
    ld a, a
    add b
    dec de
    ldh [$0c], a
    ldh a, [rTMA]
    ld hl, sp-$1d
    nop
    ld hl, sp+$00
    db $fc
    nop
    nop
    nop
    or e
    nop
    sbc l
    nop
    sbc a
    nop
    rra
    nop
    db $f4
    rrca
    ei
    rlca
    ld a, l
    inc bc
    inc a
    inc bc
    ld hl, sp+$07
    ld sp, hl
    rlca
    di
    rrca
    and e
    ld e, a
    add c
    add c
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    add b
    add d
    add d
    dec b
    dec b
    ld b, $04
    and b
    jr nz, jr_009_41e3

    and b
    ldh [$a0], a
    ld h, b
    ld h, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ret nc

    sub b
    jr nz, jr_009_4270

    nop
    nop
    nop
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
    nop
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
    xor $9e
    ld a, a
    ccf

jr_009_4270:
    ld [de], a
    add hl, de
    rla
    add hl, de
    rrca
    add hl, bc
    dec c
    dec bc
    dec bc
    rrca
    inc d
    rra
    ld h, l
    ld a, [hl]
    cp e
    call z, $e0b3
    ld a, b
    ret nz

    ld [hl], a
    ret c

    ld l, a
    ldh a, [$b3]
    ret nz

    rst $20
    nop
    rst $08
    ld bc, $0381
    xor $1f
    or $1f
    push af
    rra
    push af
    rra
    sub d
    ld a, a
    db $eb
    rst $38
    ld e, e
    cp a
    db $ed
    ccf
    add hl, hl
    ldh a, [$9b]
    ldh a, [$1f]
    ldh a, [$2f]
    ldh a, [$df]
    ldh [$7f], a
    add d
    db $fd
    inc bc
    ld a, a
    ld bc, $0019
    sbc h
    nop
    adc $00
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $30
    ld c, b
    ldh a, [rIF]
    ret nz

    ccf
    ld h, b
    rra
    di
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
    rst $38
    inc a
    rst $38
    rst $08
    rst $38
    ld a, l
    add e
    rst $38
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
    ret nz

    rst $38
    ld h, b
    rst $38
    and b
    ld a, a
    ret nc

    ccf
    ldh a, [$1f]
    inc bc
    db $fc
    ld bc, $02fe
    db $fd
    rlca
    ld hl, sp+$05
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$07
    ld hl, sp+$19
    ld b, $99
    rlca
    reti


    rlca
    reti


    rlca
    ld hl, sp+$07
    ldh a, [rIF]
    ld [hl], b
    rrca
    ld h, b
    rra
    add d
    ld a, [hl]
    add d
    ld a, [hl]
    ld bc, $01ff
    rst $38
    pop bc
    rst $38
    jr nc, @+$01

    ld [$06ff], sp
    rst $38
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    jr nc, @-$0e

    ld [$60f8], sp
    jr nz, @-$3e

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

Jump_009_433f:
    nop
    ld b, $04
    dec b
    inc b
    inc c
    add hl, bc
    inc c
    add hl, bc
    inc c
    add hl, bc
    dec b
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    db $e3
    ld h, e
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
    ld b, b
    ret nz

    and b
    ld h, b
    ld l, e
    sbc h
    rst $30
    ld hl, sp+$16
    jr @+$19

    jr jr_009_4380

    jr @+$29

    jr c, @+$2f

    ld a, $13
    rra
    ld [hl], $03
    ld a, e
    ld b, $fd
    ld b, $f7
    inc c
    db $eb
    inc e
    sub $39
    rst $28
    ld sp, $b16f

jr_009_4380:
    xor a
    ld a, l
    rst $28
    ld a, l
    adc $7d
    ld c, e
    db $fc
    adc e
    db $fc
    adc e
    db $fc
    add hl, bc
    cp $0a
    rst $38
    ld a, [hl]
    ld bc, $21de
    rst $18
    or b
    rst $10
    cp b
    ld c, a
    ld hl, sp-$31
    ld a, b
    or a
    ld a, b
    sub $39
    reti


    and $a8
    rst $30
    ld e, [hl]
    di
    ld d, l
    ei
    ld c, e
    db $fc
    ld [hl], l
    xor $ea
    rst $30
    push de
    ei
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    adc a
    rst $38
    ld [hl], e
    db $fc
    db $fd
    inc bc
    db $76
    adc a
    sbc a
    rst $38
    ccf
    ret nz

    rrca
    ldh a, [$f3]
    db $fc
    ld c, $ff
    cp l
    ld b, e
    ld a, [hl]
    add c
    cp $7f
    sbc l
    rst $38
    ld hl, sp+$1f
    add sp, $1f
    db $ec
    rra
    db $ec
    rra
    ld a, h
    adc a
    ld a, [$5a8f]
    rst $28
    sbc d
    ld l, a
    inc bc
    db $fc
    ld bc, $19fe
    cp $f4
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld h, b
    rra
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
    inc bc
    rst $38
    ld b, $fd
    dec c
    ei
    ld [$84f8], sp
    db $fc
    ld b, d
    cp $67
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    ld hl, sp-$01
    nop
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

    ld h, b
    ldh [rNR41], a
    ldh [$58], a
    cp b
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
    ld bc, $d001
    jr nc, jr_009_44b3

    sub b
    add sp, -$68
    ld hl, sp-$78
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    sub b
    ldh a, [$e0]
    ldh [$0c], a
    rrca
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $ed01
    or e
    sbc [hl]
    di
    db $76
    db $db
    xor $5b
    ld l, [hl]
    ld e, e
    ld e, d
    ld l, a
    db $76
    cpl
    or [hl]
    cpl
    rrca
    rst $38
    rrca
    db $fd
    dec bc
    db $fc
    rlca
    db $fc
    ld h, h
    rst $38
    and e
    cp $c3
    rst $38
    ld a, a
    rst $38
    ld l, a
    sbc c
    cp e
    call $fdc7
    rst $28
    ld a, l
    cp $f9
    rst $18
    inc a
    ei
    rst $38
    adc $dd
    xor a
    sbc $ff
    add c
    rst $38
    add e
    db $ed
    add [hl]
    and a
    ret nz

    ld b, e
    pop hl
    dec a
    ld hl, sp-$3b
    db $fc
    rst $30
    ld hl, sp-$27
    and $7b
    adc l
    rst $10
    cp a
    xor a
    rst $38
    db $db
    ld a, h
    xor b
    ld [hl], b
    or b
    ret nz

    ei
    ld b, $fd

jr_009_44b3:
    inc bc
    set 6, a
    cp $ff
    db $fd
    rst $38
    cp d
    ld a, a
    inc de
    ld a, $2f
    inc d
    ld a, [$696f]
    cp a
    rst $00
    db $fd
    add l
    cp $42
    cp a
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    dec b
    rst $38
    inc bc
    cp $02
    rst $38
    add c
    rst $38
    ret nz

    ld a, a
    ldh [$bf], a
    ld h, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ld [hl], b
    cp a
    cp a
    rst $08
    ld d, b
    ldh [$36], a
    ld sp, hl
    rrca
    rst $38
    ld c, $fb
    ld e, $f3
    inc [hl]
    rst $20
    ld d, h
    rst $20
    db $ec
    add a
    jr @+$11

    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$0f
    ldh a, [$3e]
    pop bc

jr_009_4508:
    inc bc
    db $fc

jr_009_450a:
    ld e, $ff

jr_009_450c:
    ld bc, $00ff
    rst $38
    ld [hl], $ce
    sbc c
    ld h, a
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_009_4508

    jr nz, jr_009_450a

    jr nz, jr_009_450c

    db $10
    ldh a, [rNR10]
    ldh a, [rTMA]
    rlca
    add hl, bc
    rrca
    add hl, bc
    rrca
    dec b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
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
    add b
    add b
    add b
    add b
    ld c, b
    ld c, b
    jr nc, jr_009_4580

    or l
    xor a
    db $eb
    cp l
    ld e, l
    ld a, e
    ld d, l
    ld a, e
    ld a, $33
    dec sp
    ld [hl], $35
    ld a, $7b
    ld a, h
    rrca
    rst $38
    add b
    ld a, a
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add c
    ld a, a
    pop bc
    ccf
    pop bc
    ccf
    db $fd
    ld a, $bf
    cp [hl]
    sub $de
    db $e4
    sbc [hl]
    call Call_000_0d84
    adc b
    inc de
    sbc b
    inc hl
    or b

jr_009_4580:
    or h
    ld a, h
    db $fc
    ld [$0818], sp
    adc b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
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
    dec d
    inc b
    inc c
    inc b
    ld a, [de]
    ld b, $3f
    ld [bc], a
    ld a, l
    inc bc
    ld a, [hl]
    ld bc, $007f
    ld a, a
    nop
    add b
    ld a, a
    and b
    ld a, a
    ret nc

    ccf
    ld [hl], b
    rra
    add sp, -$61
    ld a, h
    rst $08
    ld a, h
    rst $08
    ld a, d
    rst $08
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ldh [$bf], a
    ldh [$bf], a
    ld [hl], b
    rst $38
    jr @+$01

    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$04ff], sp
    rst $38
    ld b, h
    cp a
    ld b, h
    cp a
    adc b
    ccf
    xor b
    rra
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$30
    ldh a, [$30]
    ldh a, [rSB]
    ld bc, $1f1e
    inc hl
    inc a
    ld c, [hl]
    ld a, b
    ld [hl], h
    ld e, b
    ld a, l
    ld d, b
    ld e, a
    ld d, b
    ld e, a
    ld d, b
    rst $18
    ldh [rIE], a
    nop
    rst $20
    nop
    ld b, a
    nop
    add a
    nop
    sbc c
    nop
    cp h
    nop
    db $fc
    nop
    pop bc
    ccf
    add b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret z

    ld [hl], a
    ld [hl], c
    sbc b
    sbc [hl]
    call $c267
    ld [hl-], a
    ldh [rNR23], a
    ldh a, [$08]
    db $fc
    dec b
    cp $03
    rst $38
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    ld bc, $2b00

jr_009_4649:
    rla
    ld e, [hl]
    ccf
    ld de, $440f
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ldh a, [$a0]
    ldh a, [$61]
    ret nz

    pop bc
    add b
    add c
    nop
    ld a, [hl]
    ld bc, $017f
    db $fd
    inc bc
    cp $03
    ei
    rlca
    push af
    rrca
    jp hl


    rra
    rst $18
    ld a, $72
    rst $18
    ld [hl], h
    rst $28
    add sp, -$31
    adc $c7

jr_009_4678:
    jp $e761


    ld a, $d9
    ccf
    add b
    ld a, a
    inc b
    rst $38
    dec b
    cp $05
    cp $05
    cp $88
    rst $38
    add sp, $7f
    ld hl, sp-$61
    ld d, h
    rst $28
    nop
    rst $38
    ld [bc], a
    db $fd
    add c
    ld a, [hl]
    pop bc
    ld a, $a7
    jr jr_009_4678

    nop
    ld l, h
    add b
    ld h, h
    add b
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $c0fe
    ccf
    ldh a, [rIF]
    sbc h
    inc bc
    rlca
    nop
    ld bc, $0000
    rst $38
    db $10

jr_009_46b3:
    rst $28
    reti


    ld h, $9e
    nop
    ld b, [hl]
    add b
    ld hl, $13c0
    ldh [$cb], a
    jr nc, jr_009_4649

    rra

jr_009_46c2:
    ret z

    rra
    call nz, Call_009_531f
    rrca
    or b
    ld c, a
    jr jr_009_46b3

jr_009_46cc:
    nop
    rst $38

jr_009_46ce:
    nop
    rst $38

jr_009_46d0:
    jr nc, jr_009_46c2

    ld e, $fe
    add hl, de
    rst $38
    inc c
    rst $38
    add d
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
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_009_46cc

    jr nz, jr_009_46ce

    jr nz, jr_009_46d0

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
    nop
    nop
    rst $10
    sbc b
    sbc e
    adc h
    adc a
    add a
    add d
    ld bc, $0083
    cp $9f
    ld h, c
    ld h, c
    nop
    nop
    db $fc
    nop
    db $fd
    nop
    ld a, a
    add b
    cp a
    ret nz

    ld a, [hl]
    pop bc
    ld e, e
    rst $20
    cp l
    rst $20
    ld [hl], l
    ld l, a
    xor b
    ld [hl], a
    xor b
    ld [hl], a
    xor h
    ld [hl], e
    ld l, $f1
    add $f9
    add d
    db $fd
    ld [bc], a
    db $fd
    inc bc
    db $fc
    inc bc
    cp $03
    cp $03
    cp $03
    cp $06
    db $fd
    ld b, $fd
    ld b, $fd
    add [hl]
    ld a, l
    ldh [$c0], a
    ld [hl], b
    ldh [$58], a
    ldh a, [$4c]
    ld hl, sp+$46
    db $fc
    ld b, d
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0305
    ld d, $0f
    call c, $fc3f
    ei
    db $ed
    ei
    cp d
    ld a, [hl]
    ld h, [hl]
    db $fc
    push bc
    db $fc
    dec b
    db $fc
    ld b, $fc
    ld [bc], a
    rst $38
    ld a, a
    rst $38
    cp l
    jp Jump_009_7f80


    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    jr c, @+$09

    adc h
    add e
    and $c1
    inc a
    rst $30
    ld c, $fb
    ld b, $ff
    ld b, $ff
    ld c, $fb
    ld c, $fb
    inc e
    rst $30
    inc e
    rst $30
    or c
    ret nz

    sbc c
    ldh [rKEY1], a
    ldh a, [rDMA]
    ld hl, sp+$33
    db $fc
    ld c, h
    cp a
    inc sp
    rst $08
    inc c
    di
    xor $00

jr_009_47a2:
    rst $38
    nop

jr_009_47a4:
    sbc b
    ld h, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld h, b
    sbc a
    sub b
    rst $28
    ld h, [hl]
    add hl, de
    sub d
    dec c
    db $fc
    inc bc
    ld e, $e1
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_009_47a2

    jr nz, jr_009_47a4

    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $02
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    dec b
    rlca
    dec b
    rlca
    ld a, [hl-]
    cpl
    ld a, [hl+]
    ccf
    ld a, [de]
    rra
    dec c
    rrca
    add l
    add a
    ld b, l
    rst $00
    ld b, l
    rst $00
    ld h, d
    and e
    jr @+$01

    inc a
    rst $20
    ld a, [hl]
    jp $c17f


    ld a, a
    db $dd
    daa
    db $fd
    inc bc
    cp $83
    cp $c6
    dec a
    ld c, h
    cp e
    ld c, h
    cp e
    ld l, h
    sbc e
    inc l
    db $db
    inc l
    db $db
    xor h
    db $db
    adc a
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, e
    cp $87
    cp $4f
    cp $9e
    cp b
    cp b
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    add b
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f00
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    or e
    ld [hl], b
    ld e, a
    inc a
    dec [hl]
    inc c
    ei
    ld b, $fe
    ld [bc], a
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $fb0e
    rlca
    rst $38
    add c
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    pop bc
    ccf
    ld e, $ff
    ld b, $f9
    ld b, $f9
    add d
    db $fd
    ld h, b
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    add a
    rst $38
    ld a, [de]
    db $fc
    ld l, b
    pop af
    nop
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

    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $05
    rlca
    rlca
    ld b, $06
    ld b, $06
    ld b, $0e
    inc c
    dec c
    inc c
    dec c
    inc c
    dec bc
    ld [$a161], sp
    ldh a, [$30]
    sub b
    ld [hl], b
    ret c

    ld l, b
    ret c

    ld l, b
    ld e, b
    add sp, -$48
    ret z

    ret c

    adc b
    add c
    rst $38
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    and a
    rst $38
    ld d, h
    ld a, a
    add b
    rst $38
    ret nz

    ld a, a
    ret nz

    rst $38
    ldh [$bf], a
    ld [hl], b
    rst $38
    jr @+$01

    rst $38
    rst $38
    ld e, $ff
    ld b, $fc
    ld c, $fc
    inc c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp-$08
    db $fc
    dec c
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
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
    ld hl, sp+$07
    ccf
    rst $38
    rst $38
    ld bc, $01ff
    cp $01
    cp $01
    cp $01
    pop af
    rrca
    ld a, $ff
    ret nc

    ldh [$e0], a
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc a

jr_009_4929:
    rst $38
    ld a, [c]
    db $fc
    ld b, d
    add c
    cpl
    rra
    ld bc, $06ff
    rst $38
    ld a, [de]
    db $fc
    jp hl


    di
    ld b, $cf
    ld e, h
    ccf
    pop af
    cp $f2
    ld a, l
    and a
    rst $08
    adc d
    rra
    ld h, h
    rst $38
    sbc b
    rst $28
    jr nc, jr_009_4929

    ldh [$3f], a
    ret nc

    ld a, a
    sub b
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
    jr nc, jr_009_498e

    jr c, jr_009_4988

    ld a, [bc]
    add hl, bc
    dec bc
    add hl, bc
    inc de
    ld de, $1315
    scf
    ld [hl+], a
    ld a, [hl+]
    ld h, $6e
    ld b, h
    ld [hl], l
    ld c, h
    adc b
    sbc b
    or b
    db $10
    sub b
    jr nc, jr_009_49d7

    jr nz, @+$62

    jr nz, jr_009_49a2

    ld h, a
    jp c, Jump_009_625d

    pop af
    dec hl
    ccf
    inc sp
    ld l, $31
    cpl
    ld d, b
    ld l, a

jr_009_4988:
    ld d, b
    ld l, a
    ld e, b
    ld h, a
    xor b
    or a

jr_009_498e:
    sub h
    sbc e
    and c
    rst $08
    add sp, -$10
    cp l
    ld e, $d3
    adc a
    ld l, b
    rst $00
    ld h, h
    db $e3
    ld [hl-], a
    pop hl
    ld a, d
    pop af
    rst $38
    rst $38

jr_009_49a2:
    jr nz, jr_009_49c3

    add b
    nop
    ldh [rIE], a
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld [$03f0], sp
    nop
    ccf
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret z

    ldh a, [rSC]

jr_009_49c3:
    ld bc, $ff3f
    adc $f0
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    rlca
    ccf
    cp $f0
    ret nz

    inc bc

jr_009_49d7:
    nop
    cp $01
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    ldh a, [$8c]
    inc bc
    jr nc, jr_009_49f5

    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld c, e
    rst $18
    ld d, h
    rst $18
    ld l, b

jr_009_49f5:
    rst $38
    ld d, b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    ld hl, $61ff
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld c, b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
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
    jr z, jr_009_4a4a

    ld l, c
    ld c, c
    ld e, e
    ld c, d
    sbc $8d
    or l
    adc a
    and [hl]
    rra
    ld h, l
    ld e, $47
    inc a
    db $ed
    sbc b
    jp c, Jump_009_6731

    pop hl
    and l
    jp $834e


    sbc e
    ld b, $35
    rrca
    ld l, e

jr_009_4a3f:
    ld e, $c5
    db $e3
    cp d
    add $74
    adc h
    rst $28
    rra
    sbc $3c

jr_009_4a4a:
    ld [hl], c
    ldh [$cf], a
    add b
    jr c, @+$09

    add hl, bc
    rrca
    ld e, $1f
    pop hl
    rst $20
    cp $ff
    jr c, jr_009_4a61

    pop hl
    ld e, $00
    rst $38
    jr nz, jr_009_4a3f

    ret


jr_009_4a61:
    ld hl, sp-$73
    ld hl, sp+$05
    db $fc
    inc h
    call c, $8c56
    ld [hl+], a
    sbc $02
    cp $03

jr_009_4a6f:
    cp $00
    rst $38
    nop
    rst $38
    add b
    ld a, a
    cp a
    ld b, b
    sub b

jr_009_4a79:
    ld h, b
    rst $08
    jr nc, @+$62

    rra
    ld b, b
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    rra
    ldh [$e1], a
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
    ret nz

    ccf
    add a
    ld a, b
    dec b
    ld hl, sp+$0a
    pop af
    inc d
    db $e3
    jr z, jr_009_4a6f

    jr nz, jr_009_4a79

    ld d, c
    adc a
    ld b, d
    sbc a
    and d
    sbc a
    inc b
    rst $38
    ld [$30ff], sp
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, c
    rst $38
    ld h, c
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    jr nz, jr_009_4b4f

    jr nz, @+$01

    and b
    rst $38
    sub b
    rst $38
    ld d, b
    rst $38
    jr nc, @+$01

    jr @+$01

    ld [$04ff], sp
    rst $38
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
    ld d, $17
    jr jr_009_4b07

jr_009_4b07:
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
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    nop
    nop
    nop
    nop
    nop
    ld h, $27
    jr z, jr_009_4b4c

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_009_4b5c

    ld [hl-], a
    inc sp
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_009_4b71

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
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_009_4b4c:
    ld c, c
    ld c, d
    ld c, e

jr_009_4b4f:
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
    ld d, h

jr_009_4b5c:
    ld d, l
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
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_4b71:
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
    ld l, [hl]
    ld l, a
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
    ld a, h
    ld e, [hl]
    ld e, [hl]
    ld a, l
    nop
    nop
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
    ld e, [hl]
    ld e, [hl]
    adc d
    nop
    nop
    nop
    nop
    nop
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
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    adc d
    nop
    nop
    nop
    nop
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
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    adc d
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
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    adc d
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
    ld bc, $0619
    daa
    rrca
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
    add b
    add b
    ld h, b
    ldh [$d0], a
    jr nc, jr_009_4c05

jr_009_4c05:
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_009_4c3a

    ld hl, $4621
    ld b, a
    ld c, d
    ld c, h
    call z, $d1c8
    ret c

    nop
    nop
    inc bc
    inc bc
    dec a
    ld a, $ce
    pop af
    rst $30
    rrca
    db $db
    inc a

jr_009_4c30:
    or c
    ld h, b
    ld h, l
    jp $e0e0


    jr jr_009_4c30

    or $0e

jr_009_4c3a:
    db $ed
    di
    ld a, a
    sbc a
    reti


    ld a, $6f
    ldh a, [$a0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    ld hl, sp+$07
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld [hl], b
    ldh a, [$0c]
    db $fc
    inc bc
    rst $38
    pop hl
    rra
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a

jr_009_4c6b:
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $0309
    ld de, $1306
    dec de
    sub a
    inc l
    cp h
    ld d, b
    ldh a, [$60]
    ld h, b
    ret nz

    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    ld a, h
    adc h
    sbc e
    rst $20
    ld c, [hl]
    ld [hl], c
    jr nc, @+$41

    nop
    jr jr_009_4ca2

    inc hl
    inc c
    ld c, a

jr_009_4ca2:
    ld d, $58
    nop
    ld [$e8e0], sp
    ld bc, $01f9
    add hl, bc
    dec b
    dec b
    ei
    rst $38
    db $fd
    inc bc
    rrca
    ld bc, $f0b9
    pop hl
    or c
    ld [hl], d
    and e
    ld a, a
    and d
    rst $28
    ld [hl-], a
    xor $33
    ld e, a
    or e
    ld d, l
    cp e
    adc [hl]
    add a
    ld a, d
    adc h
    ret nc

    jr c, jr_009_4c6b

    ld [hl], b
    ld e, a
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    add b
    nop
    nop
    nop
    inc bc
    nop
    cp $00
    cp $00
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    rlca
    nop
    dec e
    inc bc

jr_009_4cea:
    ld [hl], $0f
    ld a, b
    inc e
    ldh [rP1], a
    adc l
    inc bc
    xor $1f
    ld hl, sp+$07
    ret nz

    ccf
    cp $ff
    ld bc, $00ff
    ld a, a
    cp a
    ld a, a
    adc $f1
    rst $38
    nop
    add b
    add b

jr_009_4d06:
    ld b, b
    ret nz

    jr nz, jr_009_4cea

    sub b
    ldh a, [$7e]
    cp $81
    rst $38
    ld h, b
    rst $38
    ret nc

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
    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    ld c, $0e
    ld de, $171f
    jr jr_009_4d5c

    inc sp
    ld e, d
    ld h, [hl]
    ld [hl], h
    ld c, h
    dec b

jr_009_4d35:
    daa
    dec c
    ld b, a
    ld a, [de]
    ld c, [hl]
    ld a, [c]
    cp $cc
    inc [hl]
    or h
    call z, Call_009_7868
    db $10
    ld de, $0000
    nop
    nop
    nop
    ld bc, $0703
    dec b
    ld e, $1b
    ld l, h
    ld [hl], $99
    ld l, e
    scf
    jr z, jr_009_4d06

    ld h, b
    ret nz

    add b
    ret nz

    ld a, c
    add b

jr_009_4d5c:
    di
    nop
    di
    rlca
    call z, Call_000_31ff
    ld hl, sp+$03
    ld bc, $0f30
    ldh a, [rIF]
    ld hl, sp+$07
    jr c, jr_009_4d35

    ldh [rIE], a
    rra
    rst $38
    db $e4
    rra
    ld [hl], a
    sbc c
    rst $30
    sbc b
    sub a
    rst $38
    ld a, b
    rst $38
    xor a
    ret nz

jr_009_4d7e:
    db $e3
    ret nz

    ld sp, $9ce0
    ld hl, sp-$01
    nop
    rst $38
    nop
    cp a
    ret nz

    ld l, a
    ldh a, [$d7]
    jr c, jr_009_4d7e

    add hl, de
    rst $28
    sbc b
    rst $38
    adc b
    rst $38
    nop
    ei
    rlca
    db $fd
    ld a, $ff
    nop
    rst $38
    nop
    sbc $e0
    xor h
    ld [hl], b
    call c, Call_009_7730
    ld hl, sp-$41
    ret nz

    rst $38
    nop
    db $fc
    nop
    cp $00
    ld a, $00
    inc bc
    nop
    nop
    nop
    rst $38
    nop
    di
    nop

jr_009_4db8:
    ld hl, sp+$00
    inc c
    nop
    nop
    nop
    nop
    nop
    jr jr_009_4dc2

jr_009_4dc2:
    rrca
    nop
    add sp, $1f
    or $0f
    db $fd
    inc bc
    ccf

jr_009_4dcb:
    nop
    rrca
    nop
    add a
    nop
    ld [hl], a
    nop
    rst $38
    nop
    ld b, b
    ret nz

    jr nz, jr_009_4db8

    ldh a, [$f0]
    adc $3e
    db $fd
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
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_009_4df5

jr_009_4df5:
    nop
    nop
    ld bc, $0200
    nop
    inc c
    ld bc, $0411
    ld [hl+], a
    ld [$0044], sp
    ld c, b
    ld l, b
    sbc b
    ld [hl], b
    db $10
    ld h, b
    jr nz, jr_009_4dcb

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    jr c, jr_009_4e15

jr_009_4e15:
    ld bc, $0200
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    ld e, l
    ld h, [hl]
    ld d, [hl]
    ld l, l
    ld e, c
    ld l, a
    ld c, e
    ld a, [hl]
    ld d, l
    ld a, [hl]
    ld a, [hl-]
    inc a
    ld [hl], $b8
    ld l, l
    or b
    ld b, e
    ldh [$c7], a
    add b
    add b
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    add e
    nop
    sbc [hl]
    nop
    db $f4
    rrca
    db $fc
    rlca
    inc a
    rlca
    db $fc
    rlca
    ld a, [$ce07]
    inc bc
    sbc e
    rlca
    dec l
    rra
    add h
    db $fc
    and [hl]
    db $fc
    and d
    cp $a3
    cp $a3
    cp $c3
    rst $38
    jp $c6fe


    db $fc
    rst $38
    adc b
    rst $30
    xor b
    or $a8
    cp $a0
    db $ec

jr_009_4e6d:
    and b
    ld h, h
    jr nz, jr_009_4e91

    jr nz, jr_009_4e93

    jr nz, jr_009_4e6d

    db $10
    ld a, b
    db $10
    jr nc, jr_009_4e92

    jr z, jr_009_4e94

    dec c
    jr jr_009_4e98

    inc c
    ld e, c
    inc c
    rst $20
    inc c
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
    rst $38

jr_009_4e91:
    nop

jr_009_4e92:
    rst $38

jr_009_4e93:
    nop

jr_009_4e94:
    add b
    rst $38
    add b
    rst $38

jr_009_4e98:
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
    adc a
    ld [hl], b
    pop bc
    ld a, $e0
    rra
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]

jr_009_4ec0:
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rNR10]
    ldh a, [rNR10]
    ld [hl], b
    sub b
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    jr nz, jr_009_4f1e

    db $10
    jr z, jr_009_4ee9

    jr z, jr_009_4ee3

    inc d
    inc b
    dec bc
    ld [bc], a
    inc b
    ld bc, $0002

jr_009_4ee3:
    ld bc, $4438
    ld [$0c74], sp

jr_009_4ee9:
    ld [de], a
    ld [$1014], sp
    db $e4
    nop
    ld [$1000], sp
    add c
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc

jr_009_4f00:
    db $fd
    cp $07
    ld hl, sp+$2f
    ld [hl], b
    ccf

jr_009_4f07:
    ld h, b
    ld e, l
    ld h, e
    or [hl]
    rst $08
    ld l, e
    sbc h
    rst $10
    jr c, jr_009_4ec0

    ld [hl], b
    ld e, a
    ldh [$fc], a
    nop
    ld a, b
    rst $38
    add a
    rst $38
    ldh [rIE], a
    sbc a
    ld a, a

jr_009_4f1e:
    rst $38
    nop
    rst $38
    ld bc, $01ff
    sub [hl]
    ld a, c
    ld l, b
    rst $38
    sub a
    rst $38
    ld l, c
    cp $bb
    call z, $08ff
    rst $38
    ret z

    ld a, a
    ret z

    cp h
    ld hl, sp+$4f
    ldh a, [$df]
    ldh [$fe], a
    ld b, c
    rst $30
    ld c, a
    add sp, $5f
    ldh a, [$5f]
    sub b
    rst $38
    ld hl, $a320
    jr nz, jr_009_4f00

    ld h, b
    ld l, a
    ldh a, [$ef]
    ldh a, [$1f]
    ldh a, [$5f]

jr_009_4f51:
    or b
    rst $18
    jr nc, jr_009_4f51

    rlca
    ei
    rlca

jr_009_4f58:
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    nop
    db $fd
    cp $c3
    ccf
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_009_4f72:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $18
    ldh [$af], a
    ld [hl], b
    rst $18
    jr nc, jr_009_4f58

    jr c, jr_009_4f72

    jr c, jr_009_4f07

    rst $38
    inc bc
    rst $38
    ld bc, $02ff
    rst $38
    inc bc
    cp $03
    cp $04
    cp $06
    db $fc
    ld a, [$fa07]
    rlca
    cp $03
    cp $03
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01fe
    ld [bc], a
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $82
    cp $02
    db $e3
    ld [bc], a
    inc bc
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    ld b, $07
    dec bc
    ld c, $0b
    ld c, $3e
    rst $38
    db $dd
    db $e3

jr_009_4fc8:
    ld a, d
    add a
    push af
    ld c, $fb
    inc c
    rst $28
    jr jr_009_4fc8

jr_009_4fd1:
    jr jr_009_4fd1

    ld de, $c0bf
    ld a, a
    add b
    rst $38
    nop
    rst $28
    rra
    or b
    ld a, a
    ld b, b
    rst $38
    sbc a
    rst $38
    and b
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $817e
    db $dd
    db $e3
    ld [hl+], a
    rst $38
    call c, Call_000_33ff
    rst $38

jr_009_4ff4:
    ld a, a
    adc h
    rst $28
    sbc l
    sub a
    db $fd
    rst $20
    db $fd
    rst $10
    db $ed
    rst $38
    db $ed
    rst $38
    db $ed
    db $fd
    db $f4
    db $e3
    cp h
    ld h, e
    cp h
    rst $20
    jr c, @-$17

    jr c, jr_009_4ff4

    jr jr_009_5076

    sbc b
    ld [hl], $c9
    or $f9
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    ld [hl], a
    sbc b
    ld [hl], a
    sbc b
    rst $30
    sbc b
    rst $30
    sbc b
    or a
    ret c

    ccf
    ret nz

    rra
    ldh [rVBK], a
    ldh a, [rBGP]
    ld hl, sp-$3f
    ld a, [hl]
    and b
    ld a, a
    and b
    ld a, a
    ldh [$3f], a
    rst $38
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
    inc bc
    db $fc
    nop
    rst $38
    cp e
    ld l, h
    rst $10
    ld l, h
    db $fd
    ld b, [hl]
    jp c, $ad67

    ld [hl], e
    or $39
    rst $28
    rra
    nop
    rst $38
    cp a
    ret nz

    ld a, a
    ret nz

    rst $18
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    rst $28
    jr nc, jr_009_50d0

    or b
    sbc a
    ldh a, [$82]
    cp $47
    rst $38
    and [hl]
    ld a, a
    jp c, Jump_009_6a3f

    rra
    jr c, jr_009_507f

    inc [hl]
    rrca
    ld a, [de]
    rlca
    nop
    nop

jr_009_5076:
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ld [hl], c

jr_009_507f:
    or c
    ld l, $df
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
    ret nz

    ret nz

    ldh a, [$30]
    db $ec
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
    ccf
    ccf
    ld b, a
    ld a, b
    dec c
    ld c, $17
    inc e
    dec de
    inc e
    cpl
    jr nc, jr_009_50d4

    ccf
    reti


    cp $2f
    ldh a, [$5f]
    ldh [$df], a
    ld sp, $33ed
    cp $23
    cp d
    ld h, a
    call c, $fde7
    rlca
    db $fd
    rlca
    push bc
    rlca
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38

jr_009_50d0:
    nop
    rst $38
    nop
    rst $38

jr_009_50d4:
    inc c
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld bc, $0fff
    rst $38
    ld d, $ff
    dec h
    cp $dc
    db $f4
    db $fc
    call c, $ac5e
    xor [hl]
    xor h
    ld l, $bc
    cp [hl]
    cp h
    xor [hl]
    ld a, h
    xor $3c
    ei
    dec c
    rra
    dec b
    dec c
    rlca
    dec de
    rrca
    scf
    rra
    dec sp
    rra
    add hl, sp
    rra
    jr c, @+$11

    xor a
    ret c

    adc e
    db $fc
    ld a, e
    db $fc
    rst $08
    inc a
    push af
    ld c, $7a
    or a
    dec l
    ei
    call $d0fb
    ccf
    rst $28
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, b
    add a
    add e

jr_009_5121:
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    add e
    rst $38
    cp $01
    rst $38
    nop
    pop bc
    ld a, $00
    rst $38
    ret nz

    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    ret nc

    ccf
    ld [hl], b
    sbc a
    jr z, jr_009_5121

    ld a, [de]
    rst $28
    ld e, a
    ldh a, [$5f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [rNR34]
    ldh a, [$2c]
    ldh a, [$28]
    ldh a, [$28]
    ldh a, [rIE]
    nop
    rst $38
    nop
    cp $00
    cp $00
    inc a
    nop
    inc e
    nop
    inc c
    nop
    ld b, c
    nop
    ld e, $03
    dec c
    inc bc
    rrca
    ld bc, $0127
    dec [hl]
    inc bc
    ld [hl-], a
    rlca
    cp l
    rlca
    or $0f
    add c
    cp $f8
    rst $38
    ld a, a
    rst $38
    ld d, b
    ldh a, [rOBP0]
    ld hl, sp-$78
    ld hl, sp+$28
    ret c

    ld l, b
    sbc b
    db $fc
    inc b
    inc a
    call nz, $e898
    ld e, b
    ld l, b
    sbc b
    add sp, -$68
    add sp, $0c
    ld [hl], h
    inc l
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $4607
    ld e, a
    cp b
    ld e, a
    ld h, b
    cp c
    ret nz

    cp b
    ret nz

    ldh a, [$80]
    ld d, b
    and b
    ld b, b
    and b
    and b

jr_009_51b1:
    ld b, b
    inc hl
    ret nz

    db $fc
    nop
    ret nz

    nop
    ld bc, $0f00
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    dec b
    rlca
    dec b
    rlca
    call $9507
    rrca
    sub l
    rrca
    ld a, [hl-]
    rrca
    ld l, d
    rra
    ld e, h

jr_009_51d3:
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
    ld bc, $43ff
    rst $38
    ld c, a
    db $fc
    ld e, l
    ld hl, sp+$5b
    ld hl, sp+$7b
    ldh a, [rPCM34]
    ldh a, [$b7]
    ldh a, [$35]
    di
    ld a, $f7
    db $fc
    inc e
    ld hl, sp+$0c
    db $ec
    jr jr_009_51d3

    jr nc, jr_009_51b1

    ld h, b
    ld l, h
    ret nz

    call c, Call_000_3880
    nop
    inc d
    rrca
    dec bc
    rlca
    rlca
    inc bc
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    rst $38
    cp $ff
    ld a, a
    rst $38
    sbc [hl]
    rst $38
    ld l, e
    sbc h
    db $f4
    inc c
    inc b
    ld [bc], a
    nop
    nop
    rst $08
    ldh a, [$3f]
    rst $38
    rst $38
    rst $38
    pop bc

jr_009_522b:
    inc bc
    rst $38
    ccf
    ld e, a
    ccf
    rrca
    rlca
    jr @+$11

    db $fd
    inc bc
    sbc $e1
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
    and $ff
    rrca
    rst $38
    add l
    rst $38
    ld e, [hl]
    rst $38
    db $f4
    rst $38
    db $ec
    rst $30
    call nc, $b9ef
    adc $eb
    sbc h
    ld h, b
    ldh a, [$60]

jr_009_5257:
    ldh a, [$99]
    ldh a, [$9d]
    ldh a, [$9f]
    ldh a, [$97]
    ld hl, sp-$71
    ld hl, sp-$75
    db $fc
    db $e3
    nop
    rst $30
    nop
    rst $38

jr_009_5269:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$ed0f]
    ld e, $f5
    ld e, $d5
    ld a, $e5
    ld a, $e5
    ld a, $d5
    ld a, $f2
    rra
    ret nc

    jr nc, jr_009_5257

    jr nc, jr_009_5269

    jr nz, jr_009_522b

    ld h, b
    and b
    ld h, b
    inc hl
    db $e3
    ld h, [hl]
    and l
    ld h, l
    and a
    ld l, $32
    ld h, $3a
    ld h, $3a
    ld d, $1a
    inc d
    inc e
    inc h
    inc a
    and h
    cp h
    add sp, -$28
    nop
    ld bc, $0600
    ld bc, $0218
    ld de, $1304
    inc bc
    daa
    inc c
    inc h
    inc b
    inc l
    ld e, $01
    ld b, b
    ccf
    ld de, $2dff
    di
    sbc $e3
    ld a, d
    ld h, a
    inc a
    daa
    inc l
    scf
    ld h, e
    add b
    rst $20
    add b
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rrca
    ldh a, [$fe]
    nop
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    cp $03
    ei
    ld b, $fd
    ld b, $f7
    inc c
    and h
    ld a, a
    ld e, c
    rst $28
    xor c
    rst $18
    ld [hl], a
    sbc a
    ret c

jr_009_52ed:
    ccf
    ldh [$3f], a
    and b
    ld a, a
    ldh [$7f], a
    adc l
    rst $38
    ld de, $21ff
    rst $38
    jp z, Jump_000_14ff

    rst $38
    inc d
    rst $38
    jr @+$01

    jr z, @+$01

    inc e
    ld hl, sp+$15
    cp $1e
    ei
    dec bc
    db $fd
    dec c
    db $fc
    inc b
    cp $06
    cp $02
    rst $38
    ld hl, sp+$00
    ld hl, sp+$00
    or b
    ld b, b
    ret nc

    jr nz, jr_009_52ed

    and b
    sub b

Call_009_531f:
    add b
    ret nz

    nop
    rst $08
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
    ldh [$c0], a
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
    ld c, $01
    ld a, [hl]
    rra
    dec de
    rlca
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    rst $38
    dec e
    rst $38
    push af
    ei
    ld c, d
    rst $38
    or l
    ld l, [hl]
    db $eb
    inc a
    rst $10
    jr c, jr_009_53c8

    ldh a, [$ef]
    add b
    ld [hl], a
    sbc b
    rst $08
    jr nc, @+$01

    nop
    rst $38

jr_009_536b:
    nop
    rst $38
    nop
    rst $38
    nop

jr_009_5370:
    cp $01
    ld e, $01
    ld b, l
    cp $42
    rst $38
    ld hl, $11ff
    rst $38
    db $10
    rst $38
    adc b
    rst $38
    add h
    rst $38
    ld b, d
    rst $38
    rst $38
    nop
    rst $18
    jr nz, jr_009_5370

    jr jr_009_53f2

    sbc b
    di
    adc h
    or b
    rst $08
    ld h, b
    rst $38
    db $10
    rst $38
    ld a, [c]
    rra
    jp hl


    rra
    ld a, [$f50d]
    ld c, $fc
    rlca
    ld a, e
    add a
    ld a, $c1
    rra
    ldh [rHDMA2], a
    or e
    ld de, $c8f1
    ld hl, sp-$58
    ld a, b
    db $e4
    inc a
    ld e, $fe
    db $dd
    db $e3
    daa
    ld sp, hl
    ret nc

    jr nc, @+$22

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
    inc b
    inc l
    inc b
    inc l

jr_009_53c8:
    inc b
    inc e
    dec bc
    rla
    ld a, [bc]
    ld de, $1801
    ld bc, $0004
    ld [bc], a
    ld a, [hl+]
    scf
    ld e, $13
    dec e
    inc de
    rla
    jr jr_009_536b

    adc a
    add c
    add c
    add b
    add b
    ld b, b
    ret nz

    inc bc
    db $fc
    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    adc h
    adc a
    ld [bc], a
    inc bc

jr_009_53f2:
    ld bc, $fb01
    inc c
    rst $28
    jr jr_009_5450

    cp b
    ld l, [hl]
    or c
    ccf
    pop hl
    ld e, l
    db $e3
    ld e, [hl]
    db $e3
    ld a, a
    jp nz, Jump_009_77c8

    ld c, h
    di
    sbc $e1
    db $d3
    ldh [$50], a
    ldh [$d0], a
    ld h, b
    ret nc

    ld h, b
    pop de
    ld h, b
    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr @+$01

    call nc, Call_000_0c3f
    ccf
    dec c
    ld e, $04
    ld c, $03
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, a
    xor a
    ld [hl], b
    sbc $3c
    ld a, a
    sub a
    cp $bc
    rst $38
    rst $28
    ret c

    rst $28
    cp a
    ret z

    ld [hl], b
    sbc b
    or b
    ld h, b
    jr c, jr_009_5458

    call c, $f688
    ld a, h
    ld a, $04
    db $e4
    db $fc

jr_009_5450:
    sbc h
    ld a, b
    add hl, de
    nop
    dec e
    inc bc
    ld e, $03

jr_009_5458:
    ccf
    ld [bc], a
    ld a, a
    ld [bc], a
    ld a, [hl]
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld [hl], b
    add b
    ret nz

    nop
    add b
    nop
    rst $00
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    inc c
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, $01
    ld b, $01
    inc c
    inc bc
    inc c
    inc bc
    jr jr_009_5495

    inc a
    rlca
    inc [hl]
    rrca
    ld e, b
    ccf
    ld b, d

jr_009_5495:
    rst $38
    ld b, d
    rst $38
    ld c, d
    rst $30
    adc c
    rst $30
    sub h
    db $e3
    sub h

jr_009_549f:
    db $e3
    sub h
    db $e3
    ld d, d
    pop hl
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$c8ff], sp
    rst $38
    ld a, $ff
    ld b, $ff
    ld bc, $18ff
    rst $20
    jr jr_009_549f

    ld [$04f7], sp
    ei
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld b, $f9
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    cp $c2
    cp $22
    cp $80
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    inc b
    dec b
    inc b
    add hl, bc
    ld [$090a], sp
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld b, b
    ret nz

    add b
    add b
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
    nop
    nop
    ld bc, $0101
    ld bc, $c27f
    cp $c3
    db $fd
    jp $c1be


    cp l
    ret nz

    db $fc
    add b
    ld hl, sp-$80
    ld a, b
    add b
    jp nc, $d261

    ld h, c
    ld c, d
    pop af
    xor d
    pop af
    db $76
    ld sp, hl
    sub [hl]
    ld a, c
    adc $39
    ld l, d
    dec e
    jp nz, Jump_000_2107

    rst $00
    add hl, de
    db $e3
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, e
    ld a, $7a
    add a
    ld b, $fd
    adc l
    ld a, [$fc0b]
    add hl, de
    db $f4
    ld [hl], $e9
    ld l, e
    pop de
    ld e, b
    or b
    add sp, $30
    xor b
    ld [hl], b
    db $f4
    ld a, b
    ld e, a
    rst $38
    add a
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc bc
    nop
    rlca
    nop
    ld e, $01
    ld a, b
    rlca
    rst $38
    rst $38
    rst $08
    ldh a, [$5f]
    ldh [$7e], a
    pop bc
    ld sp, hl
    rlca
    ld a, [hl]
    rst $38
    sbc a
    ldh [$fe], a
    add c
    ldh a, [rIF]
    add c
    ld a, a
    ld b, $ff
    ld e, $f8
    ld hl, sp+$07
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    ld c, a
    add b
    rra
    nop
    rst $38
    nop
    inc sp
    rst $08
    dec b
    cp $07
    db $fc
    rst $38
    ld hl, sp-$19
    ld e, $fd
    inc bc
    cp $01
    ld h, b
    rst $38
    and b
    rst $38
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and c
    rst $38
    ld d, c
    ldh [rHDMA1], a
    ldh [$28], a
    ldh a, [rNR50]
    ld hl, sp+$2a
    db $fc
    ld a, [hl+]
    cp $cb
    cp $09

jr_009_55c3:
    rst $38
    ld bc, $20ff
    rst $18
    cp b
    ld b, a
    and a
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    inc b
    rst $38
    ret z

    rst $38
    jr nc, @+$01

    db $10
    rst $28
    call c, Call_000_3223
    ld bc, $0011
    add hl, bc
    nop
    ld hl, $11ff
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld c, b
    cp a
    and $1f
    pop af
    rrca
    jr nc, jr_009_55c3

    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, @-$1e

    ret c

    ld hl, sp+$3c
    db $fc
    dec bc
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    ld b, $05
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr z, jr_009_5652

    ret z

    ld hl, sp-$30
    jr nc, @-$1e

    ldh [rP1], a
    nop
    nop
    nop
    inc bc
    inc bc
    ld c, $0f
    dec bc
    ld c, $13
    ld e, $15
    ld e, $16
    inc e
    ld a, [de]
    inc e
    ld a, [de]
    inc e
    add sp, $00
    ldh [rP1], a
    and e
    nop
    inc hl
    nop
    ld h, a
    nop
    ld h, a
    nop
    ld h, a
    nop
    ld l, a
    nop
    ld l, d
    dec e
    jr c, jr_009_5657

    jr c, @+$11

    sbc b
    rrca
    call nc, $fc0f
    rlca
    ei
    rlca

jr_009_5652:
    db $fd
    inc bc
    nop
    rst $38
    nop

jr_009_5657:
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    cp $07
    db $fc
    ld b, $fd
    adc l
    ld a, [$d167]
    push de
    and e
    xor [hl]
    ld b, e
    adc d
    ld b, a
    ld e, h
    add a
    inc d
    adc a
    cp b
    rrca
    jr z, jr_009_5693

    nop
    rst $38
    ld bc, $07ff
    rst $38
    dec bc
    cp $16
    db $fc
    inc l
    ld hl, sp+$2d
    ld hl, sp+$2b
    db $fc
    ld a, h
    jp $c7b8


    ld c, b
    add a
    ld de, $630f
    ld e, $c4
    ld a, $86
    ld a, h
    inc c

jr_009_5693:
    ld hl, sp+$28
    ldh a, [$60]
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
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld h, c
    rst $38
    and d
    ld a, a
    db $e4
    ccf
    ret nc

    ccf
    ldh a, [$1f]
    add sp, $1f
    add sp, $1f
    rst $08
    ccf
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    rrca
    rst $38
    ld a, [c]
    db $fc
    jr nz, @-$3e

    jp $b280


    pop bc
    ld c, h
    di
    rlca
    rst $38
    ld sp, hl
    cp $00
    ret nz

    nop
    nop
    add hl, bc
    rlca
    scf
    ld [$3fc0], sp

jr_009_56e8:
    rrca
    rst $38
    di
    db $fc
    nop
    nop
    nop
    nop
    ld c, a
    ccf
    ld hl, sp-$01
    ld [$00f7], sp
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0107
    sbc $3e
    ld a, [c]
    rst $38
    pop bc
    rst $38
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    add b
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
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$1e
    jr jr_009_5735

    ld [$0c0a], sp
    ld a, [bc]
    inc c
    rlca
    inc b
    dec b
    ld b, $02
    inc bc
    ld bc, $6f01

jr_009_5735:
    nop
    ld l, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    sbc a
    nop
    rst $18
    nop
    ld a, [hl]
    add c
    ei
    ld b, $f6
    inc c
    db $fc
    ld [$08fc], sp
    jp hl


    jr jr_009_56e8

    ld [hl], b
    ei
    pop af
    di
    sbc l
    call c, $fa72
    ld h, h
    db $f4
    ld h, b
    add sp, -$40
    jp hl


    add b
    db $d3
    add b
    and a
    ld bc, $06df
    ld [hl], b
    rra
    ld d, b
    ccf
    ldh [$3f], a

jr_009_576a:
    and b
    ld a, a
    ret nz

    ld a, a
    ld e, a
    rst $38
    db $fd
    rst $20
    dec b
    rlca
    inc d
    rst $38

jr_009_5776:
    ld [$10ff], sp
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr jr_009_5776

    jr nz, @-$0e

    jr nc, jr_009_576a

    ld h, b
    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    ret nz

    add b
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
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $007f
    ld a, a
    nop
    ld a, a
    nop
    ld a, [hl]
    ld bc, $073b
    ld e, l
    ld a, $68
    ldh a, [$a0]
    ret nz

    cp $01
    di
    rrca
    sbc l
    ld a, [hl]
    db $ec
    ldh a, [rLCDC]
    add b
    dec b
    inc bc
    cpl
    ld e, $b8
    ld [hl], b
    db $f4
    ld hl, sp+$20
    ret nz

    ld bc, $1700
    rrca
    cp h
    ld a, b
    db $e3
    ret nz

    inc e
    inc bc
    ldh [$1f], a
    nop
    nop
    ld de, $7f0f
    cp $fe
    add c
    ld [hl], b
    rrca
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    sbc [hl]
    ld a, a
    ldh a, [$ef]
    ret nz

    ccf
    ld bc, $02fe
    db $fc
    inc b
    ld hl, sp+$09
    ldh a, [rNR22]
    db $e3
    ld sp, $52cf
    adc a
    and h
    rra
    ld c, b
    ccf
    ld d, b
    ccf
    and b
    ld a, a
    ldh [rIE], a
    and b
    rst $38
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
    ld a, [bc]
    dec bc
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
    dec d
    ld d, $17
    jr jr_009_584e

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
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_009_5874

    ld a, [hl+]
    dec hl
    dec l

jr_009_584e:
    dec l
    ld l, $2f
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_009_588a

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_009_589a

    ld a, [hl-]
    dec l
    inc a
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_009_5874:
    ld b, [hl]
    ld b, a
    ld c, b
    dec l
    ld c, c
    ld c, d
    ld c, e
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

jr_009_588a:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
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

jr_009_589a:
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
    nop
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
    nop
    nop
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
    dec l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    nop
    nop
    nop
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
    jp nz, $2c3b

    add hl, bc
    ld hl, $5921
    ld de, $9000
    ld bc, $0800
    call Call_000_0634
    ld hl, $6121
    ld de, $8800
    ld bc, $0780
    call Call_000_0634
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    nop
    ld [$0000], sp
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
    ld b, b
    add b
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
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$a0], a
    db $10
    db $10
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
    ld b, c
    ld a, $00
    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_5989:
    nop
    nop
    nop
    nop
    ld bc, $4200
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc e
    add b
    ld h, e
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
    add b
    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    ld [$0404], sp
    ld [$0810], sp
    nop
    nop
    add h
    ld a, b
    nop
    add [hl]
    ld [bc], a
    ld bc, $0100
    nop
    nop
    add b
    ld [hl], b

jr_009_59cf:
    jr nc, jr_009_5989

jr_009_59d1:
    db $10
    ld [$1000], sp
    nop
    db $10
    jr nz, jr_009_59e9

    sbc [hl]
    ld hl, $a11e
    ld e, [hl]
    pop hl
    ld a, $c1
    nop
    ld b, b
    or b
    ld [hl], b
    ld a, b
    ld hl, sp+$7c
    db $fc

jr_009_59e9:
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$08
    ld hl, sp-$08
    ld [bc], a
    inc b
    ld [$0704], sp
    ld [$0817], sp
    rrca
    db $10
    ld l, $11
    ld e, $21
    ld e, [hl]
    ld hl, $0805
    ld b, $0f
    cp b
    ld b, [hl]

jr_009_5a07:
    jr c, jr_009_59cf

    jr c, jr_009_59d1

    ld a, [hl-]
    ld b, a
    cp d
    rst $00
    cp l
    jp $c000


    ld b, b
    ld hl, $1221

jr_009_5a17:
    inc c
    ld [de], a
    nop
    inc c
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    add b
    ld h, c
    ld b, b
    sub d
    inc b
    ld a, [bc]
    dec bc
    inc b
    inc bc
    inc b
    di
    inc c
    rst $20
    jr jr_009_5a07

    jr c, jr_009_5a32

jr_009_5a32:
    nop
    nop
    nop
    nop
    nop
    jp $dc3c


    ccf
    add a
    ld a, a
    ei
    rlca
    db $fd
    inc bc
    jr nz, @+$44

    dec b
    ld [hl+], a
    inc bc
    inc h
    cp e
    ld a, h
    ld [hl], a
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$11
    ldh a, [rP1]
    jr jr_009_5a17

    inc h
    sra h
    db $db
    inc a
    and a
    ld a, b
    sbc a
    ld h, b
    cp $01
    ld hl, sp+$06
    nop
    ld b, b
    or b
    ld [hl], b
    cp b
    ld a, b
    cp b
    ld a, h
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    rrca
    db $10
    rrca
    db $10
    ld l, $11
    rra
    jr nz, jr_009_5a99

    jr nz, jr_009_5adb

    jr nz, jr_009_5abc

    ld b, c
    dec a
    ld b, e
    ld [hl], a
    ld hl, sp+$4f
    ldh a, [$3f]
    ret nz

    cp $01
    cp $01
    db $fd
    inc bc
    ld a, [c]
    rrca
    ld c, $ff
    dec a
    jp $c33d


    ld a, l
    add e
    ld a, l
    add e

jr_009_5a99:
    add hl, hl
    rst $10
    ld d, b
    xor a
    xor d
    ld d, l
    ld d, l
    xor d
    ldh a, [$f8]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    add b
    ld hl, sp+$50
    xor h
    xor b
    ld d, a
    ld d, h
    xor e
    dec a
    ld b, e
    inc a
    ld b, e
    cp e
    ld b, h
    ld a, a
    add b
    ld a, [hl+]
    push de
    ld d, l

jr_009_5abc:
    xor d
    and b
    ld e, a
    ld d, a
    xor a
    ld a, $c1
    cp $01
    cp $01
    db $fd
    inc bc
    xor c
    ld d, a
    dec d
    db $eb
    ret


    rst $30
    push de
    db $eb
    cp a
    ret nz

    sbc $e1
    sbc $e1
    sbc $e1
    cp [hl]
    pop bc

jr_009_5adb:
    cp [hl]
    pop bc
    cp [hl]
    pop bc
    sub h
    db $eb
    scf
    ld hl, sp-$11
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$de]
    pop hl
    sub $e9
    jp z, $d5f5

    ld [$02fc], a
    ld a, l
    add e
    dec de
    rst $20
    ld h, a
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ld a, [bc]
    push af
    ld d, l
    xor d
    cpl
    jr nc, @-$6f

    sub b
    sbc $e1
    call nc, $caeb
    push af
    sub h
    db $eb
    xor d
    push de
    dec d
    db $eb
    ld a, c
    add l
    dec e
    db $e3
    sbc $e1
    call nc, $caeb
    push af
    push de
    ld [$f5ea], a
    push hl
    ld a, [$fcf8]
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ld b, b
    ret nz

    ld h, b
    ldh [rSVBK], a
    ldh a, [rSVBK]
    ld hl, sp-$57
    ld d, a
    ld d, l
    xor e
    add hl, hl
    rst $10
    ld d, l
    xor e
    dec hl
    rst $10
    ld d, e
    xor a
    dec hl
    rst $10
    sub a
    ld l, a
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    dec b
    ld a, d
    db $10
    rra
    rrca
    rra
    rrca
    rrca
    rlca
    rlca
    xor b
    ld d, a
    ld d, d
    xor a
    xor d
    ld d, a
    ld b, a
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and a
    ld e, a
    ld d, a
    xor a
    xor a
    ld e, a
    ld c, a
    cp a
    sbc a
    rst $38
    rst $18
    rst $18
    rst $18
    rst $18
    adc a
    adc a
    ret


    rst $30
    push de
    db $eb
    set 6, a
    add e
    db $db
    jp $c383


    add e
    inc bc
    add e
    ld bc, $2a01
    push de
    ld d, l
    xor e
    add hl, hl
    rst $10
    ld d, l
    xor e
    add hl, hl
    rst $10
    ld d, e
    xor a
    xor e
    rst $10
    add a
    cp a
    jp z, $d5f5

    ld [$f5ea], a
    push hl
    ld a, [$fdf2]
    ldh [$f3], a
    pop af
    pop hl
    pop af
    pop hl
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, h
    xor e
    and c
    ld e, a
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, hl
    rst $10
    dec d
    db $eb
    set 6, a
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    di
    pop af
    pop af
    ld [$f4f5], a
    ei
    pop af
    rst $30
    pop hl
    pop hl
    pop hl
    pop hl
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$60]
    ld h, b
    nop
    nop
    ld c, a
    ccf
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
    ret nz

    ldh [$c0], a
    ret nz

    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    db $fd
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
    nop
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
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0000
    inc bc
    nop
    inc b
    nop
    ld [$e0e0], sp
    ret nz

    ldh [$c0], a
    ret nz

    add b
    add b
    inc b
    ld hl, sp+$00
    ld b, $00
    ld bc, $0000
    rst $38
    rst $38
    ccf
    ld a, a
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    nop
    ld [$8810], sp
    ldh [$e0], a
    ld b, b
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

jr_009_5c7e:
    ld b, b
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
    nop
    nop
    nop
    nop
    ld [$00f0], sp
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
    inc bc
    db $10
    inc c
    jr nz, jr_009_5cc1

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_009_5c7e

    nop
    ld [hl-], a
    nop
    inc c

jr_009_5cc1:
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    rrca
    add b
    ld [hl], b
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
    ret nz

    nop
    jr nz, jr_009_5cdc

jr_009_5cdc:
    stop
    db $10
    inc e
    inc a
    ld [bc], a
    ld bc, $0600
    nop
    ld [$1000], sp
    jr nz, jr_009_5cfc

    inc e
    ld [hl+], a
    inc e
    ld [hl+], a
    ld e, $21
    inc b

Call_009_5cf2:
    ld hl, sp+$00
    ld b, $00
    ld bc, $0000
    nop
    ret nz

    ld c, [hl]

jr_009_5cfc:
    ld [hl], c
    pop af
    rst $38
    ld a, a
    rst $38
    db $10
    ld [$100f], sp
    cpl
    db $10
    ld c, $b1
    ccf
    ret nz

    rst $18
    ldh [$df], a
    ldh [$bd], a
    jp nz, RST_00

    ld c, $f1
    ld [hl], c
    rst $38
    rra
    rst $38
    rst $28
    rra
    rst $30
    rrca
    ldh a, [$08]
    or $0e
    nop
    sub b
    rst $28
    ldh a, [$ef]
    ldh a, [$de]
    pop hl
    sbc $e1
    sbc $e1
    cp [hl]
    pop bc
    dec a
    ld b, e
    ld [hl], b
    or b
    ld a, b
    ld hl, sp+$7c
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    ld b, $00
    ld [$1000], sp
    jr nz, jr_009_5d59

    ld e, $21
    ld e, $21
    ld e, h
    inc hl
    ccf
    ld b, b
    nop
    inc c
    ld bc, $0002
    ld bc, $0100

jr_009_5d59:
    inc e
    db $e3
    pop hl
    cp $3d
    cp $dd
    ld a, $40
    jr nz, @-$7e

    ld b, c
    ld a, h
    add e
    ld a, c
    add a
    di
    rrca
    rst $30
    rrca
    rst $28
    rra
    rst $28
    rra
    inc bc
    inc c
    inc bc
    add h
    cp c
    add $b6
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $00
    rst $00
    cp $01
    cp $01
    sbc $21
    dec a
    jp $c3bd


    cp l
    jp $c3bd


    ld a, l
    add e
    ld a, $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$f0], a
    cpl
    db $10
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
    cp h
    jp $c3bd


    ld a, e
    add a
    dec hl
    rst $10
    ld d, b
    xor a
    ld a, [hl+]
    push de
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ld l, a
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    inc de
    rst $28
    xor b
    ld d, a
    ld d, h
    xor e
    xor b
    ld d, a
    dec a
    ld b, e
    ld a, l
    add e
    ld a, l
    add e
    add hl, hl
    rst $10
    ld d, b
    xor a
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    add b
    ld hl, sp+$50
    xor h
    xor b
    ld d, a
    ld d, h
    xor e
    xor b
    ld d, a
    ccf
    ld b, b
    cp a
    ld b, b
    ld a, e
    add h
    ld a, b
    add a
    ld a, e
    add a
    rst $30
    rrca
    ld d, a
    xor a
    and b
    ld e, a
    db $eb
    inc e
    db $e3
    inc d
    db $eb
    inc e
    db $db

jr_009_5e18:
    inc a
    add hl, sp
    cp $fa
    db $fd
    adc l
    cp $24
    rst $18
    rst $18
    ccf
    rst $18
    ccf
    sbc $3f
    db $dd
    ld a, $5d
    cp [hl]
    and d
    ld e, l
    ld d, l
    xor d
    xor d
    ld d, l
    add e
    add e
    nop
    ret nz

    ret nz

    jr nz, jr_009_5e18

    ld de, $b140
    xor h
    ld e, l
    ld e, [hl]
    cp a
    sbc [hl]
    ld a, a
    ld a, l
    add e
    ld a, l
    add e
    ld d, l
    xor e
    xor c
    ld d, a
    ld d, e
    xor a
    xor e
    ld d, a
    ld d, e
    xor a
    xor e
    ld d, a
    ldh a, [$e0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld d, h
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
    ld [$d5aa], a
    push bc
    ld a, [$fff0]
    rst $30
    rst $30
    rst $20
    rst $20
    db $e3
    db $e3
    ldh [$e1], a
    ld d, e
    xor a
    xor e
    ld d, a
    ld b, a
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $55
    xor d
    ld a, [hl+]
    push de
    add l
    ld a, [$fff0]
    rst $08
    rst $08
    rst $08
    rst $08
    add a
    add a
    nop
    ld bc, $af52
    xor d
    ld d, a
    ld b, [hl]
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $55
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ld d, l
    xor d
    adc d
    push af
    add b
    sbc a
    rrca
    rrca
    ld d, c
    xor [hl]
    xor b
    ld d, l
    ld d, d
    xor a
    and a
    ld e, a
    ld d, a
    xor a
    adc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    pop bc
    rst $38
    rst $18
    rst $18
    rst $18
    rst $18
    adc a
    adc a
    ld e, [hl]
    cp a
    cp a
    ld a, a
    ld a, $fe
    ld a, [hl]
    cp $fe
    cp $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld d, a
    xor a
    daa
    rst $18
    rrca
    ld a, a
    rra
    rra
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    add b
    add b
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
    ret nz

    ret nz

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
    rrca
    rrca
    rlca
    rlca
    ld bc, $0003
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
    ld a, [$00fc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add e
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
    ld a, a
    ccf
    ld a, [hl]
    ld bc, $0441
    ld b, e
    ld de, $294c
    ld [hl], d
    jr @+$66

    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    adc [hl]
    pop af
    ld a, a
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_009_5fef

    ret nz

    nop
    nop
    nop
    rst $38
    ld l, l
    sbc a
    or $ff
    sbc b
    ld a, [hl]
    add $39
    cp a
    ld b, b
    rst $38
    nop
    nop
    nop
    nop
    cp $e8
    ld a, [c]
    add b
    ld [bc], a
    nop
    ld [bc], a
    nop
    add d
    add b
    ld b, d
    add b
    ld [hl+], a

jr_009_5fd1:
    nop
    nop
    nop
    ld a, a
    ld c, $44
    dec sp
    ld b, [hl]
    ld sp, $224f
    ld a, a
    dec d
    ld e, [hl]
    dec sp
    ld e, h
    nop
    nop
    nop
    rst $38
    ld a, a
    rrca
    ld [hl], a
    jr jr_009_5fd1

    ld hl, sp+$7b
    add h
    db $fd
    ld [bc], a

jr_009_5fef:
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    db $fc
    db $fc
    ld a, h
    db $fc
    or $0c
    db $e3
    ld e, $dd
    inc hl
    cp [hl]
    ld b, c
    nop
    nop
    nop
    cp $3c
    ld b, $7c
    ld b, $fc
    ld b, $f8
    ld c, $f4
    ld a, [de]
    db $ec
    ld a, [c]
    nop
    nop
    nop
    ld a, a
    add hl, sp
    ld a, [hl]
    scf
    ld a, b
    cpl
    ld [hl], b
    rra
    ld h, b
    ld a, $41
    inc a
    ld b, e
    nop
    nop
    nop
    rst $38
    sbc e
    ld a, h
    sub a
    ld a, b
    sbc a
    ld [hl], b
    dec de
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rP1]
    nop
    nop
    rst $38
    cp $af
    sbc [hl]
    ld h, e
    ld a, [$fd07]
    ld b, $b5
    ld b, $05
    ld b, $00
    nop
    nop
    cp $ec
    ld e, $f4
    ld c, $f0
    ld c, $f8
    ld b, $f8
    ld b, $f8
    ld b, $00
    nop
    nop
    ld a, a
    ccf
    ld h, e
    ccf
    ld l, a
    ld [hl-], a
    ld a, h
    inc b
    ld a, b
    add hl, bc
    ld [hl], b
    inc sp
    ld [hl], b
    nop
    nop
    nop
    rst $38
    db $d3
    ldh [$ef], a
    ldh a, [rNR31]
    inc e
    cp l
    ld b, $f9
    ld b, $fd
    ld [bc], a
    nop
    nop
    nop
    rst $38
    jp nz, $e33c

    inc e
    rst $08
    jr nc, @+$01

    nop
    rst $18
    ld a, $bd
    ld b, c
    nop
    nop
    nop
    cp $7c
    cp $1c
    ld a, $8c
    ld e, $04
    ld c, $8c
    ld b, $cc
    add d
    jr nc, jr_009_60dc

    inc c
    ld [hl], d
    jr c, jr_009_60fc

    inc [hl]
    ld l, d
    jr jr_009_610f

    ld a, [de]
    ld [hl], h
    scf
    ld l, b
    cpl
    ld a, b
    rst $38
    nop
    ld l, a
    sub b
    pop de
    ld [hl+], a
    inc bc
    ld b, h
    ld [bc], a
    ld d, h
    inc d
    xor l
    ccf
    xor l
    ld l, e
    cp [hl]
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    dec a
    ld [bc], a
    and b
    ld bc, $2193
    ld a, a
    and b
    sbc $b7
    ret nz

    ld [de], a
    ret nz

    ld [de], a
    or b
    ld a, [bc]
    jr nc, jr_009_60d3

    ld h, h
    ld e, $e4
    ld e, $c4
    cp [hl]
    cp h
    cp $35
    ld a, b

jr_009_60d3:
    add hl, de
    ld [hl], b
    inc l
    ld [hl], b
    inc l
    ld [hl], b
    dec l
    ld a, b
    ld a, [hl-]

jr_009_60dc:
    ld [hl], b
    ld l, $70
    dec e
    ld h, d
    rst $38
    nop
    cp $01
    ld a, l
    inc bc
    cp [hl]
    inc bc
    or $37
    rst $28
    ld b, l
    ld b, a
    cp l
    dec sp
    cp $ff
    nop
    rst $38
    nop
    cp h
    nop
    cp [hl]
    inc e
    sbc a
    and d
    pop de

jr_009_60fc:
    cp [hl]
    ld e, [hl]
    rst $38
    cp [hl]
    rst $30
    inc [hl]
    ld a, [$ca4c]
    ret c

    ld c, [hl]
    or b
    ld a, [hl]
    db $10
    ld a, [hl]
    adc b
    ld a, [hl]
    or h
    ld c, [hl]

jr_009_610f:
    cp b
    ld b, [hl]
    jr nc, @+$51

    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    jr nc, jr_009_619a

    cpl
    ld a, a
    dec e
    ld h, b
    add hl, bc
    ld h, b
    inc e
    ldh a, [rNR34]
    ldh a, [rNR22]
    ld hl, sp+$17
    ld hl, sp+$6b
    db $f4
    adc e
    call c, Call_000_1a35
    db $e4
    ld a, a
    dec b
    ld b, $2d
    ld b, $bc
    rlca
    ld [$e217], a
    rra
    db $ed
    dec de
    push af
    ld c, $fb
    rlca
    ldh [rNR34], a
    add b
    ld a, [hl]
    nop
    cp $00
    cp $3c
    cp $d4
    ld [c], a
    or b
    ld [bc], a
    ld b, h
    add d
    ld d, $60
    ld sp, $3144
    ld c, b
    jr nz, @+$53

    jr nc, @+$54

    cpl
    ld [hl], h
    cpl
    ld [hl], h
    dec l
    db $76
    ld hl, sp+$07
    db $fd
    ld a, [bc]
    rst $10
    dec e
    and l

jr_009_6168:
    ccf
    inc hl
    ccf
    dec l
    ccf
    db $f4
    jr c, jr_009_6168

    ld d, b
    cp $00
    ldh a, [$80]
    ld b, b
    ret


    ld h, e
    db $e4
    ld h, l
    and $bd
    or $d5
    ld a, $68
    ccf
    db $ec
    ld b, d
    db $fc
    ld b, d
    db $fc
    ld h, $7c
    and [hl]
    ld a, h
    sub $7c
    sub $7c
    sub $fc
    sub $2b
    ld a, h
    jr @+$81

    add hl, de
    ld a, a
    jr jr_009_6218

    inc e

jr_009_619a:
    ld a, a
    cpl
    ld a, a
    ld l, $7d
    ld a, $7f
    xor [hl]
    ei
    rst $18
    ld sp, hl
    dec sp
    db $fc
    ld l, [hl]
    call z, $dcfe
    ld e, [hl]
    call c, $dcd6
    cp $cc
    sub c
    rst $38
    ld l, [hl]
    rst $38
    rst $18
    rst $30
    cp e
    ld l, e
    ld l, a
    cpl
    cpl
    rrca
    add hl, hl
    rrca
    rlca
    ld b, $5c
    ld a, [c]
    ld e, b
    ld a, [c]
    call c, Call_009_5cf2
    ld a, [c]
    call c, Call_009_5cf2
    ld a, [c]
    db $ec
    cp [hl]
    ld hl, sp-$42
    dec c
    ld [hl], d
    dec d
    ld a, d
    ld [hl], $79
    dec sp
    ld a, h
    dec sp
    ld a, a
    inc a
    ld a, a
    ccf
    ld a, a
    ld sp, $7f7f
    rst $28
    ld [hl], a
    call nc, $dc5e
    ld e, [hl]
    call c, $de95
    push de
    sbc $7a
    db $ec
    add b
    pop bc
    ei
    ld l, e
    cpl
    ld l, a
    ld c, a
    cpl
    dec hl
    rrca
    add hl, bc
    rrca
    ld c, $07
    inc bc
    ld bc, $c122
    ld e, h
    and d
    ld e, h
    and d
    ld c, b
    or [hl]
    ld b, b
    cp $d4
    cp [hl]
    db $fc
    xor [hl]
    db $fc
    ld l, $bc
    cp $33
    ld b, b
    ld a, $41
    dec hl
    ld d, l
    dec e

jr_009_6218:
    ld [hl], a
    inc sp
    ld a, a
    ld sp, $2a7e
    ld e, a
    rla
    ld l, a
    ld a, d
    rst $38
    push de
    rst $10
    cp [hl]
    cp h
    ld e, [hl]
    ld a, h
    add $34
    jr c, @+$1e

    ld [$b030], sp
    pop bc
    ld h, a
    sbc a
    ld a, [$3ffa]
    rra
    dec de
    rrca
    add hl, bc
    ld a, [bc]
    ld d, $04
    add hl, bc
    ld b, $01
    pop bc
    xor h
    jp nz, $ead4

    add sp, -$02
    ld e, h
    or $d4
    db $76
    ld [hl], h
    ld h, $a8
    ld l, [hl]
    db $f4
    ld a, [$772d]
    dec a
    ld [hl], a
    inc [hl]
    ld a, a
    ld a, $7f
    ccf
    ld a, a
    ccf
    ld a, [hl]

Jump_009_625d:
    ccf
    ld a, a
    ccf
    ld a, a
    ld e, b
    ldh a, [$3c]
    ld hl, sp-$58
    db $ec
    ld a, h
    call c, $dc5c
    sub $dc
    xor $5c
    and a
    ret nz

    ld a, l
    ccf
    ld e, a
    scf
    ld l, e
    dec hl
    cpl
    cpl
    cpl
    rrca
    add hl, bc
    rrca
    inc bc
    rlca
    nop
    nop
    db $fc
    ld e, d
    db $ec
    ld l, d
    call c, Call_009_78d2
    jp nc, $d2f8

    ld a, b
    jp nc, Jump_009_6abc

    db $fc
    ld a, [hl]
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, [hl]
    inc a
    ld a, b
    add hl, sp
    ld [hl], c
    nop
    ld a, a
    nop
    nop
    sbc a
    jp nz, $c1a3

    ld e, b
    pop hl
    ei
    db $fc
    cp [hl]
    rst $08
    ld a, a
    add a
    nop
    rst $38
    nop
    nop
    ld b, $01
    push bc
    jp $470b


    ld l, $df
    or e
    ld a, a
    and $df
    nop
    rst $38
    nop
    nop
    add sp, -$42
    call nc, $887e
    cp $3c
    cp $f0
    jp nz, Jump_000_22e0

    nop
    cp $00
    nop
    dec bc
    ld a, [hl]
    add hl, bc
    ld a, a
    ld b, $7f
    ld b, $7f
    nop
    ld a, a
    jr nz, @+$81

    nop
    ld a, a
    nop
    nop
    and b
    pop bc
    ld l, c
    ldh a, [$9a]
    db $fc
    ld b, $ff
    ld a, c
    rst $38
    rst $38
    add a
    nop
    rst $38
    nop
    nop
    add d
    ld b, c
    dec b
    jp $4f96


    db $db
    ld a, $fd
    or $b8
    rra
    nop
    rst $38
    nop
    nop
    ld a, h
    cp $bc
    jp nz, Jump_000_06f8

    call c, $b83e
    ld h, d
    ldh [$c2], a
    nop
    cp $00
    nop
    jr c, jr_009_6392

    dec b
    ld a, e
    ld a, $41
    ccf
    ld b, b
    inc a
    ld b, e
    jr c, @+$49

    nop
    ld a, a
    nop
    nop
    ld hl, sp-$20
    inc d
    ld hl, sp+$1f
    db $fc
    ld [hl+], a
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    nop
    cp $3f
    pop bc
    ld a, a
    cp a
    ret nz

    sbc $e1
    inc a
    jp $837c


    nop
    rst $38
    nop
    nop
    ld [$04fe], sp
    cp $80
    ld a, [hl]
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    nop
    ccf
    ld a, a
    ld a, $7e
    ld a, $7e
    jr jr_009_63a9

    inc a
    ld c, b
    jr c, @+$72

    nop
    ld a, a
    nop
    nop
    cp h
    jp nz, $e1dc

    db $76
    jr c, jr_009_6385

    ld c, $ff
    ld [hl], e
    xor h
    rst $18
    nop
    rst $38
    nop
    nop
    ld bc, $0200
    ld b, c
    adc e
    rlca
    xor a
    rra
    db $f4
    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, h
    ld [c], a
    cp h
    and d

jr_009_6385:
    inc e
    ld e, $b0
    and d
    ldh [$c2], a
    ld b, b
    ld b, d
    nop
    cp $00
    nop
    nop

jr_009_6392:
    nop
    nop
    ld a, a
    scf
    ld b, b
    rrca
    ld b, b
    rrca
    ld b, b
    rlca
    ld b, b
    inc c
    ld b, e
    ld a, [bc]
    ld b, l
    nop
    nop
    nop
    rst $38
    call c, $ac20
    ld d, b

jr_009_63a9:
    xor [hl]
    ld d, b
    or a
    ld c, b
    ld b, a
    cp b
    add [hl]
    ld a, c
    nop
    nop
    nop
    rst $38
    rst $18
    nop
    ld c, a
    nop
    rlca
    nop
    ld [hl+], a
    nop
    rst $38
    nop
    cp e
    inc b
    nop
    nop
    nop
    cp $fc
    ld a, $fc
    ld b, $c4
    ld a, [hl-]
    ld a, b
    ld b, $3c
    ld [bc], a
    call z, Call_000_0002
    nop
    nop
    ld a, a
    ccf
    ld e, a
    ld a, $6e
    cpl
    ld a, [hl]
    scf
    ld a, l
    ccf
    ld a, [hl]
    ld a, [hl-]
    ld a, [hl]
    nop
    nop
    nop
    rst $38
    ld l, b
    rla
    ldh a, [rVBK]
    ret nc

    sbc a

jr_009_63eb:
    and d
    ccf
    ld [hl], h
    ld c, a
    call c, Call_000_0087
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    add d
    rst $38
    adc c
    rst $38
    rst $18
    push af
    nop
    nop
    nop
    cp $fc
    ld a, $bc
    ld a, $5c
    sbc [hl]
    inc e
    sbc $2c
    ld c, [hl]
    inc l
    ld c, $00
    nop
    nop
    ld a, a
    ccf
    ld a, [hl]
    ccf
    ld a, h
    dec e
    ld c, b
    ld [$3a58], sp
    ld d, b
    ld d, $71
    nop
    nop
    nop
    rst $38
    ld e, d
    ldh a, [$2d]
    ld hl, sp+$16
    db $fc
    db $eb
    ld e, $5b
    ld c, l
    db $dd
    halt
    nop
    nop
    rst $38
    and d
    ld e, a
    ld d, l
    dec bc
    adc e
    ld bc, $012a
    push de
    jr nz, jr_009_63eb

    call nc, RST_00
    nop
    cp $7c
    cp $3c
    cp $3c
    cp $dc
    or d
    or b
    sbc d
    ld c, h
    jp z, RST_00

    nop
    ld a, a
    inc [hl]
    ld a, b
    jr nc, jr_009_6499

    jr nz, jr_009_649b

    ld hl, $2b40
    ld b, b
    ld [hl-], a
    ld b, c
    nop
    nop
    nop
    rst $38
    db $10
    rrca
    ld [hl], e
    inc c
    rst $38
    nop
    jp Jump_000_1f3c


    ldh [$36], a
    ret nz

    nop
    nop
    nop
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    ld e, h
    inc bc
    inc c
    inc bc
    add [hl]
    ld bc, $0083
    nop
    nop
    nop
    cp $7c
    cp $3c
    cp $1c
    cp $1c
    cp $1c
    cp $0c
    cp $15
    ld c, d
    ld a, [bc]
    ld d, l
    ld a, [hl+]
    ld d, l
    dec [hl]
    ld c, d

jr_009_6499:
    inc [hl]
    ld c, d

jr_009_649b:
    dec a
    ld b, d
    cpl
    ld e, c
    ccf
    ld d, e
    ld h, [hl]
    sbc c
    xor l
    ld [de], a
    dec l
    ld [de], a
    ld a, [hl+]
    dec d
    dec l
    ld [de], a
    ld a, [c]
    call Call_000_25fa
    cp l
    jp nc, $039c

    adc a
    nop
    jp $e000


    nop
    ld [hl], e
    add b
    adc a
    ld [hl], b
    cp $1f
    pop af
    ld l, a
    db $fc
    ld [bc], a
    ld a, h
    add d
    adc h
    ld [hl], d
    or h
    ld c, d
    call nz, $e02a
    ld d, $e0
    ld d, $40
    or $3e
    ld a, h
    dec a
    ld a, l
    dec sp
    ld a, l
    ld a, $7b
    ld [hl], $7b
    ld a, [hl-]
    ld [hl], a
    ld a, [hl-]
    ld [hl], a
    add hl, sp
    ld [hl], a
    xor a
    and d
    xor d
    ld a, [hl+]
    jp c, Jump_009_6e4a

    jp c, $fe57

    ld a, [hl]
    rst $38
    rst $38
    or l
    rst $38
    ld a, [bc]
    db $f4
    call nc, $cada
    rst $28
    jp z, $efbf

    rst $38
    or [hl]
    ei
    xor h
    rst $30
    ld e, e
    ld e, a
    ld c, a
    db $ec
    adc [hl]
    sub h
    and $d4
    ld h, [hl]
    call nc, $cc66
    or $8c
    or $fc
    or $ec
    or $36
    ld h, c
    jr z, jr_009_657c

    jr z, jr_009_657e

    add hl, hl
    ld b, a
    ld de, $154f
    ld c, a
    add hl, hl
    ld e, a
    add hl, hl
    ld e, a
    cp a
    rst $38
    cp a
    ret nz

    ldh a, [$80]
    ld h, b
    add b
    ld h, b
    add b
    ldh a, [$e0]
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$40
    rst $38
    and d
    ld a, a
    ld l, d
    ccf
    dec [hl]
    rra
    dec [hl]
    rra
    ld l, [hl]
    dec sp
    xor $ff
    ccf
    rst $38
    ld l, h
    jp z, $ee58

    inc l
    or $24
    cp $20
    cp $20
    cp $a0
    cp $40
    cp $24
    ld b, e
    jr z, jr_009_659c

    dec sp
    ld b, a
    ld sp, $114f
    ld c, a
    inc de
    ld c, [hl]
    dec bc
    ld b, a
    dec l
    ld b, e
    ld h, [hl]
    add b
    ld c, d
    add h
    dec bc
    call nz, $e6c9
    db $ec
    di
    push af
    ld a, [$def9]
    xor l
    xor [hl]
    call Call_009_6700
    nop
    ld a, a
    nop
    cp [hl]
    ld b, c
    reti


    daa
    ld h, a

jr_009_657c:
    sbc a
    sbc a

jr_009_657e:
    ld a, [hl]
    cp c
    ld a, e
    adc h
    ld a, [hl]
    call z, $843e
    ld a, [hl]
    ld [hl], b
    cp $e4
    cp $c4
    cp $a4
    cp $60
    ld a, [hl]
    cpl
    ld e, a
    ccf
    ld b, c
    rra
    ld h, c
    ccf
    ld h, d
    rla
    ld h, d
    scf

jr_009_659c:
    ld b, c
    dec h
    ld b, e
    ld a, [bc]
    ld b, a
    db $db
    db $e4
    xor c
    or d
    ld e, c
    ld [hl], b
    or b
    ld [hl], c
    ld [hl], c
    nop
    add b
    nop
    ret nz

    adc h
    add sp, -$3c
    rst $18
    cp a
    ld a, a
    rst $38
    xor $ef
    and d
    ccf
    ld a, $1d
    ld e, $01
    dec e
    ld [bc], a
    dec [hl]
    ld c, $20
    or $e0
    ld a, [c]
    db $e4
    ld a, [de]
    add sp, $16
    call c, $dc22
    ld [hl+], a
    db $e4
    ld a, [de]
    ld hl, sp+$06
    dec sp
    ld [hl], a
    ld [hl], $7f
    ld a, $7a
    ld a, [hl-]
    ld a, d
    ld a, [hl-]
    ld a, d
    ld sp, $2b7b
    ld a, c
    add hl, bc
    ld a, b
    db $fd
    ei

jr_009_65e3:
    db $ed
    rst $28
    ld a, e
    rst $18
    ld e, a
    db $d3
    ld a, l
    xor a
    ld c, a
    ld [c], a
    sbc $e4
    ld a, h
    ld hl, sp+$4d
    db $dd
    rst $18
    ld d, a
    ld b, a
    ld d, h
    ld h, a
    inc hl
    inc sp
    db $10
    rra
    rrca
    ld l, $c1
    ld e, e
    rlca
    ld h, b
    cp $60
    cp $e0
    cp [hl]
    ldh [$7e], a
    or b
    cp $50
    cp $88
    cp $88
    cp $05
    ld a, a
    ld [bc], a
    ld a, a
    inc bc
    ld a, a
    ld a, [bc]
    ld a, a
    dec b
    ld a, a
    rlca
    ld a, a
    ld a, [hl-]
    ld a, l
    ld hl, $ef70
    xor h
    db $fc
    cp b
    jr c, jr_009_65e3

    xor b
    inc a
    db $f4
    jr jr_009_6684

    add b
    and c
    jp nz, $f069

    db $db
    ld [hl], e
    ld a, a
    cpl
    ld l, a
    cpl
    dec bc
    cpl
    ld a, $07
    ld e, $01
    sbc l
    ld b, e
    cp e
    rlca
    ret nz

    cp $60
    sbc $fc
    jp nz, $e254

    xor b
    add $bc
    adc $74
    cp [hl]
    ret z

    or $38
    ld b, a
    ld hl, $035f
    ld a, l
    rrca
    ld a, c
    rra
    ld a, a
    rra
    ld a, a
    cpl
    ld a, a
    scf
    ld a, a
    or h
    cp a
    ld h, [hl]
    rst $38
    dec sp
    db $fc
    ldh [rP1], a
    ld b, b
    add b
    rst $20
    add b
    sbc a
    rst $38
    ld hl, sp-$30
    push af
    ld a, a
    ld d, e
    cp [hl]
    rst $28
    rra
    inc a
    inc bc
    xor $1f
    ld a, a
    ld a, [c]
    and $83
    rrca
    rlca
    ld b, b
    ld a, [hl]
    adc b

jr_009_6684:
    cp $04
    cp $00
    cp $30
    cp $f8
    cp $f8
    cp $f4
    cp $3c
    ld b, a
    ld [hl], $4d
    cpl
    ld e, a
    dec d
    ld a, b
    ld l, $70
    dec sp
    ld e, h
    nop
    ld a, a
    nop
    nop
    or b
    ldh [$d6], a
    cp c
    ccf
    rst $18
    sub $f3
    ld a, d
    scf
    ld [hl], d
    rra
    nop
    rst $38
    nop
    nop
    reti


    ld a, $f6
    rst $38
    dec e
    rst $30
    inc e
    rst $30
    ld [hl], $fd
    rst $08
    rst $38
    nop
    rst $38
    nop
    nop
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    inc e
    ld [c], a
    db $fc
    add d
    db $fc
    add d
    db $fc
    add d
    nop
    cp $00
    nop
    inc c
    ld a, b
    cpl
    ld e, b
    jr z, jr_009_6736

    inc de
    ld a, a
    rla
    ld a, l
    ld c, $7b
    nop
    ld a, a
    nop
    nop
    cp $1f
    ld h, l
    rst $38
    cp a
    call nz, $8376
    db $ed
    add a
    ld e, b
    rst $28
    nop
    rst $38
    nop
    nop
    rst $28
    ld e, $f3
    rst $38
    ld [hl-], a
    rst $08
    db $dd
    ccf
    db $eb
    db $fd
    adc e
    rst $38
    nop
    rst $38
    nop

Call_009_6700:
    nop
    adc b
    cp $a4
    cp $a4
    cp $f4
    ld a, [hl]
    db $f4
    sbc [hl]
    and h
    ld a, $00
    cp $00
    nop
    ld bc, $0660
    ld b, c
    rla
    ld c, a
    dec e
    ld a, b
    ld [hl-], a
    ld h, c
    ld c, $41
    nop
    ld a, a
    nop
    nop
    ld a, d
    db $fc
    db $fd
    sub $df
    set 1, a
    ld b, l
    ld h, $e2
    dec e
    rst $30
    nop
    rst $38
    nop
    nop

Jump_009_6731:
    ld l, [hl]
    rra
    cp a
    ld [hl], a
    rst $38

jr_009_6736:
    db $e3
    cp h
    add a
    rra
    ld [$3039], sp
    nop
    rst $38
    nop
    nop
    call nz, $4402
    add d
    or b
    jp nz, $f268

    call nc, $083a
    cp $00
    cp $00
    nop
    rra
    ld c, a
    inc hl
    ld b, c
    inc sp
    ld h, c
    ld [hl], $62
    inc a
    ld d, h
    inc a
    ld c, b
    nop
    ld a, a
    nop
    nop
    rst $18
    ld a, a
    db $ec
    ccf
    ld hl, sp-$41
    rst $20
    ld a, a
    ld [hl], b
    cpl
    ld a, b
    daa
    nop
    rst $38
    nop
    nop
    ei
    rst $28
    sub a
    cp $09
    rst $38
    pop af
    rst $38
    inc de
    db $fd
    cpl
    pop af
    nop
    rst $38
    nop
    nop
    db $fc
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, h
    ld e, [hl]
    db $e4
    ld b, d
    db $fc
    ld h, [hl]
    cp h
    sbc d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    scf
    ld a, b
    dec sp
    ld a, h
    dec a
    ld e, [hl]
    ld a, $4f
    ccf
    ld b, a
    ccf
    ld b, e
    nop
    nop
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
    cp a
    ret nz

    nop
    nop
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
    ld bc, $0000
    nop
    cp $fc
    ld c, $fc
    ld e, $f8
    ld a, $f4
    ld a, d
    db $ec
    ld a, [c]
    call c, Call_000_3fe2
    ld b, c
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    rst $18
    ldh [$ef], a
    ldh a, [$f7]
    ld a, b
    ei
    inc a
    db $fd
    ld e, $fe
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    cp $0f
    db $fd
    ld e, $fb
    inc a
    rst $30
    ld a, b
    rst $28
    ldh a, [$df]
    ldh [$bc], a
    jp nz, $827c

    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, c
    rst $38
    inc bc
    rst $38
    rlca
    cp $0f
    db $fd
    ld e, $fb
    inc a
    rst $30
    ld a, b
    rst $28
    ldh a, [$df]
    ldh [$df], a
    ldh [$ef], a
    ldh a, [$f7]
    ld a, b
    ei
    inc a
    db $fd
    ld e, $fe
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld a, h
    add d
    cp h
    jp nz, Jump_009_433f

    ccf
    ld b, a
    ld a, $4f
    dec a
    ld e, [hl]
    dec sp
    ld a, h
    scf
    ld a, b
    nop
    ld a, a
    nop
    nop
    cp a
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
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    nop
    call c, $ece2
    ld a, [c]
    db $f4
    ld a, d
    ld hl, sp+$3e
    db $fc
    ld e, $fc
    ld c, $00
    cp $00
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

Jump_009_6a3f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_009_6abc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_009_6e4a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_009_7730:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_009_77c8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_009_7868:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_009_78d2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_009_7f80:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
