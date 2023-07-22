; Disassembly of "money_idol_exchanger.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    ld [$0a0a], sp
    inc c
    ld c, $08
    ld [$060e], sp
    sub b
    ld hl, $c400
    xor a

jr_002_400e:
    ld [hl+], a
    dec b
    jr nz, jr_002_400e

    ret


Call_002_4013:
    ld bc, $015f
    ld hl, $c790

jr_002_4019:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_002_4019

    ret


    ld a, [$c264]
    ld e, a
    ld a, [$c265]
    ld d, a
    dec de
    ld hl, $ffc4
    add hl, de
    ld a, l
    or h
    jr nz, jr_002_4037

    ld a, $3c
    ld [$c26c], a

jr_002_4037:
    ld a, e
    ld [$c264], a
    ld a, d
    ld [$c265], a
    or e
    ret nz

    ldh a, [$ba]
    ld b, a
    ldh a, [$bc]
    or b
    ld b, a
    ld a, [$c269]
    or b
    ld b, a
    ld a, [$c2a6]
    or b
    ld b, a
    ldh a, [$bb]
    or b
    jr z, jr_002_405d

    ld a, $02
    ld [$c264], a
    ret


jr_002_405d:
    ld a, [$c269]
    and a
    jr z, jr_002_4069

    ld a, $08
    ld [$c264], a
    ret


jr_002_4069:
    ld a, [$c266]
    inc a
    cp $80
    jr c, jr_002_4073

    ld a, $80

jr_002_4073:
    ld [$c266], a
    ld hl, $41b2
    call Call_000_065d
    ld a, [hl+]
    ld [$c264], a
    ld a, [hl]

Call_002_4081:
    ld [$c265], a
    ld hl, $c267
    inc [hl]
    ld a, [$cf29]
    inc a
    inc a
    ld c, a
    ld b, [hl]
    ld de, NEXT_LINE
    ld a, $03
    ld hl, copy_next_line_to_ram
    call switch_bank_and_call
    ld a, $ff
    ld [$c269], a
    ld a, $09
    jp Jump_000_07ce


    ld hl, $c298
    ld de, $9cc2
    ld a, [$cf14]
    bit 0, a
    jr nz, jr_002_40b5

    inc hl
    ld de, $9cc4

jr_002_40b5:
    ld a, [hl]
    and a
    jr z, jr_002_4110

    ldh a, [$ba]
    ld b, a
    ldh a, [$bc]
    or b
    ld b, a
    ld a, [$c269]
    or b
    ld b, a
    ld a, [$c2a6]
    or b
    jr nz, jr_002_4114

    ld a, [$c29b]
    and a
    ret z

    ld a, $20
    ld [$c29d], a
    dec [hl]
    ld a, [hl]
    push hl
    add a
    add $4d
    ld hl, $c2aa
    ld [hl+], a
    inc a
    ld [hl], a
    dec hl
    ld c, $02

jr_002_40e4:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_002_40e4

    ld a, $02
    call Call_000_0787
    pop hl
    ld a, $08
    sub [hl]
    swap a
    ld [$c296], a
    ld a, [$c264]
    ld e, a
    ld a, [$c265]
    ld d, a
    ld hl, $0032
    add hl, de
    ld a, l
    ld [$c264], a
    ld a, h
    ld [$c265], a
    jr jr_002_418a

jr_002_4110:
    xor a
    ld [$c29b], a

jr_002_4114:
    ld a, [$c264]
    ld e, a
    ld a, [$c265]
    ld d, a
    dec de
    ld hl, $ffc4
    add hl, de
    ld a, l
    or h
    jr nz, jr_002_412a

    ld a, $3c
    ld [$c26c], a

jr_002_412a:
    ld a, e
    ld [$c264], a
    ld a, d
    ld [$c265], a
    or e
    ret nz

    ldh a, [$ba]
    ld b, a
    ldh a, [$bc]
    or b
    ld b, a
    ld a, [$c269]
    or b
    ld b, a
    ld a, [$c2a6]
    or b
    ld b, a
    ldh a, [$bb]
    or b
    jr z, jr_002_4150

    ld a, $02
    ld [$c264], a
    ret


jr_002_4150:
    ld a, [$c269]
    and a
    jr z, jr_002_415c

    ld a, $08
    ld [$c264], a
    ret


jr_002_415c:
    ld a, [$cf2e]
    cp $02
    jr nz, jr_002_416f

    ld a, $20
    ld [$c264], a
    ld a, $03
    ld [$c265], a
    jr jr_002_418a

jr_002_416f:
    ld a, [$c266]
    inc a
    cp $80
    jr c, jr_002_4179

    ld a, $80

jr_002_4179:
    ld [$c266], a
    ld hl, $41b2
    call Call_000_065d
    ld a, [hl+]
    ld [$c264], a
    ld a, [hl]
    ld [$c265], a

Call_002_418a:
jr_002_418a:
    ld hl, $c267
    inc [hl]
    ld c, $00
    ld a, [$cf2e]
    cp $03
    jr nz, jr_002_419c

    ld a, [$cf29]
    inc a
    ld c, a

jr_002_419c:
    ld b, [hl]
    ld de, NEXT_LINE
    ld a, $03
    ld hl, copy_next_line_to_ram
    call switch_bank_and_call
    ld a, $ff
    ld [$c269], a
    ld a, $09
    jp Jump_000_07ce


    ld [$4007], sp
    ld b, $dc
    dec b
    ld a, b
    dec b
    inc d
    dec b
    or b
    inc b
    ld c, h
    inc b
    add sp, $03
    add h
    inc bc
    add h
    inc bc
    jr nz, @+$05

    jr nz, @+$05

    jr nz, jr_002_41cf

    jr nz, jr_002_41d1

    cp h

jr_002_41cf:
    ld [bc], a
    cp h

jr_002_41d1:
    ld [bc], a
    cp h
    ld [bc], a
    cp h
    ld [bc], a
    cp h
    ld [bc], a
    cp h
    ld [bc], a
    cp h
    ld [bc], a
    cp h
    ld [bc], a
    ld e, b
    ld [bc], a
    ld e, b
    ld [bc], a
    ld e, b
    ld [bc], a
    ld e, b
    ld [bc], a
    ld e, b
    ld [bc], a
    ld e, b
    ld [bc], a
    ld e, b
    ld [bc], a
    ld e, b
    ld [bc], a
    db $f4
    ld bc, $01f4
    db $f4
    ld bc, $01f4
    db $f4
    ld bc, $01f4
    db $f4
    ld bc, $01f4
    sub b
    ld bc, $0190
    sub b
    ld bc, $0190
    inc l
    ld bc, $012c
    inc l
    ld bc, $012c
    ld a, [$fa00]
    nop
    ld a, [$fa00]
    nop
    ld a, [$fa00]
    nop
    ld a, [$fa00]
    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    or h
    nop
    or h
    nop
    or h
    nop
    or h
    nop
    or h
    nop
    or h
    nop
    or h
    nop
    or h
    nop
    sub [hl]
    nop
    sub [hl]
    nop
    sub [hl]
    nop
    sub [hl]
    nop
    sub [hl]
    nop
    sub [hl]
    nop
    sub [hl]
    nop
    sub [hl]
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    ld l, [hl]
    nop
    ld l, [hl]
    nop
    ld l, [hl]
    nop
    ld l, [hl]
    nop
    ld l, [hl]
    nop
    ld l, [hl]
    nop
    ld l, [hl]
    nop
    ld l, [hl]
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld e, d
    nop
    ld e, d
    nop
    ld e, d
    nop
    ld e, d
    nop
    ld e, d
    nop
    ld e, d
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    inc a
    nop

Call_002_42b4:
    xor a
    ld [$c269], a
    ld [$c265], a
    ld [$c266], a
    inc a
    ld [$c264], a
    ld a, [$c252]
    and $0f
    ld [$c267], a
    ret


Call_002_42cb:
    ld a, [$c269]
    and a
    ret z

    ld a, [$c26e]
    ld b, a
    ldh a, [$bc]
    or b
    ld b, a
    ldh a, [$ba]
    or b
    ret nz

    ld a, [$c269]
    srl a
    jp nc, Jump_002_440e

    ld a, $fe
    ld [$c269], a
    ld hl, $c47e
    ld de, $c486
    ld b, $80

jr_002_42f1:
    ld a, [hl-]
    ld [de], a
    dec de
    dec b
    jr nz, jr_002_42f1

    ld de, $c400
    ld hl, NEXT_LINE
    ld b, $07

jr_002_42ff:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_42ff

    ldh a, [$b6]
    ld b, a
    ldh a, [$b7]
    cp b
    call nz, Call_002_4466
    ld c, $12
    ld hl, $c8ae
    ld de, $c8ce

jr_002_4316:
    ld b, $0f

jr_002_4318:
    ld a, [hl-]
    ld [de], a
    dec de
    dec b
    jr nz, jr_002_4318

    dec hl
    dec de
    dec c
    jr nz, jr_002_4316

    ld de, $c400
    ld hl, $c790
    ld bc, $c7a0
    ld a, [de]
    inc de
    dec a
    add a
    add a
    add $dc
    ld [hl+], a
    inc a
    inc a
    ld [hl+], a
    dec a
    ld [bc], a
    inc bc
    inc a
    inc a
    ld [bc], a
    inc bc
    jr jr_002_4347

    xor a
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc

jr_002_4347:
    ld a, [de]
    inc de
    dec a
    add a
    add a
    add $dc
    ld [hl+], a
    inc a
    inc a
    ld [hl+], a
    dec a
    ld [bc], a
    inc bc
    inc a
    inc a
    ld [bc], a
    inc bc
    jr jr_002_4362

    xor a
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc

jr_002_4362:
    ld a, [de]
    inc de
    dec a
    add a
    add a
    add $dc
    ld [hl+], a
    inc a
    inc a
    ld [hl+], a
    dec a
    ld [bc], a
    inc bc
    inc a
    inc a
    ld [bc], a
    inc bc
    jr jr_002_437d

    xor a
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc

jr_002_437d:
    ld a, [de]
    inc de
    dec a
    add a
    add a
    add $dc
    ld [hl+], a
    inc a
    inc a
    ld [hl+], a
    dec a
    ld [bc], a
    inc bc
    inc a
    inc a
    ld [bc], a
    inc bc
    jr jr_002_4398

    xor a
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc

jr_002_4398:
    ld a, [de]
    inc de
    dec a
    add a
    add a
    add $dc
    ld [hl+], a
    inc a
    inc a
    ld [hl+], a
    dec a
    ld [bc], a
    inc bc
    inc a
    inc a
    ld [bc], a
    inc bc
    jr jr_002_43b3

    xor a
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc

jr_002_43b3:
    ld a, [de]
    inc de
    dec a
    add a
    add a
    add $dc
    ld [hl+], a
    inc a
    inc a
    ld [hl+], a
    dec a
    ld [bc], a
    inc bc
    inc a
    inc a
    ld [bc], a
    inc bc
    jr jr_002_43ce

    xor a
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc

jr_002_43ce:
    ld a, [de]
    inc de
    dec a
    add a
    add a
    add $dc
    ld [hl+], a
    inc a
    inc a
    ld [hl+], a
    dec a
    ld [bc], a
    inc bc
    inc a
    inc a
    ld [bc], a
    inc bc
    jr jr_002_43e9

    xor a
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc

jr_002_43e9:
    ld a, [$c27a]
    dec a
    and $0f
    ld [$c27a], a
    swap a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld hl, $9800
    add hl, de
    ld a, l
    ldh [$b1], a
    ld a, h
    ldh [$b2], a
    ld hl, $ffbe
    dec [hl]
    ret


Jump_002_440e:
    ld a, [$cf0b]
    sub $02
    ld [$cf0b], a
    and $0f
    ret nz

    xor a
    ld [$c269], a
    ret


    ld [bc], a
    ld [bc], a
    call c, $ddde
    rst $18
    nop
    nop
    ld [bc], a
    ld [bc], a
    ldh [$e2], a
    pop hl
    db $e3
    nop
    nop
    ld [bc], a
    ld [bc], a
    db $e4
    and $e5
    rst $20
    nop
    nop
    ld [bc], a
    ld [bc], a
    add sp, -$16
    jp hl


    db $eb
    nop
    nop
    ld [bc], a
    ld [bc], a
    db $ec
    xor $ed
    rst $28
    nop
    nop
    ld [bc], a
    ld [bc], a
    ldh a, [$f2]
    pop af
    di
    nop
    nop
    ld [bc], a
    ld [bc], a
    db $f4
    or $f5
    rst $30
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld hl, sp-$06
    ld sp, hl
    ei
    nop
    nop
    ld [bc], a
    ld [bc], a
    db $fc
    cp $fd
    rst $38
    nop
    nop

Call_002_4466:
    ld l, a
    ld h, $c9

jr_002_4469:
    ld a, [hl]
    add $08
    ld [hl+], a
    ld a, l
    cp b
    jr nz, jr_002_4469

    ret


    ld a, [$c26c]
    and a
    ret z

    ld hl, $c26c
    dec [hl]
    srl a
    ret nc

    and $03
    jr nz, jr_002_4495

    ld hl, $c12e
    ld a, $10
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, $12
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, $14
    ld [hl], a
    ret


jr_002_4495:
    ld hl, $c12e
    ld a, $16
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, $18
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, $1a
    ld [hl], a
    ret


Call_002_44a8:
    ld hl, $44b7
    ld de, $c12c
    ld b, $0c

jr_002_44b0:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_44b0

    ret


    nop
    add b
    stop
    nop
    adc b
    ld [de], a
    nop
    nop
    sub b
    inc d
    nop
    nop

jr_002_44c4:
    add b
    ld d, $00
    nop
    adc b
    jr jr_002_44cb

jr_002_44cb:
    nop

jr_002_44cc:
    sub b
    ld a, [de]
    nop
    nop
    ldh [$a0], a
    and b
    and b
    and b
    and b
    ldh [rP1], a
    ld b, b
    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ldh [rP1], a
    ldh [rNR41], a
    jr nz, jr_002_44c4

    add b
    add b
    ldh [rP1], a
    ldh [rNR41], a
    jr nz, jr_002_44cc

    jr nz, jr_002_450e

    ldh [rP1], a
    and b
    and b
    and b
    ldh [rNR41], a
    jr nz, @+$22

    nop
    ldh [$80], a
    add b
    ldh [rNR41], a
    jr nz, @-$1e

jr_002_44ff:
    nop
    ldh [$80], a
    add b
    ldh [$a0], a
    and b
    ldh [rP1], a
    ldh [rNR41], a
    jr nz, jr_002_452c

    jr nz, jr_002_452e

jr_002_450e:
    jr nz, jr_002_4510

jr_002_4510:
    ldh [$a0], a
    and b
    ldh [$a0], a
    and b
    ldh [rP1], a
    ldh [$a0], a
    and b
    ldh [rNR41], a
    jr nz, jr_002_44ff

    nop
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $00
    inc b
    inc c
    inc b
    inc b

jr_002_452c:
    inc b
    inc b

jr_002_452e:
    ld c, $00
    ld c, $02
    ld [bc], a
    ld c, $08
    ld [$000e], sp
    ld c, $02
    ld [bc], a
    ld c, $02
    ld [bc], a
    ld c, $00
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $02
    ld [bc], a
    ld [bc], a
    nop
    ld c, $08
    ld [$020e], sp
    ld [bc], a
    ld c, $00
    ld c, $08
    ld [$0a0e], sp
    ld a, [bc]
    ld c, $00
    ld c, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld c, $0a
    ld a, [bc]
    ld c, $0a
    ld a, [bc]
    ld c, $00
    ld c, $0a
    ld a, [bc]
    ld c, $02
    ld [bc], a
    ld c, $21
    nop
    rlc [hl]
    nop
    xor a

jr_002_4575:
    ld [hl+], a
    dec b
    jr nz, jr_002_4575

jr_002_4579:
    ld [hl+], a
    dec b
    jr nz, jr_002_4579

jr_002_457d:
    ld [hl+], a
    dec b
    jr nz, jr_002_457d

jr_002_4581:
    ld [hl+], a
    dec b
    jr nz, jr_002_4581

    ret


    ld [bc], a
    ld [bc], a
    inc hl
    inc h
    dec h
    ld h, $00
    nop
    ld [bc], a
    ld [bc], a
    daa
    jr z, jr_002_45bc

    ld a, [hl+]
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec hl
    inc l
    dec l
    ld l, $00
    nop
    ld [bc], a
    ld [bc], a
    daa
    jr z, jr_002_45cc

    ld a, [hl+]
    nop
    nop
    ld [bc], a
    ld [bc], a
    cpl
    jr nc, jr_002_45dc

    ld [hl-], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    ld [bc], a
    ld [bc], a
    scf
    jr c, jr_002_45f4

    ld a, [hl-]

jr_002_45bc:
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    ld [bc], a
    ld [bc], a
    call nz, $c5c6
    rst $00

jr_002_45cc:
    nop
    nop
    ld [bc], a
    ld [bc], a
    ret z

    jp z, $cbc9

    nop
    nop
    ld [bc], a
    ld [bc], a
    call z, $cdce
    rst $08

jr_002_45dc:
    nop
    nop
    ld [bc], a
    ld [bc], a
    ret z

    jp z, $cbc9

    nop
    nop
    ld [bc], a
    ld [bc], a
    ret nc

    jp nc, $d3d1

    nop
    nop
    ld [bc], a
    ld [bc], a
    call nc, $d5d6
    rst $10

jr_002_45f4:
    nop
    nop
    ld [bc], a
    ld [bc], a
    ret c

    jp c, $dbd9

    nop
    nop
    ld [bc], a
    ld [bc], a
    call nc, $d5d6
    rst $10
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ccf
    ld b, b
    jr nz, jr_002_466f

    jr nz, jr_002_466a

    jr nz, jr_002_466d

    jr nz, jr_002_466f

    jr nz, jr_002_4670

    jr nz, jr_002_4673

    jr nz, jr_002_4675

    jr nz, jr_002_4676

    jr nz, jr_002_467f

    ccf
    ld b, b
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fc
    ld [bc], a
    inc b
    ld a, [$1a04]
    inc b
    ld a, [$fa04]
    inc b
    ld a, [de]
    inc b
    ld a, [$fa04]
    inc b
    ld a, [de]
    inc b
    ld a, [$02fc]
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld b, b
    ccf
    ld b, b
    jr nz, jr_002_4698

    jr nz, jr_002_4699

    jr nz, @+$48

    jr nz, jr_002_469e

    jr nz, jr_002_469f

    jr nz, jr_002_46a1

    jr nz, jr_002_46a3

    jr nz, jr_002_469f

    jr nz, jr_002_46a1

    ccf
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_466a:
    cp $00
    ld [bc], a

jr_002_466d:
    db $fc
    ld [bc], a

jr_002_466f:
    inc b

jr_002_4670:
    ld [c], a
    inc b
    ld [hl-], a

jr_002_4673:
    inc b
    ld [hl-], a

jr_002_4675:
    inc b

jr_002_4676:
    ld [c], a
    inc b
    jp nz, Jump_002_6204

    inc b
    ld [hl-], a
    inc b
    ld [bc], a

jr_002_467f:
    inc b
    ld [bc], a
    db $fc
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0407], sp
    jr jr_002_469f

    ld hl, $2340
    jr nz, jr_002_46d5

    nop
    ld b, c
    nop
    ld b, c

jr_002_4698:
    nop

jr_002_4699:
    ld b, c
    jr nz, jr_002_46dd

    ld b, b
    inc hl

jr_002_469e:
    db $10

jr_002_469f:
    jr nz, jr_002_46a5

jr_002_46a1:
    jr jr_002_46ab

jr_002_46a3:
    rlca
    nop

jr_002_46a5:
    nop
    nop
    nop
    nop
    nop
    db $10

jr_002_46ab:
    ldh [rNR41], a
    jr jr_002_46b7

    add h
    ld [bc], a
    add h
    inc b
    add d
    nop
    add d
    nop

jr_002_46b7:
    add d
    nop
    add d
    inc b
    add d
    ld [bc], a
    call nz, $0408
    jr nz, jr_002_46da

    db $10
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    ld [$0707], sp
    jr @+$11

    scf
    ld e, a
    ld h, $3f
    ld b, [hl]
    ccf

jr_002_46d5:
    ld b, [hl]
    ccf
    ld b, a
    ccf
    ld b, b

jr_002_46da:
    ccf
    ld b, b
    ld e, a

jr_002_46dd:
    jr nz, @+$11

jr_002_46df:
    scf
    rlca
    jr jr_002_46eb

    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    db $10

jr_002_46eb:
    ldh [$e0], a
    jr jr_002_46df

    db $ec
    ld a, [$fc04]
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [c], a
    db $fc
    ld h, d
    db $fc
    ld h, d
    ld a, [$f064]
    db $ec
    ldh [rNR23], a
    db $10
    ldh [rP1], a
    nop
    nop
    nop
    rlca
    nop
    jr jr_002_4713

jr_002_470c:
    jr nz, jr_002_472d

    ld b, b
    dec sp
    ld b, b
    inc sp
    add b

jr_002_4713:
    ld a, e
    add b
    ld a, e
    add b
    ld a, e
    add b
    ld a, e
    add b
    ld a, e
    ld b, b
    dec sp
    ld b, b
    ld sp, $1f20
    jr @+$09

    rlca
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_002_470c

    inc b

jr_002_472d:
    ld hl, sp+$02
    inc c
    ld [bc], a
    ld l, h
    ld bc, $016e
    ld l, [hl]
    ld bc, $016e
    ld l, [hl]
    ld bc, $026e
    ld l, h
    ld [bc], a
    inc c
    inc b
    ld hl, sp+$18
    ldh [$e0], a
    nop
    nop
    nop
    rrca
    rlca
    jr jr_002_4764

    jr nc, jr_002_476e

    ld l, [hl]
    ld c, [hl]
    ret z

    ld c, b
    adc b
    adc b
    adc b
    adc b
    adc [hl]
    adc [hl]
    add d
    add d
    add d
    add d
    jp nz, Jump_002_6e42

    ld c, [hl]
    jr nc, jr_002_4782

    jr jr_002_477c

jr_002_4764:
    rrca
    rlca
    nop
    nop
    ldh a, [$e0]
    jr jr_002_4784

    inc c
    inc b

jr_002_476e:
    or $f2
    sub e
    sub d
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c
    sub c

jr_002_477c:
    sub e
    sub d
    or $f2
    inc c
    inc b

jr_002_4782:
    jr jr_002_479c

jr_002_4784:
    ldh a, [$e0]
    nop
    nop
    rrca
    rlca
    rra
    jr jr_002_47cc

    jr nz, jr_002_480e

    ld c, e
    cp $5a
    cp $8a
    cp $8a
    cp $8a
    cp $8a
    cp $8a

jr_002_479c:
    cp $4a
    ld a, a
    ld c, e
    ccf
    jr nz, jr_002_47c2

    jr jr_002_47b4

    rlca
    nop
    nop
    ldh a, [$e0]
    ld hl, sp+$18
    db $fc
    inc b
    cp $ba
    rst $28
    xor d
    rst $28
    xor c

jr_002_47b4:
    rst $28
    xor c
    rst $28
    xor c
    rst $28
    xor c
    rst $28
    xor c
    rst $28
    xor d
    cp $ba
    db $fc
    inc b

jr_002_47c2:
    ld hl, sp+$18
    ldh a, [$e0]
    nop
    nop
    rrca
    rlca
    rrca
    rra

jr_002_47cc:
    ccf
    ccf
    ld [hl+], a
    ld h, d
    xor $6e
    xor $ee
    xor $ee
    ld [c], a
    ld [c], a
    ld a, [$fafa]
    ld a, [$7afa]
    ld [hl+], a
    ld h, d
    ccf
    ccf
    rrca
    rra
    rrca
    rlca
    nop
    nop
    ldh a, [$e0]
    ldh a, [$f8]
    db $fc
    db $fc
    jr nz, jr_002_4812

    xor e
    xor d
    xor e
    xor e
    xor e

jr_002_47f5:
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor d
    jr nz, jr_002_4822

    db $fc
    db $fc
    ldh a, [$f8]
    ldh a, [$e0]
    jp Jump_000_003c


    add b
    nop
    add b
    nop
    add b

jr_002_480e:
    nop
    add b
    add b
    nop

jr_002_4812:
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    nop
    add b
    nop
    nop
    add b

jr_002_4822:
    nop
    add b
    jr nc, jr_002_47f5

    inc c
    di
    nop
    ld bc, $0100
    ld bc, $0100
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0100
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    jp $303c


    rst $08
    nop
    add b
    nop
    add b
    add b
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    jp $c33c


    inc a
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0100
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0100
    nop
    nop

Call_002_4881:
    ld bc, $0100
    inc c
    di
    inc c
    di
    add b
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    add b

jr_002_4895:
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    nop
    add b
    nop
    inc c
    di
    jr nc, @-$2f

    ld bc, $0100
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0100
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0100
    nop
    jr nc, jr_002_4895

    ldh a, [rOBP0]
    ld d, $49
    inc a
    ld c, c
    ld h, d
    ld c, c
    adc b
    ld c, c
    xor [hl]
    ld c, c
    call nc, $fa49
    ld c, c
    jr nz, jr_002_4922

    ld b, [hl]
    ld c, d
    ld l, h
    ld c, d
    sub d
    ld c, d
    cp b
    ld c, d
    sbc $4a
    inc b
    ld c, e
    ld a, [hl+]
    ld c, e
    ld d, b
    ld c, e
    db $76
    ld c, e
    sbc h
    ld c, e

Call_002_48ec:
    jp nz, $e84b

    ld c, e
    add d
    jp c, $ad82

    add d
    xor c
    add d
    rst $20
    add d
    ret z

    add d
    pop af
    add d
    cp [hl]
    add c
    ld b, l
    add c
    ld b, l
    add c
    ld b, l
    inc bc
    add d
    ld [c], a
    add d
    cp [hl]
    add d
    ret z

    add d
    sbc a
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    ld [bc], a
    add d
    ret


    add d
    pop hl
    add d
    call $cd82
    add c
    ld b, b
    add c
    ld b, b

jr_002_4922:
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
    add d
    or l
    add d
    and b
    add d
    db $ed
    add d
    cp c
    add c
    ld e, e
    add c
    ld b, b
    ld [bc], a
    add e
    ld c, c
    add e
    adc c
    add e
    ld h, d
    add c
    ld e, e
    add c
    ld b, b
    add d
    and d
    add d
    xor l
    add d
    cp h
    add c
    ld e, e
    add c
    ld b, b
    inc bc
    add d
    rst $00
    add e
    ld d, d
    add e
    sub e
    add e
    ld d, a
    add e
    add a
    add c
    ld e, e
    add c
    ld b, b
    add c
    ld b, b
    ld [bc], a
    add d
    cp l
    add d
    cp l
    add d
    xor c
    add d
    and h
    add d
    call z, $cd82
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    inc bc
    add d
    xor e
    add d
    rst $20
    add d
    and d
    add d
    push bc
    add d
    or a
    add d
    xor a
    add d
    ld [$c782], a
    ld [bc], a
    add d
    db $ed
    add d
    cp l
    add d
    or l
    add d
    add $81
    ld b, b
    add d
    or l
    add d
    push hl
    add d
    and h
    add d
    call nc, Call_002_4881
    inc bc
    add d
    or a
    add d
    or [hl]
    add d
    xor d
    add d
    xor e
    add d
    rst $00
    add d
    xor b
    add d
    add sp, -$7e
    rlc d
    add d
    and $82
    pop bc
    add d
    or l
    add d
    pop hl
    add c
    ld b, b
    add d
    and d
    add d
    xor e
    add d
    call c, $c182
    add d
    xor c
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
    ld b, b
    add c
    ld b, b
    ld [bc], a
    add e
    ld a, d
    add e
    ld a, d
    add e
    ld a, d
    add c
    ld b, c
    add d
    xor c
    add d
    db $ed
    add d
    and d
    add d
    xor d
    add d
    pop bc
    add d
    call nz, $8203
    and b
    add c
    ld b, l
    add d
    or b
    add c
    ld b, l
    add d
    jp hl


    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    ld [bc], a
    add e
    ld c, d
    add e
    ld a, [hl]
    add d
    or e
    add d
    call c, Call_002_4081
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
    add d
    and b
    add d
    add sp, -$7e
    xor d
    add d
    add $81
    ld e, e
    add c
    ld b, b
    add c
    ld b, b
    ld [bc], a
    add e
    adc e
    add e
    adc e
    add c
    ld e, e
    add e
    adc c
    add d
    cp a
    add d
    pop hl
    add d
    pop af
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
    add d
    jp nz, $a882

    add c
    ld e, e
    add d
    and d
    ld [bc], a
    add d
    ld d, c
    add d
    ld d, e
    add e
    ld d, a
    add e
    ld c, d
    add e
    sub e
    add d
    db $eb
    add d
    and h
    add d
    rst $00
    add d
    and h
    add d
    ldh a, [$03]
    add d
    ret z

    add d
    rst $18
    add d
    jp hl


    add d
    ret z

    add d
    and $81
    ld c, c
    add c
    ld b, b
    add c
    ld b, b
    ld [bc], a
    add d
    xor c
    add d
    pop bc
    add d
    call nz, Call_002_4081
    add d
    or l
    add d
    call c, $a282
    add d
    call c, $b582
    add d
    cp l
    inc bc
    add d
    xor c
    add d
    pop af
    add d
    or b
    add d
    xor e
    add d
    push bc
    add d
    or a
    add c
    ld b, b
    add c
    ld b, b
    ld [bc], a
    add d
    db $ed
    add d
    cp l
    add d
    or l
    add d
    call Call_002_6583
    add e
    sub e
    add e
    ld d, h
    add e
    ld b, e
    add d
    and $81
    ld c, c
    inc bc
    add d
    xor c
    add d
    pop af
    add d
    ret c

    add d
    xor e
    add d
    res 0, c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    ld [bc], a
    add d
    db $dd
    add d
    or e
    add d
    rst $20
    add d
    cp c
    add d
    and d
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
    add d
    xor b
    add d
    ld [$c982], a
    add e
    ld a, d
    add e
    adc h
    add d
    jp hl


    add d
    ret z

    add d
    and $02
    add d
    and h
    add d
    jp nz, $ad82

    add d
    or l
    add d
    and d
    add d
    ldh [$82], a
    call z, $aa82
    add c
    ld b, b
    add c
    ld b, b
    inc bc
    add d
    xor c
    add d
    jp nz, $cc82

    add d
    and $81
    ld c, c
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    ld [bc], a
    add d
    db $ed
    add d
    rst $20
    add d
    pop bc
    add d
    call nz, Call_002_4081
    add d
    and d
    add d
    and d
    add d
    and $81
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
    ld b, b
    add c
    ld b, b
    ld [bc], a
    add e
    ld b, l
    add e
    adc c
    add e
    ld a, [hl]
    add d
    ret


    add d
    pop bc
    add d
    xor e
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
    add d
    jp nz, $af82

    add d
    cp a
    add d
    pop hl
    add d
    and h
    add d
    cp h
    add c
    ld c, c
    ld [bc], a
    add d
    cp a
    add d
    xor l
    add d
    or l
    add d
    push hl
    add c
    ld e, e
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
    add d
    cp a
    add d
    xor l
    add d
    or l
    add d
    push hl
    add c
    ld e, e
    add c
    ld c, c
    ld [bc], a
    add d
    ldh [$82], a
    and h
    add c
    ld b, c
    add d
    xor b
    add e
    ld c, d
    add e
    ld l, h
    add d
    ret z

    add d
    and d
    add d
    push bc
    add d
    or a
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
    ld b, b
    add c
    ld b, b
    ld [bc], a
    add d
    db $ed
    add d
    cp l
    add d
    or l
    add d
    pop bc
    add d
    call nz, Call_002_4081
    add c
    ld b, l
    add c
    ld b, l
    add c
    ld b, l
    add c
    ld b, b
    inc bc
    add d
    and b
    add d
    cp l
    add d
    call c, $ed82
    add d
    jp hl


    add d
    and d
    add d
    call z, Call_002_4881
    ld [bc], a
    add d
    or l
    add d
    pop af
    add d
    or [hl]
    add d
    rst $20
    add d
    ld [$d682], a
    add d
    pop af
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    inc bc
    add d
    call c, $af82
    add d
    cp l
    add d
    pop af
    add d
    xor c
    add d
    sbc a
    add c
    ld e, e
    add c
    ld c, c
    ld [bc], a
    add d
    ld [c], a
    add d
    pop bc
    add d
    cp l
    add d
    db $ed
    add d
    res 0, c
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
    add d
    db $e4
    add d
    jp hl


    add d
    cp c
    add d
    ret z

    add d
    and d
    add d
    db $ed
    add c
    ld b, l
    add c
    ld b, l
    ld [bc], a
    ld a, $e4
    ld [$cf1b], a
    ld [$cf1c], a
    ld [$cf1d], a
    di
    call Call_000_04e1
    call Call_002_51d8
    call $4008
    call Call_002_4013
    call $456f
    call $604a
    xor a
    ld [$c8f2], a
    ld [$cf0b], a
    ld [$cf0c], a
    ld [$cf24], a
    ld [$cf25], a
    ld [$cf26], a
    ld [$c2bb], a
    ld [$c2bc], a
    ld [$c2bd], a
    ld [$c2be], a
    ld [$c2a3], a
    ldh [$b6], a
    ldh [$b7], a
    ldh [$b8], a
    ldh [$b9], a
    ldh [$ba], a
    ldh [$bb], a
    ldh [$bc], a
    ld hl, $c25a

jr_002_4c5f:
    xor a
    ld [hl+], a
    ld a, l
    and a
    jr nz, jr_002_4c5f

    ld hl, $c2d0
    xor a
    ld [$c2cd], a
    ld [$c2ce], a
    ld [$c2cf], a
    ld b, $40

jr_002_4c74:
    ld [hl+], a
    dec b
    jr nz, jr_002_4c74

    ld a, $02
    ld [$c27b], a
    ld [$c27c], a
    ld [$c281], a
    ld [$c282], a
    ld a, $05
    ld [$c287], a
    ld a, $01
    ld [$c288], a
    ld a, $18
    ld [$c28b], a
    ld a, $30
    ld [$c8f0], a
    call Call_002_44a8
    call Call_002_4e31
    call Call_002_42b4
    call Call_002_5578
    ld a, [$cf2b]
    ld hl, $4000
    call Call_000_065e
    ld a, [hl]
    call Call_000_063d
    ret


    ld hl, $9c00
    ld bc, $0400

jr_002_4cba:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_002_4cba

    ret


    ld b, $03

jr_002_4cc4:
    push bc
    call Call_000_0369
    call Call_000_047e
    call Call_002_42cb
    call Call_002_4dfe
    call Call_002_5578
    call $5590
    call Call_002_5527
    pop bc
    ld a, [$c269]
    and a
    jr nz, jr_002_4cc4

    push bc
    call Call_002_418a
    pop bc
    dec b
    jr nz, jr_002_4cc4

    ret


    ld a, $f0
    ld [$c12c], a
    ld [$c130], a
    ld [$c134], a
    ld hl, $4dc7
    ld de, $9c21
    ld a, $02
    call Call_000_0750
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
    ld a, [$c2be]
    and a
    jr z, jr_002_4d3e

    ld a, $99
    ld [$c2bb], a
    ld [$c2bc], a
    ld [$c2bd], a

jr_002_4d3e:
    ld c, $00
    ld a, [$c2bd]
    and $f0
    and a
    jr z, jr_002_4d5c

    swap a
    add $19
    ld [$c2aa], a
    ld hl, $c2aa
    ld de, $9c60
    ld a, $01
    call Call_000_0750
    ld c, $ff

jr_002_4d5c:
    ld hl, $c2bd
    ld e, $00
    ld b, $00
    ld a, [hl]
    and $0f
    jr z, jr_002_4d6c

    add $19
    ld b, a
    dec c

jr_002_4d6c:
    ld a, b
    ld [$c2aa], a
    dec hl
    ld b, e
    ld a, [hl]
    bit 7, c
    jr nz, jr_002_4d7b

    and $f0
    jr z, jr_002_4d84

jr_002_4d7b:
    ld a, [hl]
    swap a
    and $0f
    add $19
    ld b, a
    dec c

jr_002_4d84:
    ld a, b
    ld [$c2ab], a
    ld b, e
    ld a, [hl]
    bit 7, c
    jr nz, jr_002_4d92

    and $0f
    jr z, jr_002_4d98

jr_002_4d92:
    and $0f
    add $19
    ld b, a
    dec c

jr_002_4d98:
    ld a, b
    ld [$c2ac], a
    dec hl
    ld b, e
    ld a, [hl]
    bit 7, c
    jr nz, jr_002_4da7

    and $f0
    jr z, jr_002_4daf

jr_002_4da7:
    ld a, [hl]
    swap a
    and $0f
    add $19
    ld b, a

jr_002_4daf:
    ld a, b
    ld [$c2ad], a
    ld a, [hl]
    and $0f
    add $19
    ld [$c2ae], a
    ld hl, $c2aa
    ld de, $9c61
    ld a, $05
    call Call_000_0750
    ret


    ld e, b
    ld e, c
    ldh a, [$8b]
    and $30
    jr z, jr_002_4df3

    ld [$c8f3], a

jr_002_4dd2:
    and $20
    jr nz, jr_002_4de5

    ld a, [$c8f0]
    add $02
    cp $60
    jr c, jr_002_4de1

    ld a, $60

jr_002_4de1:
    ld [$c8f0], a
    ret


jr_002_4de5:
    ld a, [$c8f0]
    sub $02
    cp $f8
    jr c, jr_002_4def

    xor a

jr_002_4def:
    ld [$c8f0], a
    ret


jr_002_4df3:
    ld a, [$c8f0]
    and $0f
    ret z

    ld a, [$c8f3]
    jr jr_002_4dd2

Call_002_4dfe:
    ld a, [$c279]
    and a
    call nz, Call_002_4ec2
    ld a, [$c271]
    and a
    jr nz, jr_002_4e29

    ld hl, $c430
    ld b, $07
    xor a

jr_002_4e11:
    or [hl]
    inc hl
    dec b
    jr nz, jr_002_4e11

    and a
    jr z, jr_002_4e21

    call Call_002_4e66
    ld hl, $c8f2
    inc [hl]
    ret


jr_002_4e21:
    call Call_002_4e3f
    ld hl, $c8f2
    inc [hl]
    ret


jr_002_4e29:
    call Call_002_4e8d
    ld hl, $c8f2
    inc [hl]
    ret


Call_002_4e31:
    ld hl, $4ef4
    ld de, $c100
    ld b, $08

jr_002_4e39:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_4e39

Call_002_4e3f:
    ld a, [$c8f0]
    ld [$c101], a
    add $08
    ld [$c105], a
    ld a, [$c8f2]
    srl a
    srl a
    srl a
    and $06
    add $fc
    ld l, a
    ld a, $4e
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$c102], a
    ld a, [hl]
    ld [$c106], a
    ret


Call_002_4e66:
    ld a, [$c8f0]
    ld [$c101], a
    add $08
    ld [$c105], a
    ld a, [$c8f2]
    srl a
    srl a
    srl a
    and $06
    add $04
    ld l, a
    ld a, $4f
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$c102], a
    ld a, [hl]
    ld [$c106], a
    ret


Call_002_4e8d:
    ld a, [$c8f0]
    ld [$c101], a
    add $08
    ld [$c105], a
    ld a, [$c271]
    dec a
    add a
    add $14
    ld l, a
    ld a, $4f
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c8f2]
    srl a
    srl a
    srl a
    and $06
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$c102], a
    ld a, [hl]
    ld [$c106], a
    ret


Call_002_4ec2:
    pop hl
    ld a, [$c8f0]
    ld [$c101], a
    add $08
    ld [$c105], a
    ld a, [$c8f2]
    srl a
    srl a
    and $06
    add $0c
    ld l, a
    ld a, $4f
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$c102], a
    ld a, [hl]
    ld [$c106], a
    ld hl, $c8f2
    inc [hl]
    ld a, [hl]
    cp $20
    ret nz

    xor a
    ld [$c279], a
    ret


    add b
    nop
    nop
    nop
    add b
    ld [$0002], sp
    ld a, h
    ld a, [hl]
    add b
    add d
    add h
    add [hl]
    add b
    add d
    adc b
    adc d
    adc h
    adc [hl]
    sub b
    sub d
    adc h
    adc [hl]
    sub h
    sub [hl]
    sbc b
    sbc d
    sbc h
    sbc [hl]
    sbc b
    sbc d
    ld h, $4f
    ld l, $4f
    ld [hl], $4f
    ld a, $4f
    ld b, [hl]
    ld c, a
    ld c, [hl]
    ld c, a
    nop
    nop
    ld d, [hl]
    ld c, a
    ld e, [hl]
    ld c, a
    inc e
    ld e, $20
    ld [hl+], a
    inc h
    ld h, $20
    ld [hl+], a
    jr z, jr_002_4f5a

    inc l
    ld l, $30
    ld [hl-], a
    inc l
    ld l, $34
    ld [hl], $38
    ld a, [hl-]
    inc a
    ld a, $38
    ld a, [hl-]
    ld b, b
    ld b, d
    ld b, h
    ld b, [hl]
    ld c, b
    ld c, d
    ld b, h
    ld b, [hl]
    ld c, h
    ld c, [hl]
    ld d, b
    ld d, d
    ld d, h
    ld d, [hl]
    ld d, b
    ld d, d
    ld e, b
    ld e, d
    ld e, h
    ld e, [hl]
    ld h, b
    ld h, d
    ld e, h
    ld e, [hl]
    ld h, h
    ld h, [hl]
    ld l, b
    ld l, d

jr_002_4f5a:
    ld l, h
    ld l, [hl]
    ld l, b
    ld l, d
    ld [hl], b
    ld [hl], d
    ld [hl], h
    db $76
    ld a, b
    ld a, d
    ld [hl], h
    db $76
    ld a, [$c26d]
    ld b, a
    ld a, [$c26e]
    or b
    ld b, a
    ld a, [$c28f]
    or b
    ld b, a
    ld a, [$c290]
    or b
    ret nz

    ldh a, [$bb]
    and a
    ret nz

    xor a
    ldh [$a2], a
    ld a, [$c8f0]
    add $07
    and $f0
    ldh [$a5], a
    srl a
    srl a
    srl a
    ldh [$9f], a
    ld c, a
    ldh a, [$ba]
    and a
    call nz, Call_002_51c2
    ld a, c
    add $43
    ld l, a
    ld a, $57
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call jump_to_hl
    ret z

    cp $07
    ret z

    cp $80
    ret nc

    ld d, a
    ldh a, [$bc]
    and a
    jr z, jr_002_4fc7

    ld a, d
    cp $08
    jr c, jr_002_4fc7

    ld a, b
    add a
    add a
    add a
    srl c
    add c
    ld l, a
    ld h, $c5
    ld a, [hl]
    cp $80
    ret nc

jr_002_4fc7:
    ld a, [$c271]
    and a
    jr z, jr_002_4fd4

    cp d
    ret nz

    ld a, [$c272]
    ldh [$a2], a

jr_002_4fd4:
    ld a, d
    ld [$c26d], a
    ld [$c271], a
    ld a, $01
    ld [$c272], a
    ld a, b
    ld [$c26f], a
    and a
    jr z, jr_002_500d

    ldh a, [$9f]
    add $ad
    ld l, a
    ld a, $00
    adc $5c
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    dec a
    add a
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $01
    ld a, [$c271]
    ld c, a
    call jump_to_hl
    ld a, d
    ld [$c272], a

jr_002_500d:
    ld a, [$c272]
    ld b, a
    ldh a, [$a2]
    add b
    cp $0f
    ret nc

    ld a, b
    ld [$c273], a
    ld a, [$c26f]
    add a
    add a
    add a
    ld e, a
    ldh a, [$9f]
    srl a
    add e
    ld l, a
    ld h, $c4
    ld a, $0c
    call Call_000_07ce

jr_002_502f:
    xor a
    ld [hl], a
    ld a, l
    ld e, l
    sub $08
    ld l, a
    dec b
    jr nz, jr_002_502f

    add $08
    ld c, a
    xor a
    ld [$c2c2], a
    ld b, $20
    ld hl, $cb00
    ld de, $000f

jr_002_5048:
    ld a, [hl+]
    and a
    jr z, jr_002_5059

    ld a, [hl]
    cp c
    jr nz, jr_002_5059

    dec hl
    ld a, [hl]
    ld [$c2c2], a
    ld [hl], $00
    jr jr_002_505d

jr_002_5059:
    add hl, de
    dec b
    jr nz, jr_002_5048

jr_002_505d:
    ld a, [$c26f]
    add a
    add a
    add a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld hl, $c790
    add hl, de
    ldh a, [$9f]
    call Call_000_065e
    ld a, [$c272]
    ld b, a

jr_002_507b:
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, l
    add $0f
    ld l, a
    ld a, h
    adc $00
    ld h, a
    xor a
    ld [hl+], a
    ld [hl], a
    ld de, $ffcf
    add hl, de
    dec b
    jr nz, jr_002_507b

    ld a, [$c272]
    ld b, a
    ld a, [$c26f]
    ld c, a
    ld a, [$c27a]
    add c
    and $0f
    ldh [$a6], a

jr_002_50a0:
    ldh a, [$a6]
    swap a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ldh a, [$9f]
    add e
    ld e, a
    ld hl, $9800
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c27b
    push bc
    ld c, $04
    call Call_000_06f5
    pop bc
    ldh a, [$a6]
    dec a
    and $0f
    ldh [$a6], a
    dec b
    jr nz, jr_002_50a0

    ld a, [$c272]
    ld b, a
    ld a, [$c26f]
    sub b
    add a
    add a
    add a
    ld l, a
    ldh a, [$9f]
    srl a
    add l
    ld l, a
    ld e, a
    ld h, $c4
    ld a, [$c2c2]
    and a
    jr z, jr_002_50eb

    add a
    jr nc, jr_002_510d

jr_002_50eb:
    bit 7, [hl]
    jr nz, jr_002_50fb

    ld a, l
    and $f8
    jr z, jr_002_515e

    ld a, l
    sub $08
    ld l, a
    ld e, a
    jr jr_002_50eb

jr_002_50fb:
    ld b, $20
    ld hl, $cb00

jr_002_5100:
    ld a, [hl+]
    and a
    ld c, a
    jr z, jr_002_5153

    ld a, [hl]
    cp e
    jr nz, jr_002_5153

    bit 7, c
    jr nz, jr_002_515e

jr_002_510d:
    ld a, [$c272]
    ld b, a
    ld a, [$c26f]
    sub b
    ld b, a
    and $07
    jr z, jr_002_515e

    ld a, [$c27a]
    add b
    and $0f
    swap a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ldh a, [$9f]
    add e
    ld e, a
    ld a, d
    add $98
    ld d, a
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    and $fb
    ld d, a
    ld hl, $c27d
    ld c, $02

jr_002_5144:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_002_5144

    ld a, $02
    call Call_000_0750
    jr jr_002_515e

jr_002_5153:
    ld a, l
    add $0f
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_002_5100

jr_002_515e:
    xor a
    ld [$c273], a
    ld a, [$c272]
    ld b, a
    ld a, [$c26f]
    inc a
    sub b
    add a
    add a
    add a
    add a
    ldh [$a4], a
    ld a, [$c271]
    dec a
    add a
    add a
    add $dc
    ldh [$a3], a
    ld a, [$c272]
    cp $08
    jr c, jr_002_5184

    ld a, $07

jr_002_5184:
    ld b, a
    ld hl, $c168
    ld de, $c16c

jr_002_518b:
    ldh a, [$a4]
    cp $90
    jr nc, jr_002_51b7

    ld [hl+], a
    ld [de], a
    add $10
    ldh [$a4], a
    inc e
    ldh a, [$a5]
    ld [hl+], a
    add $08
    ld [de], a
    inc e
    ldh a, [$a3]
    ld [hl+], a
    inc a
    inc a
    ld [de], a
    ld a, l
    add $05
    ld l, a
    ld a, e
    add $06
    ld e, a
    ld a, [$c273]
    inc a
    ld [$c273], a
    dec b
    jr nz, jr_002_518b

jr_002_51b7:
    ldh a, [$a2]
    ld b, a
    ld a, [$c272]
    add b
    ld [$c272], a
    ret


Call_002_51c2:
    ld a, c
    add $f8
    ld l, a
    ld a, $59
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call jump_to_hl
    ret z

    bit 0, a
    jr z, jr_002_51d7

    pop af

jr_002_51d7:
    ret


Call_002_51d8:
    xor a
    ld [$c16b], a
    ld [$c16f], a
    ld [$c173], a
    ld [$c177], a
    ld [$c17b], a
    ld [$c17f], a
    ld [$c183], a
    ld [$c187], a
    ld [$c18b], a
    ld [$c18f], a
    ld [$c193], a
    ld [$c197], a
    ld [$c19b], a
    ld [$c19f], a

Call_002_5203:
    ld a, $f0
    ld [$c168], a
    ld [$c16c], a
    ld [$c170], a
    ld [$c174], a
    ld [$c178], a
    ld [$c17c], a
    ld [$c180], a
    ld [$c184], a
    ld [$c188], a
    ld [$c18c], a
    ld [$c190], a
    ld [$c194], a
    ld [$c198], a
    ld [$c19c], a
    ret


    ld a, [$c273]
    ld b, a
    ld hl, $c168

jr_002_5237:
    ld a, [hl]
    add $08
    ld [hl], a
    cp $91
    jr c, jr_002_5242

    ld a, $f0
    ld [hl], a

jr_002_5242:
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    add $08
    ld [hl], a
    cp $91
    jr c, jr_002_525d

    ld a, $f0
    ld [hl], a
    ld a, [$c273]
    dec a
    ld [$c273], a
    jr nz, jr_002_525d

    ld [$c26d], a

jr_002_525d:
    inc hl
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_002_5237

    ret


    ld a, [$c26d]
    ld b, a
    ld a, [$c26e]
    or b
    ret nz

    ld a, [$c271]
    and a
    ret z

    ld a, [$c269]
    and a
    ret nz

    ld a, [$c28f]
    ld b, a
    ld a, [$c290]
    or b
    ret nz

    ld a, [$c8f0]
    add $07
    and $f0
    srl a
    srl a
    srl a
    ldh [$9f], a
    ld [$c278], a
    ld a, $ff
    ld [$c26e], a
    xor a
    ld [$c8f2], a
    dec a
    ld [$c279], a
    ld a, [$c272]
    cp $08
    jr c, jr_002_52a9

    ld a, $07

jr_002_52a9:
    ld [$c274], a
    ld a, $80
    ld [$c277], a
    xor a
    ld [$c275], a
    call Call_002_54f0
    ldh a, [$9f]
    srl a
    add $78
    ld l, a
    ld h, $c4
    ld b, $10

jr_002_52c3:
    ld a, [hl]
    and a
    jr nz, jr_002_52ce

    ld a, l
    sub $08
    ld l, a
    dec b
    jr nz, jr_002_52c3

jr_002_52ce:
    ld a, b
    ld [$c276], a
    cp $09
    jr nc, jr_002_52dd

    cp $08
    jp z, Jump_002_5356

    xor a
    ret


jr_002_52dd:
    call Call_002_54a7
    xor a
    ld [$c26e], a
    ld [$c271], a
    ld [$c274], a
    ld [$c272], a
    ld a, $02
    ldh [$bb], a
    ld a, $f0
    ld [$c168], a
    ld [$c16c], a
    ret


    ld a, [$c277]
    sub $08
    ld [$c277], a
    and $0f
    jr nz, jr_002_5311

    ld a, [$c275]
    ld b, a
    ld a, [$c274]
    cp b
    call nz, Call_002_54f0

jr_002_5311:
    ld a, [$c277]
    ld b, a
    ld a, [$c276]
    swap a
    cp b
    jr z, jr_002_5337

jr_002_531d:
    ld a, [$c275]
    ld b, a
    ld a, [$c277]
    ld hl, $c168

jr_002_5327:
    ld [hl], a
    inc l
    inc l
    inc l
    inc l
    ld [hl], a
    inc l
    inc l
    inc l
    inc l
    add $10
    dec b
    jr nz, jr_002_5327

    ret


jr_002_5337:
    srl a
    sub $08
    ld l, a
    ld a, [$c278]
    srl a
    add l
    ld e, a
    ld l, a
    ld h, $c4
    ld a, [hl]
    and a
    jr nz, jr_002_5356

    ld a, [$c276]
    and a
    jr z, jr_002_5356

    dec a
    ld [$c276], a
    jr jr_002_531d

Jump_002_5356:
jr_002_5356:
    call Call_002_54a7
    call Call_002_5203
    ld a, [$c276]
    add a
    add a
    add a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld hl, $c790
    add hl, de
    ld a, [$c278]
    ldh [$9f], a
    call Call_000_065e
    ld a, [$c271]
    dec a
    add a
    add a
    add $dc
    ld c, a
    ld [$c283], a
    inc a
    ld [$c285], a
    inc a
    ld [$c284], a
    inc a
    ld [$c286], a
    ld a, [$c272]
    ld b, a

jr_002_5395:
    ld a, c
    ld [hl+], a
    inc a
    inc a
    ld [hl], a
    ld a, l
    add $0f
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, c
    inc a
    ld [hl+], a
    inc a
    inc a
    ld [hl], a
    ld de, $ffcf
    add hl, de
    dec b
    jr nz, jr_002_5395

    ld a, [$c272]
    ld b, a
    ld a, [$c276]
    ld c, a
    ld a, [$c27a]
    add c
    and $0f
    ldh [$a6], a

jr_002_53bf:
    ldh a, [$a6]
    add a
    add a
    add a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    ldh a, [$9f]
    add e
    add $00
    ld e, a
    ld a, d
    adc $98
    ld d, a
    ld hl, $c281
    push bc
    ld c, $04
    call Call_000_06f5
    pop bc
    ldh a, [$a6]
    inc a
    and $0f
    ldh [$a6], a
    dec b
    jr nz, jr_002_53bf

    ld a, [$c276]
    and a
    jp z, Jump_002_5495

    dec a
    add a
    add a
    add a
    ld l, a
    ld a, [$c278]
    srl a
    add l
    ld l, a
    ld e, a
    ld h, $c4

jr_002_5407:
    bit 7, [hl]
    jr nz, jr_002_5418

    ld a, l
    and $f8
    jp z, Jump_002_5495

    ld a, l
    sub $08
    ld l, a
    ld e, a
    jr jr_002_5407

jr_002_5418:
    ld b, $20
    ld hl, $cb00

jr_002_541d:
    ld a, [hl+]
    and a
    ld c, a
    jr z, jr_002_548a

    ld a, [hl]
    cp e
    jr nz, jr_002_548a

    bit 7, c
    jr nz, jr_002_5495

    ld a, [$c276]
    ld b, a
    ld a, [$c272]
    add b
    ld b, a
    ld a, [$c27a]
    add b
    dec a
    and $0f
    swap a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld a, [$c278]
    add e
    ld e, a
    ld a, d
    add $98
    ld d, a
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    and $fb
    ld d, a
    ld hl, $c27d
    ld c, $02

jr_002_545f:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_002_545f

    ld a, $02
    push de
    call Call_000_0750
    pop de
    ld a, e
    add $40
    ld e, a
    ld a, d
    adc $00
    and $fb
    ld d, a
    ld hl, $c27d
    ld c, $02

jr_002_547d:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_002_547d

    ld a, $02
    call Call_000_0750

jr_002_548a:
    ld a, l
    add $09
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec b
    jr nz, jr_002_541d

Jump_002_5495:
jr_002_5495:
    xor a
    ld [$c26e], a
    ld [$c271], a
    ld [$c274], a
    ld [$c272], a
    ld a, $02
    ldh [$bb], a
    ret


Call_002_54a7:
    ld a, [$c276]
    add a
    add a
    add a
    ld l, a
    ld a, [$c278]
    srl a
    add l
    add $00
    ld l, a
    ld h, $c4
    ldh a, [$ba]
    ld b, a
    ldh a, [$bc]
    or b
    jr z, jr_002_54d3

    ld a, l
    sub $08
    ld e, a
    ld d, $c4
    ld a, [de]
    bit 7, a
    jr nz, jr_002_54df

    ld d, $c6
    ld a, [de]
    bit 0, a
    jr nz, jr_002_54df

jr_002_54d3:
    ldh a, [$b6]
    ld e, a
    ld d, $c9
    ld a, l
    ld [de], a
    ldh a, [$b6]
    inc a
    ldh [$b6], a

jr_002_54df:
    ld a, [$c272]
    ld b, a
    ld a, [$c271]
    ld c, a

jr_002_54e7:
    ld [hl], c
    ld a, l
    add $08
    ld l, a
    dec b
    jr nz, jr_002_54e7

    ret


Call_002_54f0:
    ld a, [$c271]
    dec a
    add a
    add a
    add $dc
    ldh [$a3], a
    ld a, [$c275]
    add a
    add a
    add a
    add $68
    ld l, a
    add $04
    ld e, a
    ld h, $c1
    ld d, h
    ld a, $80
    ld [hl+], a
    ld [de], a
    inc de
    ld a, [$c278]
    add a
    add a
    add a
    ld [hl+], a
    add $08
    ld [de], a
    inc de
    ldh a, [$a3]
    ld [hl], a
    inc a
    inc a
    ld [de], a
    ld a, [$c275]
    inc a
    ld [$c275], a
    ret


Call_002_5527:
    ld a, b
    cp $08
    ret nc

    add a
    add a
    add a
    add a
    ld [$c108], a
    add $10
    ldh [$a1], a
    ld hl, $c8f4
    inc [hl]
    ld a, [hl]
    srl a
    srl a
    and $06
    add $88
    ld l, a
    ld a, $55
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$c10a], a
    ld a, [hl]
    ldh [$9f], a
    ld a, [$c8f0]
    add $07
    and $f0
    add $04
    ldh [$a0], a
    ld [$c109], a
    ld hl, $c10c
    ld b, $08

jr_002_5563:
    ldh a, [$a1]
    ld [hl+], a
    add $10
    ldh [$a1], a
    cp $81
    ret nc

    ldh a, [$a0]
    ld [hl+], a
    ldh a, [$9f]
    ld [hl+], a
    inc hl
    dec b
    jr nz, jr_002_5563

    ret


Call_002_5578:
    ld hl, $c108
    ld b, $09

jr_002_557d:
    ld a, $f0
    ld [hl+], a
    ld [hl+], a
    inc hl
    xor a
    ld [hl+], a
    dec b
    jr nz, jr_002_557d

    ret


    nop
    ld [bc], a
    inc b
    ld b, $08
    ld a, [bc]
    inc c
    ld c, $fa
    ldh a, [$c8]
    add $07
    swap a
    and $0f
    add a
    add $a6
    ld l, a
    ld a, $00
    adc $55
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    or h
    ld d, l
    db $ed
    ld d, l
    ld h, $56
    ld e, a
    ld d, [hl]
    sbc b
    ld d, [hl]
    pop de
    ld d, [hl]
    ld a, [bc]
    ld d, a
    ld b, $09
    ld a, [$c440]
    and a
    ret nz

    dec b
    ld a, [$c438]
    and a
    ret nz

    dec b
    ld a, [$c430]
    and a
    ret nz

    dec b
    ld a, [$c428]
    and a
    ret nz

    dec b
    ld a, [$c420]
    and a
    ret nz

    dec b
    ld a, [$c418]
    and a
    ret nz

    dec b
    ld a, [$c410]
    and a
    ret nz

    dec b
    ld a, [$c408]
    and a
    ret nz

    dec b
    ld a, [$c400]
    and a
    ret nz

    dec b
    ret


    ld b, $09
    ld a, [$c441]
    and a
    ret nz

    dec b
    ld a, [$c439]
    and a
    ret nz

    dec b
    ld a, [$c431]
    and a
    ret nz

    dec b
    ld a, [$c429]
    and a
    ret nz

    dec b
    ld a, [$c421]
    and a
    ret nz

    dec b
    ld a, [$c419]
    and a
    ret nz

    dec b
    ld a, [$c411]
    and a
    ret nz

    dec b
    ld a, [$c409]
    and a
    ret nz

    dec b
    ld a, [$c401]
    and a
    ret nz

    dec b
    ret


    ld b, $09
    ld a, [$c442]
    and a
    ret nz

    dec b
    ld a, [$c43a]
    and a
    ret nz

    dec b
    ld a, [$c432]
    and a
    ret nz

    dec b
    ld a, [$c42a]
    and a
    ret nz

    dec b
    ld a, [$c422]
    and a
    ret nz

    dec b
    ld a, [$c41a]
    and a
    ret nz

    dec b
    ld a, [$c412]
    and a
    ret nz

    dec b
    ld a, [$c40a]
    and a
    ret nz

    dec b
    ld a, [$c402]
    and a
    ret nz

    dec b
    ret


    ld b, $09
    ld a, [$c443]
    and a
    ret nz

    dec b
    ld a, [$c43b]
    and a
    ret nz

    dec b
    ld a, [$c433]
    and a
    ret nz

    dec b
    ld a, [$c42b]
    and a
    ret nz

    dec b
    ld a, [$c423]
    and a
    ret nz

    dec b
    ld a, [$c41b]
    and a
    ret nz

    dec b
    ld a, [$c413]
    and a
    ret nz

    dec b
    ld a, [$c40b]
    and a
    ret nz

    dec b
    ld a, [$c403]
    and a
    ret nz

    dec b
    ret


    ld b, $09
    ld a, [$c444]
    and a
    ret nz

    dec b
    ld a, [$c43c]
    and a
    ret nz

    dec b
    ld a, [$c434]
    and a
    ret nz

    dec b
    ld a, [$c42c]
    and a
    ret nz

    dec b
    ld a, [$c424]
    and a
    ret nz

    dec b
    ld a, [$c41c]
    and a
    ret nz

    dec b
    ld a, [$c414]
    and a
    ret nz

    dec b
    ld a, [$c40c]
    and a
    ret nz

    dec b
    ld a, [$c404]
    and a
    ret nz

    dec b
    ret


    ld b, $09
    ld a, [$c445]
    and a
    ret nz

    dec b
    ld a, [$c43d]
    and a
    ret nz

    dec b
    ld a, [$c435]
    and a
    ret nz

    dec b
    ld a, [$c42d]
    and a
    ret nz

    dec b
    ld a, [$c425]
    and a
    ret nz

    dec b
    ld a, [$c41d]
    and a
    ret nz

    dec b
    ld a, [$c415]
    and a
    ret nz

    dec b
    ld a, [$c40d]
    and a
    ret nz

    dec b
    ld a, [$c405]
    and a
    ret nz

    dec b
    ret


    ld b, $09
    ld a, [$c446]
    and a
    ret nz

    dec b
    ld a, [$c43e]
    and a
    ret nz

    dec b
    ld a, [$c436]
    and a
    ret nz

    dec b
    ld a, [$c42e]
    and a
    ret nz

    dec b
    ld a, [$c426]
    and a
    ret nz

    dec b
    ld a, [$c41e]
    and a
    ret nz

    dec b
    ld a, [$c416]
    and a
    ret nz

    dec b
    ld a, [$c40e]
    and a
    ret nz

    dec b
    ld a, [$c406]
    and a
    ret nz

    dec b
    ret


    ld d, c
    ld d, a
    or d
    ld d, a
    inc de
    ld e, b
    ld [hl], h
    ld e, b
    push de
    ld e, b
    ld [hl], $59
    sub a
    ld e, c
    ld b, $0f
    ld a, [$c478]
    and a
    ret nz

    dec b
    ld a, [$c470]
    and a
    ret nz

    dec b
    ld a, [$c468]
    and a
    ret nz

    dec b
    ld a, [$c460]
    and a
    ret nz

    dec b
    ld a, [$c458]
    and a
    ret nz

    dec b
    ld a, [$c450]
    and a
    ret nz

    dec b
    ld a, [$c448]
    and a
    ret nz

    dec b
    ld a, [$c440]
    and a
    ret nz

    dec b
    ld a, [$c438]
    and a
    ret nz

    dec b
    ld a, [$c430]
    and a
    ret nz

    dec b
    ld a, [$c428]
    and a
    ret nz

    dec b
    ld a, [$c420]
    and a
    ret nz

    dec b
    ld a, [$c418]
    and a
    ret nz

    dec b
    ld a, [$c410]
    and a
    ret nz

    dec b
    ld a, [$c408]
    and a
    ret nz

    dec b
    ld a, [$c400]
    and a
    ret


    ld b, $0f
    ld a, [$c479]
    and a
    ret nz

    dec b
    ld a, [$c471]
    and a
    ret nz

    dec b
    ld a, [$c469]
    and a
    ret nz

    dec b
    ld a, [$c461]
    and a
    ret nz

    dec b
    ld a, [$c459]
    and a
    ret nz

    dec b
    ld a, [$c451]
    and a
    ret nz

    dec b
    ld a, [$c449]
    and a
    ret nz

    dec b
    ld a, [$c441]
    and a
    ret nz

    dec b
    ld a, [$c439]
    and a
    ret nz

    dec b
    ld a, [$c431]
    and a
    ret nz

    dec b
    ld a, [$c429]
    and a
    ret nz

    dec b
    ld a, [$c421]
    and a
    ret nz

    dec b
    ld a, [$c419]
    and a
    ret nz

    dec b
    ld a, [$c411]
    and a
    ret nz

    dec b
    ld a, [$c409]
    and a
    ret nz

    dec b
    ld a, [$c401]
    and a
    ret


    ld b, $0f
    ld a, [$c47a]
    and a
    ret nz

    dec b
    ld a, [$c472]
    and a
    ret nz

    dec b
    ld a, [$c46a]
    and a
    ret nz

    dec b
    ld a, [$c462]
    and a
    ret nz

    dec b
    ld a, [$c45a]
    and a
    ret nz

    dec b
    ld a, [$c452]
    and a
    ret nz

    dec b
    ld a, [$c44a]
    and a
    ret nz

    dec b
    ld a, [$c442]
    and a
    ret nz

    dec b
    ld a, [$c43a]
    and a
    ret nz

    dec b
    ld a, [$c432]
    and a
    ret nz

    dec b
    ld a, [$c42a]
    and a
    ret nz

    dec b
    ld a, [$c422]
    and a
    ret nz

    dec b
    ld a, [$c41a]
    and a
    ret nz

    dec b
    ld a, [$c412]
    and a
    ret nz

    dec b
    ld a, [$c40a]
    and a
    ret nz

    dec b
    ld a, [$c402]
    and a
    ret


    ld b, $0f
    ld a, [$c47b]
    and a
    ret nz

    dec b
    ld a, [$c473]
    and a
    ret nz

    dec b
    ld a, [$c46b]
    and a
    ret nz

    dec b
    ld a, [$c463]
    and a
    ret nz

    dec b
    ld a, [$c45b]
    and a
    ret nz

    dec b
    ld a, [$c453]
    and a
    ret nz

    dec b
    ld a, [$c44b]
    and a
    ret nz

    dec b
    ld a, [$c443]
    and a
    ret nz

    dec b
    ld a, [$c43b]
    and a
    ret nz

    dec b
    ld a, [$c433]
    and a
    ret nz

    dec b
    ld a, [$c42b]
    and a
    ret nz

    dec b
    ld a, [$c423]
    and a
    ret nz

    dec b
    ld a, [$c41b]
    and a
    ret nz

    dec b
    ld a, [$c413]
    and a
    ret nz

    dec b
    ld a, [$c40b]
    and a
    ret nz

    dec b
    ld a, [$c403]
    and a
    ret


    ld b, $0f
    ld a, [$c47c]
    and a
    ret nz

    dec b
    ld a, [$c474]
    and a
    ret nz

    dec b
    ld a, [$c46c]
    and a
    ret nz

    dec b
    ld a, [$c464]
    and a
    ret nz

    dec b
    ld a, [$c45c]
    and a
    ret nz

    dec b
    ld a, [$c454]
    and a
    ret nz

    dec b
    ld a, [$c44c]
    and a
    ret nz

    dec b
    ld a, [$c444]
    and a
    ret nz

    dec b
    ld a, [$c43c]
    and a
    ret nz

    dec b
    ld a, [$c434]
    and a
    ret nz

    dec b
    ld a, [$c42c]
    and a
    ret nz

    dec b
    ld a, [$c424]
    and a
    ret nz

    dec b
    ld a, [$c41c]
    and a
    ret nz

    dec b
    ld a, [$c414]
    and a
    ret nz

    dec b
    ld a, [$c40c]
    and a
    ret nz

    dec b
    ld a, [$c404]
    and a
    ret


    ld b, $0f
    ld a, [$c47d]
    and a
    ret nz

    dec b
    ld a, [$c475]
    and a
    ret nz

    dec b
    ld a, [$c46d]
    and a
    ret nz

    dec b
    ld a, [$c465]
    and a
    ret nz

    dec b
    ld a, [$c45d]
    and a
    ret nz

    dec b
    ld a, [$c455]
    and a
    ret nz

    dec b
    ld a, [$c44d]
    and a
    ret nz

    dec b
    ld a, [$c445]
    and a
    ret nz

    dec b
    ld a, [$c43d]
    and a
    ret nz

    dec b
    ld a, [$c435]
    and a
    ret nz

    dec b
    ld a, [$c42d]
    and a
    ret nz

    dec b
    ld a, [$c425]
    and a
    ret nz

    dec b
    ld a, [$c41d]
    and a
    ret nz

    dec b
    ld a, [$c415]
    and a
    ret nz

    dec b
    ld a, [$c40d]
    and a
    ret nz

    dec b
    ld a, [$c405]
    and a
    ret


    ld b, $0f
    ld a, [$c47e]
    and a
    ret nz

    dec b
    ld a, [$c476]
    and a
    ret nz

    dec b
    ld a, [$c46e]
    and a
    ret nz

    dec b
    ld a, [$c466]
    and a
    ret nz

    dec b
    ld a, [$c45e]
    and a
    ret nz

    dec b
    ld a, [$c456]
    and a
    ret nz

    dec b
    ld a, [$c44e]
    and a
    ret nz

    dec b
    ld a, [$c446]
    and a
    ret nz

    dec b
    ld a, [$c43e]
    and a
    ret nz

    dec b
    ld a, [$c436]
    and a
    ret nz

    dec b
    ld a, [$c42e]
    and a
    ret nz

    dec b
    ld a, [$c426]
    and a
    ret nz

    dec b
    ld a, [$c41e]
    and a
    ret nz

    dec b
    ld a, [$c416]
    and a
    ret nz

    dec b
    ld a, [$c40e]
    and a
    ret nz

    dec b
    ld a, [$c406]
    and a
    ret


    ld b, $5a
    ld h, a
    ld e, d
    ret z

    ld e, d
    add hl, hl
    ld e, e
    adc d
    ld e, e
    db $eb
    ld e, e
    ld c, h
    ld e, h
    ld b, $0f
    ld a, [$c678]
    and a
    ret nz

    dec b
    ld a, [$c670]
    and a
    ret nz

    dec b
    ld a, [$c668]
    and a
    ret nz

    dec b
    ld a, [$c660]
    and a
    ret nz

    dec b
    ld a, [$c658]
    and a
    ret nz

    dec b
    ld a, [$c650]
    and a
    ret nz

    dec b
    ld a, [$c648]
    and a
    ret nz

    dec b
    ld a, [$c640]
    and a
    ret nz

    dec b
    ld a, [$c638]
    and a
    ret nz

    dec b
    ld a, [$c630]
    and a
    ret nz

    dec b
    ld a, [$c628]
    and a
    ret nz

    dec b
    ld a, [$c620]
    and a
    ret nz

    dec b
    ld a, [$c618]
    and a
    ret nz

    dec b
    ld a, [$c610]
    and a
    ret nz

    dec b
    ld a, [$c608]
    and a
    ret nz

    dec b
    ld a, [$c600]
    and a
    ret


    ld b, $0f
    ld a, [$c679]
    and a
    ret nz

    dec b
    ld a, [$c671]
    and a
    ret nz

    dec b
    ld a, [$c669]
    and a
    ret nz

    dec b
    ld a, [$c661]
    and a
    ret nz

    dec b
    ld a, [$c659]
    and a
    ret nz

    dec b
    ld a, [$c651]
    and a
    ret nz

    dec b
    ld a, [$c649]
    and a
    ret nz

    dec b
    ld a, [$c641]
    and a
    ret nz

    dec b
    ld a, [$c639]
    and a
    ret nz

    dec b
    ld a, [$c631]
    and a
    ret nz

    dec b
    ld a, [$c629]
    and a
    ret nz

    dec b
    ld a, [$c621]
    and a
    ret nz

    dec b
    ld a, [$c619]
    and a
    ret nz

    dec b
    ld a, [$c611]
    and a
    ret nz

    dec b
    ld a, [$c609]
    and a
    ret nz

    dec b
    ld a, [$c601]
    and a
    ret


    ld b, $0f
    ld a, [$c67a]
    and a
    ret nz

    dec b
    ld a, [$c672]
    and a
    ret nz

    dec b
    ld a, [$c66a]
    and a
    ret nz

    dec b
    ld a, [$c662]
    and a
    ret nz

    dec b
    ld a, [$c65a]
    and a
    ret nz

    dec b
    ld a, [$c652]
    and a
    ret nz

    dec b
    ld a, [$c64a]
    and a
    ret nz

    dec b
    ld a, [$c642]
    and a
    ret nz

    dec b
    ld a, [$c63a]
    and a
    ret nz

    dec b
    ld a, [$c632]
    and a
    ret nz

    dec b
    ld a, [$c62a]
    and a
    ret nz

    dec b
    ld a, [$c622]
    and a
    ret nz

    dec b
    ld a, [$c61a]
    and a
    ret nz

    dec b
    ld a, [$c612]
    and a
    ret nz

    dec b
    ld a, [$c60a]
    and a
    ret nz

    dec b
    ld a, [$c602]
    and a
    ret


    ld b, $0f
    ld a, [$c67b]
    and a
    ret nz

    dec b
    ld a, [$c673]
    and a
    ret nz

    dec b
    ld a, [$c66b]
    and a
    ret nz

    dec b
    ld a, [$c663]
    and a
    ret nz

    dec b
    ld a, [$c65b]
    and a
    ret nz

    dec b
    ld a, [$c653]
    and a
    ret nz

    dec b
    ld a, [$c64b]
    and a
    ret nz

    dec b
    ld a, [$c643]
    and a
    ret nz

    dec b
    ld a, [$c63b]
    and a
    ret nz

    dec b
    ld a, [$c633]
    and a
    ret nz

    dec b
    ld a, [$c62b]
    and a
    ret nz

    dec b
    ld a, [$c623]
    and a
    ret nz

    dec b
    ld a, [$c61b]
    and a
    ret nz

    dec b
    ld a, [$c613]
    and a
    ret nz

    dec b
    ld a, [$c60b]
    and a
    ret nz

    dec b
    ld a, [$c603]
    and a
    ret


    ld b, $0f
    ld a, [$c67c]
    and a
    ret nz

    dec b
    ld a, [$c674]
    and a
    ret nz

    dec b
    ld a, [$c66c]
    and a
    ret nz

    dec b
    ld a, [$c664]
    and a
    ret nz

    dec b
    ld a, [$c65c]
    and a
    ret nz

    dec b
    ld a, [$c654]
    and a
    ret nz

    dec b
    ld a, [$c64c]
    and a
    ret nz

    dec b
    ld a, [$c644]
    and a
    ret nz

    dec b
    ld a, [$c63c]
    and a
    ret nz

    dec b
    ld a, [$c634]
    and a
    ret nz

    dec b
    ld a, [$c62c]
    and a
    ret nz

    dec b
    ld a, [$c624]
    and a
    ret nz

    dec b
    ld a, [$c61c]
    and a
    ret nz

    dec b
    ld a, [$c614]
    and a
    ret nz

    dec b
    ld a, [$c60c]
    and a
    ret nz

    dec b
    ld a, [$c604]
    and a
    ret


    ld b, $0f
    ld a, [$c67d]
    and a
    ret nz

    dec b
    ld a, [$c675]
    and a
    ret nz

    dec b
    ld a, [$c66d]
    and a
    ret nz

    dec b
    ld a, [$c665]
    and a
    ret nz

    dec b
    ld a, [$c65d]
    and a
    ret nz

    dec b
    ld a, [$c655]
    and a
    ret nz

    dec b
    ld a, [$c64d]
    and a
    ret nz

    dec b
    ld a, [$c645]
    and a
    ret nz

    dec b
    ld a, [$c63d]
    and a
    ret nz

    dec b
    ld a, [$c635]
    and a
    ret nz

    dec b
    ld a, [$c62d]
    and a
    ret nz

    dec b
    ld a, [$c625]
    and a
    ret nz

    dec b
    ld a, [$c61d]
    and a
    ret nz

    dec b
    ld a, [$c615]
    and a
    ret nz

    dec b
    ld a, [$c60d]
    and a
    ret nz

    dec b
    ld a, [$c605]
    and a
    ret


    ld b, $0f
    ld a, [$c67e]
    and a
    ret nz

    dec b
    ld a, [$c676]
    and a
    ret nz

    dec b
    ld a, [$c66e]
    and a
    ret nz

    dec b
    ld a, [$c666]
    and a
    ret nz

    dec b
    ld a, [$c65e]
    and a
    ret nz

    dec b
    ld a, [$c656]
    and a
    ret nz

    dec b
    ld a, [$c64e]
    and a
    ret nz

    dec b
    ld a, [$c646]
    and a
    ret nz

    dec b
    ld a, [$c63e]
    and a
    ret nz

    dec b
    ld a, [$c636]
    and a
    ret nz

    dec b
    ld a, [$c62e]
    and a
    ret nz

    dec b
    ld a, [$c626]
    and a
    ret nz

    dec b
    ld a, [$c61e]
    and a
    ret nz

    dec b
    ld a, [$c616]
    and a
    ret nz

    dec b
    ld a, [$c60e]
    and a
    ret nz

    dec b
    ld a, [$c606]
    and a
    ret


    cp e
    ld e, h
    db $db
    ld e, h
    ei
    ld e, h
    dec de
    ld e, l
    dec sp
    ld e, l
    ld e, e
    ld e, l
    ld a, e
    ld e, l
    push af
    ld e, l
    rst $28
    ld e, l
    jp hl


    ld e, l
    db $e3
    ld e, l
    db $dd
    ld e, l
    rst $10
    ld e, l
    pop de
    ld e, l
    bit 3, l
    push bc
    ld e, l
    cp a
    ld e, l
    cp c
    ld e, l
    or e
    ld e, l
    xor l
    ld e, l
    and a
    ld e, l
    and c
    ld e, l
    sbc e
    ld e, l
    ld d, [hl]
    ld e, [hl]
    ld d, b
    ld e, [hl]
    ld c, d
    ld e, [hl]
    ld b, h
    ld e, [hl]
    ld a, $5e
    jr c, jr_002_5d45

    ld [hl-], a
    ld e, [hl]
    inc l
    ld e, [hl]
    ld h, $5e
    jr nz, jr_002_5d4d

    ld a, [de]
    ld e, [hl]
    inc d
    ld e, [hl]
    ld c, $5e
    ld [$025e], sp
    ld e, [hl]
    db $fc
    ld e, l
    or a
    ld e, [hl]
    or c
    ld e, [hl]
    xor e
    ld e, [hl]
    and l
    ld e, [hl]
    sbc a
    ld e, [hl]
    sbc c
    ld e, [hl]
    sub e
    ld e, [hl]
    adc l
    ld e, [hl]
    add a
    ld e, [hl]
    add c
    ld e, [hl]
    ld a, e
    ld e, [hl]
    ld [hl], l
    ld e, [hl]
    ld l, a
    ld e, [hl]
    ld l, c
    ld e, [hl]
    ld h, e
    ld e, [hl]
    ld e, l
    ld e, [hl]
    jr jr_002_5d7c

    ld [de], a
    ld e, a
    inc c
    ld e, a
    ld b, $5f
    nop
    ld e, a
    ld a, [$f45e]
    ld e, [hl]
    xor $5e
    add sp, $5e
    ld [c], a
    ld e, [hl]
    call c, $d65e
    ld e, [hl]
    ret nc

    ld e, [hl]
    jp z, $c45e

    ld e, [hl]
    cp [hl]
    ld e, [hl]
    ld a, c
    ld e, a
    ld [hl], e
    ld e, a
    ld l, l
    ld e, a
    ld h, a
    ld e, a
    ld h, c
    ld e, a

jr_002_5d45:
    ld e, e
    ld e, a
    ld d, l
    ld e, a
    ld c, a
    ld e, a
    ld c, c
    ld e, a

jr_002_5d4d:
    ld b, e
    ld e, a
    dec a
    ld e, a
    scf
    ld e, a
    ld sp, $2b5f
    ld e, a
    dec h
    ld e, a
    rra
    ld e, a
    jp c, $d45f

    ld e, a
    adc $5f
    ret z

    ld e, a
    jp nz, $bc5f

    ld e, a
    or [hl]
    ld e, a
    or b
    ld e, a
    xor d
    ld e, a
    and h
    ld e, a
    sbc [hl]
    ld e, a
    sbc b
    ld e, a
    sub d
    ld e, a
    adc h
    ld e, a
    add [hl]
    ld e, a
    add b
    ld e, a
    dec sp

jr_002_5d7c:
    ld h, b
    dec [hl]
    ld h, b
    cpl
    ld h, b
    add hl, hl
    ld h, b
    inc hl
    ld h, b
    dec e
    ld h, b
    rla
    ld h, b
    ld de, $0b60
    ld h, b
    dec b
    ld h, b
    rst $38
    ld e, a
    ld sp, hl
    ld e, a
    di
    ld e, a
    db $ed
    ld e, a
    rst $20
    ld e, a
    pop hl
    ld e, a
    ld a, [$c478]
    cp c
    ret nz

    inc d
    ld a, [$c470]
    cp c
    ret nz

    inc d
    ld a, [$c468]
    cp c
    ret nz

    inc d
    ld a, [$c460]
    cp c
    ret nz

    inc d
    ld a, [$c458]
    cp c
    ret nz

    inc d
    ld a, [$c450]
    cp c
    ret nz

    inc d
    ld a, [$c448]
    cp c
    ret nz

    inc d
    ld a, [$c440]
    cp c
    ret nz

    inc d
    ld a, [$c438]
    cp c
    ret nz

    inc d
    ld a, [$c430]
    cp c
    ret nz

    inc d
    ld a, [$c428]
    cp c
    ret nz

    inc d
    ld a, [$c420]
    cp c
    ret nz

    inc d
    ld a, [$c418]
    cp c
    ret nz

    inc d
    ld a, [$c410]
    cp c
    ret nz

    inc d
    ld a, [$c408]
    cp c
    ret nz

    inc d
    ld a, [$c400]
    cp c
    ret nz

    inc d
    ret


    ld a, [$c479]
    cp c
    ret nz

    inc d
    ld a, [$c471]
    cp c
    ret nz

    inc d
    ld a, [$c469]
    cp c
    ret nz

    inc d
    ld a, [$c461]
    cp c
    ret nz

    inc d
    ld a, [$c459]
    cp c
    ret nz

    inc d
    ld a, [$c451]
    cp c
    ret nz

    inc d
    ld a, [$c449]
    cp c
    ret nz

    inc d
    ld a, [$c441]
    cp c
    ret nz

    inc d
    ld a, [$c439]
    cp c
    ret nz

    inc d
    ld a, [$c431]
    cp c
    ret nz

    inc d
    ld a, [$c429]
    cp c
    ret nz

    inc d
    ld a, [$c421]
    cp c
    ret nz

    inc d
    ld a, [$c419]
    cp c
    ret nz

    inc d
    ld a, [$c411]
    cp c
    ret nz

    inc d
    ld a, [$c409]
    cp c
    ret nz

    inc d
    ld a, [$c401]
    cp c
    ret nz

    inc d
    ret


    ld a, [$c47a]
    cp c
    ret nz

    inc d
    ld a, [$c472]
    cp c
    ret nz

    inc d
    ld a, [$c46a]
    cp c
    ret nz

    inc d
    ld a, [$c462]
    cp c
    ret nz

    inc d
    ld a, [$c45a]
    cp c
    ret nz

    inc d
    ld a, [$c452]
    cp c
    ret nz

    inc d
    ld a, [$c44a]
    cp c
    ret nz

    inc d
    ld a, [$c442]
    cp c
    ret nz

    inc d
    ld a, [$c43a]
    cp c
    ret nz

    inc d
    ld a, [$c432]
    cp c
    ret nz

    inc d
    ld a, [$c42a]
    cp c
    ret nz

    inc d
    ld a, [$c422]
    cp c
    ret nz

    inc d
    ld a, [$c41a]
    cp c
    ret nz

    inc d
    ld a, [$c412]
    cp c
    ret nz

    inc d
    ld a, [$c40a]
    cp c
    ret nz

    inc d
    ld a, [$c402]
    cp c
    ret nz

    inc d
    ret


    ld a, [$c47b]
    cp c
    ret nz

    inc d
    ld a, [$c473]
    cp c
    ret nz

    inc d
    ld a, [$c46b]
    cp c
    ret nz

    inc d
    ld a, [$c463]
    cp c
    ret nz

    inc d
    ld a, [$c45b]
    cp c
    ret nz

    inc d
    ld a, [$c453]
    cp c
    ret nz

    inc d
    ld a, [$c44b]
    cp c
    ret nz

    inc d
    ld a, [$c443]
    cp c
    ret nz

    inc d
    ld a, [$c43b]
    cp c
    ret nz

    inc d
    ld a, [$c433]
    cp c
    ret nz

    inc d
    ld a, [$c42b]
    cp c
    ret nz

    inc d
    ld a, [$c423]
    cp c
    ret nz

    inc d
    ld a, [$c41b]
    cp c
    ret nz

    inc d
    ld a, [$c413]
    cp c
    ret nz

    inc d
    ld a, [$c40b]
    cp c
    ret nz

    inc d
    ld a, [$c403]
    cp c
    ret nz

    inc d
    ret


    ld a, [$c47c]
    cp c
    ret nz

    inc d
    ld a, [$c474]
    cp c
    ret nz

    inc d
    ld a, [$c46c]
    cp c
    ret nz

    inc d
    ld a, [$c464]
    cp c
    ret nz

    inc d
    ld a, [$c45c]
    cp c
    ret nz

    inc d
    ld a, [$c454]
    cp c
    ret nz

    inc d
    ld a, [$c44c]
    cp c
    ret nz

    inc d
    ld a, [$c444]
    cp c
    ret nz

    inc d
    ld a, [$c43c]
    cp c
    ret nz

    inc d
    ld a, [$c434]
    cp c
    ret nz

    inc d
    ld a, [$c42c]
    cp c
    ret nz

    inc d
    ld a, [$c424]
    cp c
    ret nz

    inc d
    ld a, [$c41c]
    cp c
    ret nz

    inc d
    ld a, [$c414]
    cp c
    ret nz

    inc d
    ld a, [$c40c]
    cp c
    ret nz

    inc d
    ld a, [$c404]
    cp c
    ret nz

    inc d
    ret


    ld a, [$c47d]
    cp c
    ret nz

    inc d
    ld a, [$c475]
    cp c
    ret nz

    inc d
    ld a, [$c46d]
    cp c
    ret nz

    inc d
    ld a, [$c465]
    cp c
    ret nz

    inc d
    ld a, [$c45d]
    cp c
    ret nz

    inc d
    ld a, [$c455]
    cp c
    ret nz

    inc d
    ld a, [$c44d]
    cp c
    ret nz

    inc d
    ld a, [$c445]
    cp c
    ret nz

    inc d
    ld a, [$c43d]
    cp c
    ret nz

    inc d
    ld a, [$c435]
    cp c
    ret nz

    inc d
    ld a, [$c42d]
    cp c
    ret nz

    inc d
    ld a, [$c425]
    cp c
    ret nz

    inc d
    ld a, [$c41d]
    cp c
    ret nz

    inc d
    ld a, [$c415]
    cp c
    ret nz

    inc d
    ld a, [$c40d]
    cp c
    ret nz

    inc d
    ld a, [$c405]
    cp c
    ret nz

    inc d
    ret


    ld a, [$c47e]
    cp c
    ret nz

    inc d
    ld a, [$c476]
    cp c
    ret nz

    inc d
    ld a, [$c46e]
    cp c
    ret nz

    inc d
    ld a, [$c466]
    cp c
    ret nz

    inc d
    ld a, [$c45e]
    cp c
    ret nz

    inc d
    ld a, [$c456]
    cp c
    ret nz

    inc d
    ld a, [$c44e]
    cp c
    ret nz

    inc d
    ld a, [$c446]
    cp c
    ret nz

    inc d
    ld a, [$c43e]
    cp c
    ret nz

    inc d
    ld a, [$c436]
    cp c
    ret nz

    inc d
    ld a, [$c42e]
    cp c
    ret nz

    inc d
    ld a, [$c426]
    cp c
    ret nz

    inc d
    ld a, [$c41e]
    cp c
    ret nz

    inc d
    ld a, [$c416]
    cp c
    ret nz

    inc d
    ld a, [$c40e]
    cp c
    ret nz

    inc d
    ld a, [$c406]
    cp c
    ret nz

    inc d
    ret


    nop
    ld [bc], a
    ld bc, $0704
    dec b
    inc bc
    ld b, $fa
    dec hl
    rst $08
    ld hl, $6042
    call Call_000_065e
    ld a, [hl]
    add a
    add $6f
    ld l, a
    ld a, $60
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $87c0
    ld bc, $0240

jr_002_6066:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_002_6066

    ret


    ld a, a
    ld h, b
    rst $38
    ld h, h
    ccf
    ld h, a
    ld a, a
    ld l, c
    cp a
    ld h, d
    cp a
    ld l, e
    rst $38
    ld l, l
    ccf
    ld [hl], b
    ld a, h
    ld a, b
    ld c, e
    ld b, a
    ld e, h
    ld c, a
    ld [hl], a
    ld e, b
    jr nz, jr_002_60c8

    ld hl, $5f3e
    ld l, b
    ld e, a
    db $76
    ld d, a
    ld a, c
    ld e, a
    ld a, a
    inc [hl]
    dec hl
    ld e, a
    ld [hl], b
    ld a, a
    ld h, a
    add hl, de
    inc e
    inc b
    ld b, $02
    inc bc
    ld a, h

jr_002_60a0:
    inc a
    and h
    call nz, $e474
    call c, Call_000_0834
    ld hl, sp+$08
    ld hl, sp-$0c
    inc l
    db $f4
    call c, Call_000_3cdc
    db $e4
    db $e4
    ld l, h
    and h
    ret c

    jr c, jr_002_60a0

    ret c

    cp b
    ld hl, sp-$40
    ret nz

    add b
    add b
    nop
    nop
    inc a
    ld a, b
    set 4, a
    sbc h
    adc a
    or a

jr_002_60c8:
    sbc b
    ldh [$bf], a
    ld h, c
    ld a, [hl]
    ld e, a
    ld l, [hl]
    ld d, a
    db $76
    sub a
    ld sp, hl
    cp a
    rst $28
    ld e, h
    ld d, e
    ld e, a
    ld h, b
    ccf
    ccf
    dec bc
    dec c
    rlca
    dec b
    nop
    nop
    ld a, b
    inc a
    and [hl]
    adc $72
    ld [c], a
    sbc $32
    ld c, $fa
    inc c
    db $fc
    db $f4
    db $ec
    call nc, $d2dc
    ld a, $fa
    xor $74
    sub h
    db $f4
    inc c
    ld hl, sp-$08
    and b
    ld h, b
    ret nz

    ld b, b
    ld a, h
    ld a, b
    ld c, e
    ld b, a
    ld e, h
    ld c, a
    ld [hl], a
    ld e, b
    jr nz, jr_002_6148

    daa
    ld a, $5d
    ld l, h
    ld e, e
    ld [hl], d
    ld [hl], a
    ld a, c
    ld c, a
    ld c, a
    ld e, h
    ld c, e
    scf
    jr c, jr_002_6147

    scf
    dec sp
    ld a, $06
    ld b, $02
    inc bc
    ld a, h
    inc a
    and h
    call nz, $e474
    call c, Call_000_0834
    ld hl, sp-$18
    ret c

    ld [hl], h
    ld l, h
    or h
    sbc h
    call nc, $f43c
    db $fc
    ld e, b
    xor b
    db $f4
    inc e
    db $fc
    call z, Call_002_7030
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld e, h
    ld c, b
    ld c, e
    ld b, a

jr_002_6147:
    ld e, h

jr_002_6148:
    ld e, a
    daa
    jr c, jr_002_618c

    ld a, a
    ld b, c

jr_002_614e:
    ld a, [hl]
    sbc a
    xor $a7
    or $97
    ld sp, hl
    ld a, a
    ld l, a
    scf
    jr c, jr_002_6169

    rrca
    ld b, $04
    inc bc
    inc bc
    nop
    nop
    inc e
    inc e
    ld [hl], h
    inc h
    and h
    call nz, $f474

jr_002_6169:
    ret z

    jr c, jr_002_6170

    db $fc
    inc b
    db $fc
    ld a, [c]

jr_002_6170:
    xor $ca
    sbc $da
    ld a, $e4
    db $e4
    xor h
    ld h, h
    ld hl, sp-$08
    add b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    jr c, @-$33

    rst $20
    sbc h
    sbc a
    and a

jr_002_618c:
    cp b
    ld b, b
    ld a, a
    sbc a
    xor $a7
    or $37
    ld sp, hl
    rst $28
    rst $38
    ld d, a
    ld a, b
    ld a, a
    ld h, b
    rra
    rra
    rlca
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    jr c, jr_002_614e

    adc $72
    ld a, [c]
    jp z, $043a

    db $fc
    ld a, [c]
    xor $ca
    sbc $d9
    ccf
    rst $28
    rst $38
    call c, $fc34
    inc c
    ldh a, [$f0]
    ret nz

    ld b, b
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld e, h
    ld c, b
    ld c, e
    ld b, a
    ld e, h
    ld e, a
    daa
    jr c, jr_002_620c

    ld a, a
    ld b, c
    ld a, [hl]
    sbc a
    xor $a7
    or $b7
    ld sp, hl
    ld c, a
    ld c, a
    ld e, e
    ld c, h
    ccf

jr_002_61da:
    ccf
    ld [bc], a
    ld b, $03
    inc bc
    nop
    nop
    inc e
    inc e
    ld [hl], h
    inc h
    and h
    call nz, $f474
    ret z

    jr c, jr_002_61f0

    db $fc
    inc b
    db $fc
    ld a, [c]

jr_002_61f0:
    xor $ca
    sbc $d2
    ld a, $fc
    db $ec
    ret c

    jr c, jr_002_61da

    ldh [$c0], a
    ld b, b
    add b
    add b
    nop
    nop
    ldh [$e0], a
    sub e

Jump_002_6204:
    sub e
    call c, $f78f
    sbc b
    ld h, b
    ld a, a
    ld b, a

jr_002_620c:
    ld a, [hl]
    ld e, l
    ld l, h
    sbc e
    ld a, [c]
    ld [hl], a
    ld sp, hl
    cp a
    sbc a
    ld l, h
    ld [hl], e
    ld e, a
    ld h, b
    ccf
    ccf
    dec bc
    dec c
    ld b, $06
    nop
    nop
    ld c, $0e
    sbc d
    sub d
    ld [hl], d
    ld [c], a
    sbc $32
    inc c
    db $fc
    call nz, Call_002_74fc
    ld l, h
    or d
    sbc [hl]
    db $dd
    ccf
    ld a, [$6cf2]
    sbc h
    db $f4
    inc c
    ld hl, sp-$08
    and b
    ld h, b
    ret nz

    ret nz

    nop
    nop
    ld a, h
    ld a, b
    ld c, e
    ld b, a
    ld e, h
    ld c, a
    ld [hl], a
    ld e, b
    jr nz, jr_002_628a

    daa
    ld a, $5d
    ld l, h
    ld a, e
    ld [hl], d
    cp a
    sbc c
    rst $28
    rst $38
    inc l
    inc sp
    ld e, a
    ld h, b
    ccf
    ccf
    dec bc
    dec c
    dec b
    rlca
    nop
    nop
    ld a, h
    inc a
    and h
    call nz, $e474
    call c, Call_000_0834
    ld hl, sp-$18
    ret c

    ld [hl], h
    ld l, h
    cp h
    sbc h
    jp c, $ee32

    cp $68
    sbc b
    db $f4
    inc c
    ld hl, sp-$08
    and b
    ld h, b
    ld b, b
    ret nz

    nop
    nop
    dec sp
    dec sp
    ld e, h
    ld c, a
    or a
    sbc b
    and b
    cp a
    ld h, [hl]

jr_002_628a:
    ld a, a
    cp l
    sbc h
    db $db
    jp nc, $596f

    ld d, a
    ld l, a
    inc h
    dec sp
    rra
    db $10
    ccf
    jr nz, @+$1a

    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    sbc b
    sbc b
    ld [hl], h
    db $e4
    jp c, $0a32

    ld a, [$fccc]

jr_002_62ab:
    ld a, d
    ld [hl], d
    or [hl]
    sub [hl]
    db $ec
    inc [hl]
    call nc, Call_002_48ec
    cp b
    ldh a, [rNR10]
    ld hl, sp+$08
    jr nc, jr_002_62ab

    ret nz

    ret nz

    nop

jr_002_62be:
    nop
    ld h, b
    ld h, b
    ld [hl], e
    ld d, e
    ld e, h
    ld e, a
    ld d, b
    ld e, a
    ld l, h
    ld [hl], e
    ld h, c
    ld a, [hl]
    ld a, a
    ld d, b
    ld e, a
    ld d, [hl]
    scf
    add hl, sp
    ccf
    ccf
    ld l, l
    ld a, e
    add hl, hl
    ccf
    rra
    scf
    rra
    ccf
    dec c
    add hl, hl
    rlca
    dec b
    inc c
    inc c
    sbc h
    sub h
    ld [hl], h
    db $f4
    inc d
    db $f4
    ld l, h
    sbc h
    inc c
    db $fc
    db $fc
    inc d
    db $f4
    call nc, Call_000_38d8
    ld hl, sp-$08
    xor h
    ld a, h
    jr z, @-$06

    ldh a, [$d8]
    ldh a, [$f8]
    ld h, b
    jr z, jr_002_62be

jr_002_62fe:
    ld b, b
    nop
    nop
    jp $ecc3


    xor a
    or b
    cp a
    xor h
    or e
    pop hl
    cp [hl]
    ld a, a
    ld e, [hl]
    ld d, a
    ld d, [hl]
    scf
    add hl, sp
    ld e, a
    ld e, a
    xor l
    cp e
    add hl, hl
    ccf
    rra
    scf
    rra
    ld a, a
    dec c
    add hl, bc
    rlca
    dec b
    nop
    nop
    add [hl]
    add [hl]
    ld l, [hl]
    ld [$fa1a], a
    ld l, d
    sbc d
    ld c, $fa
    db $fc
    db $f4
    call nc, $d8d4
    jr c, @-$0a

    db $f4
    xor d
    ld a, d
    jr z, @-$06

    ldh a, [$d8]
    ldh a, [$fc]
    ld h, b
    jr nz, jr_002_62fe

jr_002_633e:
    ld b, b
    nop
    nop
    add e
    add e
    ld c, h
    ld c, a
    ld d, b
    ld e, a
    xor h
    inc sp
    rst $20
    cp [hl]
    ld a, l
    ld e, h
    ld e, e
    ld d, d
    scf
    add hl, sp
    rst $18
    rst $18
    dec l
    dec sp
    add hl, hl
    ld a, a
    rra
    rst $30
    rra
    rra
    dec c
    add hl, bc
    rlca
    dec b
    nop
    nop
    add e
    add e
    ld h, l
    push hl
    dec d
    push af
    ld l, e

jr_002_6368:
    sbc c
    adc $fa
    ld a, h
    ld [hl], h
    or h
    sub h
    ret c

    jr c, jr_002_6368

    or $a8
    ld a, b
    jr z, @-$02

    ldh a, [$de]
    ldh a, [$f0]
    ld h, b
    jr nz, jr_002_633e

    ld b, b
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld [hl], e
    ld d, e
    ld e, h
    ld e, a
    ld d, b
    ld e, a
    ld l, h
    ld [hl], e
    ld h, c
    ld a, [hl]
    ld a, a
    ld e, [hl]
    ld d, a
    ld d, [hl]

jr_002_6393:
    scf
    add hl, sp
    ccf
    ccf
    ld c, l
    ld e, e
    add hl, de
    scf
    rra
    ccf
    rlca
    dec h
    nop
    nop
    nop
    nop
    inc c
    inc c
    sbc h
    sub h
    ld [hl], h
    db $f4
    inc d
    db $f4
    ld l, h
    sbc h
    inc c

jr_002_63ae:
    db $fc
    db $fc
    db $f4
    call nc, $d8d4
    jr c, jr_002_63ae

    ld hl, sp-$5c
    ld [hl], h
    jr nc, jr_002_6393

    ldh a, [$f8]
    ret nz

    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    jp $ecc3


    xor a
    or b
    cp a
    xor h
    or e
    pop hl
    cp [hl]
    ld a, a
    ld e, [hl]
    ld d, a
    ld d, [hl]

jr_002_63d3:
    scf
    add hl, sp
    ld e, a
    ld e, a
    adc l
    sbc e
    add hl, de
    scf
    rra
    ld a, a
    rlca
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    add [hl]
    ld l, [hl]
    ld [$fa1a], a
    ld l, d
    sbc d
    ld c, $fa
    db $fc
    db $f4
    call nc, $d8d4
    jr c, @-$0a

    db $f4
    and d
    ld [hl], d
    jr nc, jr_002_63d3

    ldh a, [$fc]
    ret nz

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    add e
    add e
    ld c, h
    ld c, a
    ld d, b
    ld e, a
    xor h
    inc sp
    pop hl
    cp [hl]
    ld a, a
    ld e, [hl]
    ld d, a
    ld d, [hl]
    scf
    add hl, sp
    rst $18
    rst $18

jr_002_6417:
    dec c
    dec sp
    add hl, de
    ld [hl], a
    rra
    rra
    rlca
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    add e
    add e
    ld h, l
    push hl
    dec d
    push af
    ld l, e

jr_002_642c:
    sbc c
    ld c, $fa
    db $fc
    db $f4
    call nc, $d8d4
    jr c, jr_002_642c

    or $a0
    ld a, b
    jr nc, jr_002_6417

    ldh a, [$f0]
    ret nz

jr_002_643e:
    ld b, b
    ld h, b
    ld h, b
    ld [hl], e
    ld d, e
    ld e, h
    ld e, a
    ld d, b
    ld e, a
    ld l, h
    ld [hl], e
    ld h, a
    ld a, [hl]
    ld a, l
    ld e, h
    ld e, e
    ld d, d
    scf
    add hl, sp
    ld a, a
    ld a, a
    reti


    cp b
    ld [hl], l
    ld a, b
    rra
    jr nc, jr_002_6479

    ccf
    dec c
    add hl, hl
    rlca
    dec b
    inc c
    inc c
    sbc h
    sub h
    ld [hl], h
    db $f4
    inc d
    db $f4
    ld l, h
    sbc h
    call z, Call_002_7cfc
    ld [hl], h
    or h

jr_002_646e:
    sub h
    ret c

    jr c, jr_002_646e

    db $fc
    ld [hl], $3a
    ld e, h
    inc a
    ldh a, [rNR23]

jr_002_6479:
    ldh a, [$f8]
    ld h, b
    jr z, jr_002_643e

jr_002_647e:
    ld b, b
    nop
    nop
    jp $ecc3


    xor a
    or b
    cp a
    xor h
    or e
    rst $20
    cp [hl]
    ld a, l
    ld e, h
    ld e, e
    ld d, d
    rst $30
    ld sp, hl
    rst $18
    cp a
    ld a, c
    ld a, b
    dec [hl]
    jr c, @+$21

    jr nc, @+$21

    ld a, a
    dec c
    add hl, bc
    rlca
    dec b
    nop
    nop
    add [hl]
    add [hl]
    ld l, [hl]
    ld [$fa1a], a
    ld l, d

jr_002_64a8:
    sbc d
    adc $fa
    ld a, h
    ld [hl], h
    or h
    sub h
    sbc $3e
    or $fa
    inc a
    inc a
    ld e, b
    jr c, jr_002_64a8

    jr @-$0e

    db $fc
    ld h, b
    jr nz, jr_002_647e

jr_002_64be:
    ld b, b
    nop
    nop
    add e
    add e
    ld c, h
    ld c, a
    ld d, b
    ld e, a
    xor h
    inc sp
    rst $20
    cp [hl]
    db $fd
    db $fc
    db $db
    or d
    rst $30
    ld sp, hl
    ld e, a
    ld a, a
    add hl, sp
    jr c, jr_002_64eb

    ld a, b
    rra
    ldh a, [$1f]
    rra
    dec c
    add hl, bc
    rlca
    dec b
    nop
    nop
    add e
    add e
    ld h, l
    push hl
    dec d
    push af
    ld l, e
    sbc c
    adc $fa

jr_002_64eb:
    ld a, [hl]
    ld a, [hl]
    or [hl]
    sbc d
    call c, $f43c
    db $fc
    jr c, jr_002_652d

    ld d, b
    inc a
    ldh a, [rNR34]
    ldh a, [$f0]
    ld h, b

Call_002_64fc:
    jr nz, jr_002_64be

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    ei
    db $d3
    adc h
    adc h
    ld hl, sp+$77
    ld a, b
    dec l
    ld [hl-], a
    ld e, [hl]
    ld l, a
    ld e, e
    ld [hl], b
    inc sp
    add hl, sp
    rst $28
    rst $08
    ld bc, $e087
    ldh [$30], a
    jr nz, jr_002_6565

    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    cp [hl]
    sub [hl]
    ld h, d
    ld h, d
    ld a, $dc
    inc a

jr_002_652d:
    ld l, b
    sbc b
    db $f4
    db $ec
    or h
    inc e
    sbc c
    add hl, sp
    rst $28
    rst $20
    ld bc, $0fc3
    rrca
    ld e, $0e
    call nz, $00fc
    nop
    nop
    nop
    dec sp
    dec sp
    ld b, e
    ld l, h
    db $ec
    sbc b
    rst $30
    ld hl, sp+$2d
    ld [hl-], a
    ld e, [hl]
    ld l, a
    ld d, a
    db $76
    inc sp
    add hl, sp
    ccf
    cpl
    ld h, c
    ld b, a
    sub b
    ldh a, [rSVBK]
    ld [hl], b
    add hl, de
    ld de, $3f23
    nop
    nop
    nop
    nop
    cp b
    cp b

jr_002_6565:
    and h
    ld c, h
    ld l, [hl]
    ld [hl-], a
    sbc $3e
    ld l, b

jr_002_656c:
    sbc b
    db $f4
    db $ec
    call nc, $98dc
    jr c, jr_002_656c

    add sp, $0c
    call nz, Call_000_1e12
    ld e, $1e
    scf
    rla
    adc b
    ld hl, sp+$00
    nop
    dec de
    dec de

Call_002_6583:
    dec hl
    inc h
    ld l, h
    ld e, b
    or l
    jp c, $d7be

    ld a, l
    ld l, h
    ld e, e
    ld l, d
    inc sp
    add hl, sp
    ccf
    cpl
    ld h, c
    ld b, a
    ld b, b
    ld d, b
    ld d, c
    ld [hl], c
    jr nc, jr_002_65cb

    add hl, de
    ld de, $3f21
    nop
    nop
    or b
    or b
    adc b
    ld l, b
    ld l, h
    inc [hl]
    ld e, d
    or [hl]
    ld a, [$7cd6]
    ld l, h
    or h
    xor h
    sbc b
    jr c, @-$06

    add sp, $0c
    call nz, $1404
    inc d
    inc e
    inc e
    inc e
    ld [hl], $16
    dec bc
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
    ei
    ei

jr_002_65cb:
    db $d3
    adc h
    adc h
    ld hl, sp+$77
    ld a, b
    dec l
    ld [hl-], a
    ld e, [hl]
    ld l, a
    ld e, e
    ld [hl], b
    ld [hl], e
    ld a, c
    xor a
    rst $08
    ldh a, [$e0]
    ld b, a
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
    cp [hl]
    cp [hl]
    sub [hl]
    ld h, d
    ld h, d
    ld a, $dc
    inc a
    ld l, b
    sbc b
    db $f4
    db $ec
    or h
    inc e
    sbc l
    dec a
    db $eb
    rst $20
    ld e, $0e
    call nz, $00fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec sp
    dec sp
    ld c, e
    ld h, h
    db $ec
    sbc b
    rst $30
    ld hl, sp+$2d
    ld [hl-], a
    ld e, [hl]
    ld l, a
    ld e, e
    ld [hl], b
    inc sp
    add hl, sp
    ccf
    cpl
    ld d, b
    ld [hl], b
    ld a, c
    ld [hl], c
    ld [hl+], a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp b
    cp b
    and h
    ld c, h
    ld l, [hl]
    ld [hl-], a
    sbc $3e
    ld l, b

jr_002_6630:
    sbc b
    db $f4
    db $ec
    or h
    inc e
    sbc b
    jr c, jr_002_6630

    add sp, $16
    ld e, $3f
    rra
    adc b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    dec de
    dec de
    inc hl
    inc l
    ld l, h
    ld e, b
    or a
    ret c

    cp l
    jp nc, Jump_002_6f7e

    ld e, e
    ld [hl], b
    inc sp
    add hl, sp
    ccf
    cpl
    ld e, c
    ld [hl], c
    ld [hl], b
    ld [hl], b
    add hl, de
    ld de, $3f21
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    or b
    adc b
    ld l, b
    ld l, h
    inc [hl]
    jp c, Jump_002_7a36

jr_002_666e:
    sub [hl]
    db $fc
    db $ec
    or h
    inc e
    sbc b
    jr c, jr_002_666e

    add sp, $34
    inc e
    inc e
    inc e
    ld [hl], $16
    dec bc
    ei
    nop
    nop
    ldh [$e0], a
    sbc e
    cp e
    or e
    call z, Call_002_7c48
    dec [hl]
    ld a, [hl-]
    ld l, $37
    ld e, l
    ld l, h
    ld e, e
    ld l, d
    di
    ld sp, hl
    sbc a
    rst $38
    ld d, c
    ld d, a
    ld h, b
    ld b, b
    ld hl, $3021
    jr nz, jr_002_66e5

    ld a, a
    nop
    nop
    ld c, $0e
    or d
    cp d
    sbc d
    ld h, [hl]
    inc h
    ld a, h
    ld e, b
    cp b
    add sp, -$28
    ld [hl], h
    ld l, h
    or h
    xor h
    sbc [hl]
    ld a, $f3
    rst $38
    dec d
    push de
    rrca
    rlca
    ld c, $0e
    jr jr_002_66c5

    call nz, $00fc
    nop
    dec sp
    dec sp
    ld b, e
    ld l, h

jr_002_66c5:
    db $ec
    sbc b
    push af
    ld a, [$372e]
    ld e, l
    ld l, h
    ld e, e
    ld l, d
    di
    ld sp, hl
    sbc a
    rst $38
    ld d, c
    ld d, a
    ld l, b
    ld b, b
    ld sp, $1031
    db $10
    add hl, de
    ld de, $3e22
    nop
    nop
    cp b
    cp b
    and h
    ld c, h

jr_002_66e5:
    ld l, [hl]
    ld [hl-], a
    ld e, [hl]
    cp [hl]
    add sp, -$28
    ld [hl], h
    ld l, h
    or h
    xor h
    sbc [hl]
    ld a, $f2
    cp $14
    call nc, $042c
    jr jr_002_6711

    rra
    rra
    jr nc, jr_002_670d

    adc b
    ld hl, sp+$1b
    dec de
    inc hl
    inc l
    ld l, l
    ld e, d
    cp [hl]
    rst $10
    db $fd
    db $fc
    sbc e
    ld a, [$d9d7]

jr_002_670d:
    ld e, e
    ld c, h
    ld h, a
    ld c, a

jr_002_6711:
    ld sp, $1027
    db $10
    ld de, $1011
    db $10
    ld de, $0e1b
    ld c, $00
    nop
    or b
    or b
    adc b
    ld l, b
    ld l, h
    or h
    ld a, [$7ed6]
    ld a, [hl]
    or d
    cp [hl]
    sub $36
    or h
    ld h, h
    call z, Call_000_18e4
    ret z

    db $10
    db $10
    jr jr_002_674f

    inc e
    inc e
    ld d, $b6
    ld [c], a
    ld [c], a
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    ld c, l
    ld l, a
    sub [hl]
    ld sp, hl
    and b
    rst $38
    and a
    xor $6d
    ld a, h
    dec sp
    ld a, [hl+]

jr_002_674f:
    ld a, a
    ld a, l
    rst $10

jr_002_6752:
    or e
    sbc h
    ldh a, [$7f]
    ld a, a
    jr c, jr_002_6789

    ccf
    rra
    dec l
    add hl, bc
    rlca
    dec b
    ret nz

    ret nz

    jr c, jr_002_679b

    inc h
    inc a
    jp nc, Jump_000_0afe

    cp $ca
    cp $6c
    ld a, h
    cp b
    xor b
    ret nc

    jr nc, jr_002_6752

    ldh [rSVBK], a
    db $10
    ldh a, [$f0]
    ld e, b
    jr nc, @-$02

jr_002_677a:
    ldh a, [$6c]
    ld h, b
    nop

jr_002_677e:
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    ld c, l
    ld l, a
    sub [hl]
    ld sp, hl

jr_002_6789:
    jr nz, jr_002_677a

    inc h

jr_002_678c:
    ei
    ld a, a
    db $ec
    xor a
    or d
    rra
    jr jr_002_67c3

    daa
    ld a, h
    ld h, a
    ld e, h
    ld a, b
    rst $38
    ccf

jr_002_679b:
    db $ed
    add hl, bc
    rlca
    dec b
    nop
    nop
    ret nz

    ret nz

    jr c, jr_002_67dd

    inc h
    inc a
    jp nc, Jump_000_09fe

    rst $38
    ld c, c
    cp a
    db $fd
    ld l, a
    ld [$f09a], a
    jr nc, jr_002_678c

    ret z

    ld a, h
    call z, Call_000_3c74
    cp $f8
    ld l, [hl]
    jr nz, jr_002_677e

jr_002_67be:
    ld b, b
    nop
    nop
    inc sp
    inc sp

jr_002_67c3:
    ld c, l
    ld l, a
    sub [hl]
    ld sp, hl
    and b
    rst $38
    and a
    xor $6d
    ld a, h
    dec sp
    ld a, [hl+]
    rla
    add hl, de
    rrca
    rrca
    inc e
    db $10
    rra
    rra
    inc [hl]
    jr jr_002_6859

    rra
    ld l, l
    dec c

jr_002_67dd:
    ld bc, $c001
    ret nz

    jr c, jr_002_681b

    inc h
    inc a
    jp nc, Jump_000_0afe

    cp $ca
    cp $6c
    ld a, h
    cp b
    xor b
    db $fc
    ld a, h
    sub $9a
    ld [hl], d
    ld e, $fc
    db $fc
    jr c, jr_002_6811

    ld hl, sp-$10
    ld l, b
    jr nz, jr_002_67be

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    ld c, l
    ld l, a
    sub [hl]
    ld sp, hl
    and b
    rst $28
    and h
    ei
    ld a, a
    ld l, h

jr_002_6811:
    cpl
    ld [hl-], a
    ld a, [hl]
    ld a, l
    rst $10
    or e
    sbc h
    ldh a, [$7f]
    ld a, a

jr_002_681b:
    dec b
    dec b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr c, jr_002_685f

    inc h
    inc a
    jp nc, Jump_000_0afe

    cp $4a
    cp [hl]
    db $fc
    ld l, h
    add sp, -$68
    ret c

    jr c, @-$02

    ldh a, [$7e]

jr_002_6838:
    jr z, jr_002_6838

    ld hl, sp+$60

jr_002_683c:
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    ld c, l
    ld l, a
    sub [hl]
    ld sp, hl
    jr nz, jr_002_683c

    inc h

jr_002_684e:
    ei
    ld a, a
    db $ec
    xor a
    or d
    ld e, $19
    cpl
    daa
    inc a
    daa

jr_002_6859:
    dec a
    ld a, [hl-]
    rra
    rra
    rlca
    dec b

jr_002_685f:
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr c, @+$3a

    inc h
    inc a
    jp nc, Jump_000_09fe

    rst $38
    ld c, c
    cp a
    db $fd
    ld l, a
    ld [$f09a], a
    jr nc, jr_002_684e

    ret z

    ld a, b
    ret z

    ld a, b
    cp b
    ldh a, [$f0]
    ret nz

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    ld c, l
    ld l, a
    sub [hl]
    ld sp, hl
    and b
    rst $28
    and h
    ei
    ld a, a
    ld l, h
    cpl
    ld [hl-], a
    ld [hl], $39
    ld a, a
    rra
    db $fc
    jr z, @+$01

    ccf
    dec c
    dec c
    ld bc, $0001
    nop
    nop
    nop
    ret nz

    ret nz

    jr c, jr_002_68df

    inc h
    inc a
    jp nc, Jump_000_0afe

    cp $4a
    cp [hl]
    db $fc
    ld l, h
    add sp, -$68
    db $fc
    ld a, h
    sub $9a
    ld [hl], d
    ld e, $fc
    db $fc
    ld b, b
    ld b, b
    add b

jr_002_68be:
    add b
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    ld c, l
    ld l, a
    sub [hl]
    ld sp, hl
    and b
    rst $38
    and a
    xor $6d
    ld a, h
    dec sp
    ld a, [hl+]
    rst $30
    ld sp, hl
    cp a
    sbc a
    ld [hl], b
    ld a, a
    inc a
    jr nz, jr_002_6959

    rra
    dec c
    add hl, bc
    rlca
    dec b

jr_002_68df:
    nop
    nop
    ret nz

    ret nz

    jr c, jr_002_691d

    inc h
    inc a
    jp nc, Jump_000_0afe

    cp $ca
    cp $6c
    ld a, h
    cp b
    xor b
    sbc $3e
    ld a, [$1cf2]

jr_002_68f6:
    db $fc
    ld l, b
    jr jr_002_68f6

    ldh a, [$60]
    jr nz, jr_002_68be

    ld b, b
    nop
    nop
    inc sp
    inc sp
    ld c, l
    ld l, a
    sub [hl]
    ld sp, hl
    and b
    rst $38
    and a
    xor $6d
    ld a, h
    dec sp
    ld a, [hl+]
    rst $30
    ld sp, hl
    cp a
    sbc a
    ld a, b
    ld [hl], h
    ld [hl], b
    ld e, a
    inc a
    jr nz, jr_002_6959

    rra
    ld l, l
    add hl, bc

jr_002_691d:
    rlca
    dec b
    ret nz

    ret nz

    jr c, jr_002_695b

    inc h
    inc a
    jp nc, Jump_000_0afe

    cp $ca
    cp $6c
    ld a, h
    cp b
    xor b
    sbc $3e
    ld a, [$3cf2]
    ld e, h
    inc e
    db $f4
    ld l, b
    jr @-$06

    ldh a, [$ec]
    and b
    ld b, b
    ld b, b
    inc sp
    inc sp
    ld c, l
    ld l, a
    sub [hl]
    ld sp, hl
    and b
    rst $38
    ld h, a
    ld l, [hl]
    cp l
    sbc h

jr_002_694b:
    db $db
    jp nc, $596f

    ld e, a
    ld l, a
    jr c, @+$38

    dec e
    ld [de], a
    ccf
    jr nz, jr_002_6997

    rra

jr_002_6959:
    ld l, l
    add hl, bc

jr_002_695b:
    ld b, a
    dec b
    nop
    nop
    jr c, jr_002_6999

    inc h
    inc a
    jp nc, Jump_000_0afe

    cp $cc
    db $fc
    ld a, d
    ld [hl], d
    or [hl]
    sub [hl]
    db $ec
    inc [hl]
    db $f4
    db $ec
    jr c, jr_002_694b

    ld [hl], b
    sub b
    ld hl, sp+$08
    ld hl, sp-$10
    ld l, h
    ld h, b
    inc b
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $0c
    ccf
    ld a, [de]
    rst $10
    ld hl, $46bf
    cp $4d
    ld a, h

jr_002_698d:
    sbc e
    ld a, [c]
    sbc a
    ld sp, hl
    ld l, a
    ld a, a
    cp c
    sub $ef
    rst $38

jr_002_6997:
    rra
    ld e, a

jr_002_6999:
    inc de
    sbc a
    rrca
    xor c
    dec b
    rst $00
    nop
    nop
    add b
    add b
    ldh [$78], a
    ld [hl], b
    sub $48
    ld a, [$fec4]
    ld h, h
    ld a, h
    cp d
    sbc [hl]
    and $3e
    db $ec
    db $e4
    jr c, jr_002_698d

    ld hl, sp-$18
    ldh a, [$f4]
    and b
    ld a, [c]
    ld h, b
    ld l, d
    nop
    ld b, $00
    nop
    inc bc
    jp Jump_000_3605


    inc c
    rst $08
    ld a, [de]
    scf
    ld hl, $463f
    ld a, [hl]
    adc l
    db $fc
    dec de
    ld a, [c]
    or a
    ld hl, sp+$4f
    ld a, a
    ld a, c
    adc $3f
    ld a, a
    rrca
    sbc a
    rrca
    ld l, e
    dec b
    rlca
    nop
    nop
    nop
    ld b, $80
    sbc c
    ldh [$67], a
    ld [hl], b
    ret c

    ld c, b
    ld hl, sp-$3c
    db $fc
    ld h, d
    ld a, [hl]
    or c
    sbc a
    db $db
    ccf
    db $e4
    db $fc
    inc a
    rst $20
    ld hl, sp-$03
    ldh [$f2], a
    ldh [$ac], a
    ld b, b
    ret nz

    inc bc
    inc bc
    dec b
    ld b, $0c
    ccf
    ld a, [de]
    rst $10
    ld hl, $46bf
    cp $4d
    ld a, h
    cp e
    ld a, [c]
    rst $08
    ld sp, hl
    ld e, a
    ld c, a
    add hl, sp
    ld [hl], $3f
    cpl
    rra
    ld e, a
    dec bc
    sbc a
    dec c
    xor l
    ld bc, $00c1
    nop
    add b
    add b
    ldh [$78], a
    ld [hl], b
    sub $48
    ld a, [$fec4]
    ld h, h
    ld a, h
    or d
    sbc [hl]
    ld a, [c]
    ld a, $ec
    db $fc
    ld a, [hl-]
    sub $ee
    cp $f0
    db $f4
    sub b
    ld a, [c]
    ldh [$2a], a
    ld b, b
    add $00
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $0c
    ccf
    ld a, [de]
    rst $10
    ld hl, $42bf
    cp $4d
    ld a, [hl]
    sbc e
    ld a, [c]
    sbc a
    ld sp, hl
    ld [hl], a
    ld a, a
    cpl
    ld a, a
    ccf
    cp e
    dec b
    and a
    inc bc
    jp RST_00


    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$78], a
    ld [hl], b
    sub $48
    ld a, [$fec4]
    ld h, h
    db $fc
    cp d
    sbc [hl]
    and $3e
    db $ec
    db $e4
    ld hl, sp-$04
    and b
    ld a, [c]
    ld h, b
    ld l, d
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    inc bc
    jp Jump_000_3605


    inc c
    rst $08
    ld a, [de]
    scf
    inc hl
    ccf
    ld b, b
    ld a, [hl]
    adc l
    cp $1b
    ld a, [c]
    or a
    ld hl, sp+$6f
    ld a, a
    ccf
    cp a
    rrca
    ld l, e
    dec b
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $80
    sbc c
    ldh [$67], a
    ld [hl], b
    ret c

    ld c, b
    ld hl, sp-$3c
    db $fc
    ld h, d
    cp $b1
    sbc a
    db $db
    ccf
    db $ec
    db $fc
    ld hl, sp-$06
    ldh [$ac], a
    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $0c
    ccf
    ld a, [de]
    rst $10
    ld hl, $42bf
    cp $4d
    ld a, [hl]
    cp e
    ld a, [c]
    rst $08
    ld sp, hl
    ld e, a
    ld c, a
    ccf
    ld a, a
    dec bc
    sbc a
    dec c
    xor l
    ld bc, $00c1
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$78], a
    ld [hl], b
    sub $48
    ld a, [$fec4]
    ld h, h
    db $fc
    or d
    sbc [hl]
    ld a, [c]
    ld a, $dc
    db $fc
    add sp, -$04
    ld hl, sp-$46
    ld b, b
    jp z, $8680

    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $0c
    ld a, a
    ld a, [de]
    sub a
    ld hl, $46ff
    ld a, [hl]
    ld c, l
    ld a, h
    sbc e
    ld a, [c]
    sbc a
    ld sp, hl
    rst $28
    rst $38
    reti


    or [hl]
    ld l, a
    ld a, a
    rra
    cp a
    rrca
    ld c, e
    dec b
    add a
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$7c], a
    ld [hl], b
    jp nc, $fe48

    call nz, Call_002_64fc
    ld a, h
    or d
    sbc [hl]
    ld a, [c]
    ld a, $ee
    cp $36
    jp c, $fcec

    ldh a, [$fa]
    ldh [$a5], a
    ld b, b
    jp Jump_000_0303


    dec b
    ld b, $0c
    ccf
    ld a, [de]
    rst $10
    ld hl, $46bf
    cp $4d
    ld a, h
    sbc e
    ld a, [c]
    rst $38
    ld sp, hl
    rst $18
    cp a
    ld a, c
    db $76
    cpl
    ccf
    rra
    ld e, a
    inc de
    sbc a
    rrca
    xor c
    dec b
    rst $00
    nop
    nop
    add b
    add b
    ldh [$78], a
    ld [hl], b
    sub $48
    ld a, [$fec4]
    ld h, h
    ld a, h
    or d
    sbc [hl]
    cp $3e
    db $ec
    db $f4
    inc a
    call c, $f8e8
    ldh a, [$f4]
    sub b
    ld a, [c]
    ldh [$2a], a
    ld b, b
    add $03
    inc bc
    dec c
    ld c, $1a
    scf
    ld hl, $467f
    cp $6d
    db $fc

jr_002_6b8b:
    db $db
    or d
    rst $38
    reti


    ld e, a
    ld l, a
    add hl, hl
    ld [hl], $2f
    ccf
    rra
    ld e, a
    dec de
    ld e, a
    dec c
    ld e, l
    ld bc, $0061
    nop
    add b
    add b
    ld h, b
    ldh [$f0], a
    ld e, b
    ld c, b
    db $fc
    call nz, Call_002_6cfe
    ld a, [hl]
    or [hl]
    sbc d
    cp $36
    db $f4
    db $ec
    jr z, jr_002_6b8b

    add sp, -$08
    ldh a, [$f4]
    sub b
    db $f4
    ldh [$34], a
    ld b, b
    call z, RST_00
    dec bc
    rlca
    inc e
    rrca
    ld [hl], b
    ld e, a
    ld l, h
    ld a, a
    ld e, [hl]
    ld [hl], e
    db $76
    ld l, a
    cp l
    db $ec
    ei
    or d
    or a
    ld sp, hl
    cp a
    rst $38
    ld a, a
    ld h, [hl]
    ld c, a
    ld a, a
    ld e, a
    ld a, a
    ld a, a
    ld e, a
    cpl
    ld l, c
    dec b
    ld b, a
    and b
    ret nz

    ld [hl], b
    ldh [rNR10], a
    ld hl, sp+$6c
    ld hl, sp-$0c
    sbc h
    call z, $6cfc
    ld a, h
    cp [hl]
    sbc d
    jp c, $f23e

    cp $f4
    call z, $ecf8
    ldh a, [$fc]
    ldh [$fc], a
    ldh [$2c], a
    ld b, b
    call nz, Call_000_070b
    ld e, h
    ld c, a
    ld [hl], b
    ld e, a
    ld l, h
    ld a, a
    ld e, [hl]
    ld [hl], e
    xor [hl]
    rst $38
    rst $30
    and [hl]
    cp a
    db $fc
    or a
    ld sp, hl
    ld e, a
    ld a, a
    ccf
    ld h, $4f
    ld a, a
    ld e, a
    ld a, a
    ld a, a
    ld e, a
    cpl
    ld l, c
    dec b
    rlca
    and b
    ret nz

    ld [hl], b
    ldh [rNR10], a
    ld hl, sp+$6c
    ld hl, sp-$0c
    sbc h
    db $ec
    db $fc
    sbc $ca
    ld a, [$d27e]
    ld a, $e4
    db $fc
    db $f4
    call z, $ecf8
    ldh a, [$fc]
    ldh [$ec], a
    ldh [rNR50], a
    ld b, b
    ret nz

    ld c, e
    ld b, a
    ld e, h
    ld c, a
    ld [hl], b
    ld e, a
    ld l, h
    ld a, a
    cp [hl]
    di
    cp $af
    xor a
    ld a, [c]
    cp a
    db $fc
    ld d, a
    ld a, c
    ld e, a
    ld a, a
    ccf
    ld h, $4f
    ld a, a
    ld e, a
    rst $38
    ld a, a
    rst $18
    cpl
    xor c
    dec b
    rlca
    and b
    ret nz

    ld [hl], b
    ldh [rNR10], a
    ld hl, sp+$6c
    ld hl, sp-$0c
    sbc h
    xor $fa
    ld [$f29e], a
    ld a, [hl]
    call nc, $e43c
    db $fc
    ld hl, sp-$34
    ldh a, [$fc]
    ldh [$fe], a
    ldh [$e6], a
    ldh [rNR43], a
    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    dec bc
    rlca
    inc e
    rrca
    ld [hl], b
    ld e, a
    ld l, h
    ld a, a
    ld e, [hl]
    ld [hl], e
    ld l, [hl]
    ld a, a
    or a
    or $ff
    cp h
    or a
    ld sp, hl
    cp a
    rst $28
    ld e, a
    ld a, a
    ld a, a
    ld e, a
    cpl
    ld l, c
    dec b
    ld b, a
    nop
    nop
    nop
    nop
    and b
    ret nz

    ld [hl], b
    ldh [rNR10], a
    ld hl, sp+$6c
    ld hl, sp-$0c
    sbc h
    db $ec
    db $fc
    sbc $da
    ld a, [$d27e]
    ld a, $f4
    db $ec
    ld hl, sp-$04
    ldh [$fc], a
    ldh [$2c], a
    ld b, b
    call nz, RST_00
    nop
    nop
    dec bc
    rlca
    ld e, h
    ld c, a
    ld [hl], b
    ld e, a
    ld l, h
    ld a, a
    sbc $f3
    xor [hl]
    rst $38
    rst $30
    or [hl]
    cp a
    db $fc
    or a
    ld sp, hl
    ld a, a
    ld l, a
    ld e, a
    ld a, a
    ld a, a
    ld e, a
    cpl
    ld l, c
    dec b
    rlca
    nop
    nop
    nop
    nop
    and b
    ret nz

    ld [hl], b
    ldh [rNR10], a
    ld hl, sp+$6c
    ld hl, sp-$0c
    sbc h
    xor $fa
    jp c, $fade

    ld a, [hl]
    jp nc, $f43e

    db $ec
    ld hl, sp-$04
    ldh [$ec], a
    ldh [rNR50], a
    ld b, b

Call_002_6cfe:
    ret nz

    nop
    nop
    nop
    nop
    ld c, e
    ld b, a
    ld e, h
    ld c, a
    ld [hl], b
    ld e, a
    ld l, h
    ld a, a
    cp [hl]
    di
    cp $af
    xor a
    ld a, [c]
    cp a
    db $fc
    ld [hl], a
    ld a, c
    ccf
    cpl
    ld e, a
    rst $38
    ld a, a
    rst $18
    cpl
    xor c
    dec b
    rlca
    nop
    nop
    nop
    nop
    and b
    ret nz

    ld [hl], b
    ldh [rNR10], a
    ld hl, sp+$6c
    db $fc
    cp $9a
    ld [$eafe], a
    sbc [hl]
    ld a, [c]
    ld a, [hl]
    call nc, $e83c
    db $fc
    ldh a, [$fe]
    ldh [$e6], a
    ldh [rNR43], a
    ld b, b
    ret nz

    nop
    nop
    dec bc
    rlca
    inc e
    rrca
    ld [hl], b
    ld e, a
    ld l, h
    ld a, a
    ld e, [hl]
    ld [hl], e
    db $76
    ld l, a
    cp l
    db $ec
    ei
    or d
    rst $30
    ld sp, hl
    rst $18
    cp a
    ld a, a
    db $76
    ld c, a
    ld a, a
    ccf
    ld a, a
    rrca
    ret


    dec b
    rlca
    nop
    nop
    and b
    ret nz

    ld [hl], b
    ldh [rNR10], a
    ld hl, sp+$6c
    ld hl, sp-$0c
    sbc h
    adc $fc
    ld l, d
    ld a, [hl]
    cp d
    sbc [hl]
    sbc $3e
    or $fa
    db $fc
    call c, $fce4
    ld hl, sp-$02
    ldh [rNR44], a
    ld b, b
    ret nz

    dec bc
    rlca
    inc e
    rrca
    ld [hl], b
    ld e, a
    ld l, h
    ld a, a
    ld e, [hl]
    ld [hl], e
    db $76
    ld l, a
    cp l
    db $ec
    ei
    or d
    rst $30
    ld sp, hl
    rst $18
    cp a
    ld a, a
    db $76
    ld c, a
    ld a, a
    ccf
    ld a, a
    rra
    rst $18
    rrca
    adc c
    dec b
    rlca
    and b
    ret nz

    ld [hl], b
    ldh [rNR10], a
    ld hl, sp+$6c
    ld hl, sp-$0c
    sbc h
    adc $fc
    ld l, d
    ld a, [hl]
    cp d
    sbc [hl]
    sbc $3e
    or $fa
    db $fc
    call c, $fce4
    ld hl, sp-$04
    ldh [$ee], a
    ldh [rNR43], a
    ld b, b
    ret nz

    rla
    rrca
    ld a, b
    ld e, a
    ld l, h
    ld a, a
    ld e, [hl]
    ld [hl], e
    db $76
    ld l, a
    db $fd
    db $ec
    db $db
    or d
    rst $10
    ld sp, hl
    rst $18
    rst $38
    ccf

jr_002_6dd2:
    ld h, $2f
    ccf
    rra
    ccf
    rra
    ld a, a
    rrca
    ld l, c
    dec b
    ld b, a
    nop
    ld b, b
    ret nc

    ldh [$30], a
    ld hl, sp+$6c
    ld hl, sp-$0c
    sbc h
    adc $fc
    ld a, [hl]
    ld l, [hl]
    or [hl]
    sbc d
    call nc, $f43c
    db $fc
    ld hl, sp-$38
    add sp, -$08
    ldh a, [$f8]
    ldh a, [$fc]
    ldh [$2c], a
    ld b, b
    call nz, $0400
    rlca
    inc bc
    dec c
    inc a
    scf
    ld c, h
    ld e, e
    and a
    ld d, [hl]
    xor b
    dec sp
    ld e, h
    rra
    ld l, $e7
    or $37
    ld a, b
    rra

jr_002_6e12:
    sbc a
    jr nz, jr_002_6dd2

    ld c, b
    ld a, [hl]
    ld l, h
    ld l, h
    jr @+$81

    add hl, bc
    rst $38
    ld [de], a
    ld [de], a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld l, b
    sbc h
    ld [hl], h
    inc c
    cp b
    ld [hl], h
    ld hl, sp-$1c
    adc $de
    ret c

    inc a
    ldh a, [$f2]
    ld [$247a], sp
    db $fd
    ld l, h

jr_002_6e38:
    ld l, l
    jr nc, jr_002_6e38

jr_002_6e3b:
    jr nz, jr_002_6e3b

    sub b
    sub b
    rlca
    inc bc
    dec c

Jump_002_6e42:
    inc a
    scf
    ld c, h
    ld d, a
    xor e
    dec sp
    sbc h
    rra
    ld l, $e7
    or $2f
    jr nc, jr_002_6e64

    ld a, h
    rra

jr_002_6e52:
    sbc a
    jr nz, jr_002_6e12

    ld c, b
    ld a, [hl]
    ld l, h
    ld l, h
    jr jr_002_6eda

    add hl, bc
    rst $38
    ld [de], a
    ld [de], a
    ret nz

    ret nz

    ldh a, [$f0]
    sbc b

jr_002_6e64:
    ld hl, sp+$74
    inc c
    cp b
    ld [hl], h
    ld hl, sp-$1c
    adc $de
    add sp, $18
    ld d, b
    ld a, h
    ldh a, [$f2]
    ld [$247a], sp
    db $fd
    ld l, h

jr_002_6e78:
    ld l, l
    jr nc, jr_002_6e78

jr_002_6e7b:
    jr nz, jr_002_6e7b

    sub b
    sub b
    rlca
    inc bc
    dec c
    inc a
    scf
    call z, Call_000_3fdb
    rra
    ld l, [hl]
    rst $20
    or $2f
    jr nc, @+$1e

    inc d
    inc d
    ld a, a
    rra
    sbc a
    jr nz, jr_002_6e52

    ld c, b
    cp $2c
    xor h
    jr @-$3f

    add hl, bc
    ld a, a
    ld [de], a
    ld [de], a
    ret nz

    ret nz

    ldh a, [$f0]
    sbc b
    ld hl, sp-$44
    ld [hl], h
    ld hl, sp-$1c
    adc $de
    add sp, $18
    ld [hl], b
    ld d, b
    ld d, b
    db $fc
    ldh a, [$f2]
    ld [$247a], sp
    cp $6c
    ld l, [hl]

jr_002_6eb9:
    jr nc, @-$04

    jr nz, jr_002_6eb9

    sub b
    sub b
    nop
    nop
    nop
    nop
    rlca
    inc bc
    dec c
    inc a
    scf
    ld c, h
    ld e, e
    and a
    ld d, [hl]
    xor b
    dec sp
    ld e, h
    rra
    ld l, $e7
    or $37
    ld a, b
    cpl
    cp a
    ld c, b
    ld a, [hl]
    cpl

jr_002_6eda:
    ld l, a
    ld [$12ff], sp
    ld [de], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld l, b
    sbc h
    ld [hl], h
    inc c
    cp b
    ld [hl], h
    ld hl, sp-$1c
    adc $de
    ret c

    inc a
    add sp, -$06
    inc h
    db $fd
    add sp, -$13

jr_002_6efb:
    jr nz, jr_002_6efb

    sub b
    sub b
    nop
    nop
    nop
    nop
    rlca
    inc bc
    dec c
    inc a
    scf
    ld c, h
    ld d, a
    xor e
    dec sp
    sbc h
    rra
    ld l, $e7
    or $2f
    jr nc, jr_002_6f28

    ld a, h
    cpl
    cp a
    ld c, b
    ld a, [hl]
    cpl
    ld l, a
    ld [$12ff], sp
    ld [de], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    sbc b

jr_002_6f28:
    ld hl, sp+$74
    inc c
    cp b
    ld [hl], h
    ld hl, sp-$1c
    adc $de
    add sp, $18
    ld d, b
    ld a, h
    add sp, -$06
    inc h
    db $fd
    add sp, -$13

jr_002_6f3b:
    jr nz, jr_002_6f3b

    sub b
    sub b
    nop
    nop
    nop
    nop
    rlca
    inc bc
    dec c
    inc a
    scf
    call z, Call_000_3fdb
    rra
    ld l, [hl]
    rst $20
    or $2f
    jr nc, @+$1e

    inc d
    inc d
    ld a, a
    cpl
    cp a
    ld c, b
    cp $2f
    xor a
    ld [$127f], sp
    ld [de], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    sbc b
    ld hl, sp-$44
    ld [hl], h
    ld hl, sp-$1c
    adc $de
    add sp, $18
    ld [hl], b
    ld d, b
    ld d, b
    db $fc
    add sp, -$06
    inc h
    cp $e8
    ld [$fc20], a
    sub b

Jump_002_6f7e:
    sub b
    nop
    nop
    rlca
    inc bc
    dec c
    inc a
    scf
    ld c, h
    ld e, e
    and a
    ld d, [hl]
    xor b
    dec sp
    ld e, h
    rra
    ld l, $e7
    or $37
    ld a, b
    rst $38
    rst $38
    sub b
    sbc l
    ld c, b
    cp $3c
    ld a, h
    jr nz, jr_002_701c

    ld c, a
    rst $08
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld l, b
    sbc h
    ld [hl], h
    inc c
    cp b
    ld [hl], h
    ld hl, sp-$1c
    adc $de
    ret c

    inc a
    rst $38
    rst $38
    add hl, bc
    ld a, c
    ld h, $fe
    ld a, h
    ld a, l
    ld [$e4fd], sp
    and $07
    inc bc
    dec c
    inc a
    scf

jr_002_6fc4:
    ld c, h
    ld d, a
    xor e
    dec sp
    sbc h
    rra
    ld l, $e7
    or $2f
    jr nc, jr_002_6fc4

    db $fc
    sbc a

jr_002_6fd2:
    sbc a
    ld b, b
    db $fd

jr_002_6fd5:
    jr z, jr_002_7055

    inc e
    ld a, h
    ld [$137f], sp
    rst $38
    inc h
    inc h
    ret nz

    ret nz

    ldh a, [$f0]
    sbc b
    ld hl, sp+$74
    inc c
    cp b
    ld [hl], h
    ld hl, sp-$1c
    adc $de
    add sp, $18
    ld e, [hl]
    ld a, [hl]
    ld a, [c]
    ld a, [c]
    inc b

jr_002_6ff4:
    ld a, [hl]
    jr z, jr_002_6ff4

    ld [hl], b

jr_002_6ff8:
    ld a, l
    jr nz, jr_002_6ff8

    sub b
    cp $48
    ld c, b
    rlca
    inc bc
    dec c
    inc a
    scf
    call z, Call_000_3fdb
    rra
    ld l, [hl]
    rst $20
    or $9f
    sub b
    ld e, h
    ld d, h
    ld e, h
    ld a, a
    ld c, a
    rst $38
    jr nz, jr_002_6fd2

    jr jr_002_6fd5

    inc c
    cp h
    ld [$09bf], sp

jr_002_701c:
    ld a, a
    ld [de], a
    ld [de], a
    ret nz

    ret nz

    ldh a, [$f0]
    sbc b
    ld hl, sp-$44
    ld [hl], h
    ld hl, sp-$1c
    adc $de
    ld a, [c]
    ld [de], a
    ld [hl], h
    ld d, h
    ld [hl], h

Call_002_7030:
    db $fc

jr_002_7031:
    db $e4
    cp $08
    ld a, d

jr_002_7035:
    jr nc, jr_002_7031

    ld h, b
    ld a, d

jr_002_7039:
    jr nz, jr_002_7035

    jr nz, jr_002_7039

    sub b
    sub b
    inc b
    inc bc
    inc bc
    inc c
    dec b
    ld a, [de]
    db $10
    dec l
    ld e, d
    inc h
    ld sp, $af5e
    ld e, [hl]
    ld d, a
    sub [hl]
    ld d, $b9
    ld a, a
    ld l, a
    dec sp
    ld a, h

jr_002_7055:
    ld a, a
    cp a
    ld a, a
    xor a
    rra
    ld e, a
    dec c
    add hl, bc
    dec b
    rlca

jr_002_705f:
    ld b, b
    add b
    add b
    ld h, b
    and b
    db $10
    ld d, b
    adc b
    inc h
    ld c, b
    jr jr_002_705f

    ld [$d4f4], a
    jp nc, Jump_000_3ad0

    db $fc
    db $ec
    cp b
    ld a, h
    db $fc
    ld a, [$eafc]
    ldh a, [$fc]
    ld h, b
    jr nz, jr_002_70be

    ret nz

    inc b
    inc bc
    inc bc
    inc c
    ld bc, $181a
    dec h
    ld d, c
    ld a, $2f
    ld e, [hl]
    sbc a
    ld d, d
    ccf
    sub b
    ld l, [hl]
    sbc c
    ld a, a
    ld l, a
    dec sp
    ld a, h
    ld a, a
    cp a
    ld a, a
    xor a
    rra
    ld a, a
    dec c
    add hl, hl
    dec b
    rlca
    ld b, b
    add b
    add b
    ld h, b
    and b
    db $10
    ld d, b
    adc b
    inc d
    ld hl, sp-$18
    db $f4
    ld a, [c]
    sub h
    ld hl, sp+$12
    db $ec
    ld [hl-], a
    db $fc
    db $ec
    cp b
    ld a, h
    ld hl, sp-$04
    db $fc
    ld [$f2fc], a
    ld h, b
    inc l
    ld b, b

jr_002_70be:
    ret nz

    inc b
    inc bc
    inc de
    inc c
    add hl, bc
    ld [hl-], a
    ld d, c
    inc a
    dec l
    ld e, [hl]
    sbc a
    ld d, d
    ld e, a
    sub b
    ld [hl], $99
    ld c, e
    cp h
    ld [hl], a
    ld l, a
    dec sp
    ld a, h
    ld a, a
    cp a
    ld a, a
    xor a
    ccf
    ld e, a
    dec c
    add hl, sp
    dec b
    rla
    ld b, b
    add b
    sub b
    ld h, b
    jr nz, @-$66

    sub h
    ld a, b
    ld l, b
    db $f4
    ld a, [c]
    sub h
    db $f4
    ld [de], a
    ret c

    ld [hl-], a
    and h
    ld a, d
    call c, $b8ec
    ld a, h
    ld a, [$fcfc]
    ld [$f2fc], a
    ld h, b
    inc l
    ld b, b
    call nz, RST_00
    nop
    nop
    inc b
    inc bc
    inc bc
    inc c
    dec b
    ld a, [de]
    db $10
    dec l
    ld e, d
    inc h
    add hl, sp
    ld b, [hl]
    xor l
    ld e, [hl]
    ld d, a
    sub [hl]
    ld d, $b9
    ld a, a
    ld a, a
    ld a, a
    xor a
    rra
    ld e, a
    dec c
    add hl, bc
    dec b
    rlca
    nop
    nop
    nop
    nop
    ld b, b
    add b
    add b
    ld h, b
    and b
    db $10
    ld d, b
    adc b
    inc h
    ld c, b
    jr c, @-$3a

    ld l, d
    db $f4
    call nc, $d0d2
    ld a, [hl-]
    db $fc
    db $fc
    db $fc
    ld [$fcf0], a
    ld h, b
    jr nz, jr_002_717e

    ret nz

    nop
    nop

jr_002_7141:
    nop
    nop
    inc b
    inc bc
    inc bc
    inc c
    ld bc, $181a
    dec h
    ld d, c
    ld a, $2f
    ld e, [hl]
    sbc a
    ld d, d
    ccf
    sub b
    ld l, [hl]
    sbc c
    ld a, a
    ld a, a
    ld a, a
    xor a
    rra
    ld a, a
    dec c
    add hl, hl
    dec b
    rlca
    nop
    nop
    nop
    nop
    ld b, b
    add b
    add b
    ld h, b
    and b
    db $10
    ld d, b
    adc b
    inc d
    ld hl, sp-$18
    db $f4
    ld a, [c]
    sub h
    ld hl, sp+$12
    db $ec
    ld [hl-], a
    db $fc
    db $fc
    db $fc
    ld [$f2fc], a
    ld h, b
    inc l
    ld b, b

jr_002_717e:
    ret nz

    nop
    nop
    nop
    nop
    inc b
    inc bc
    inc de
    inc c
    add hl, bc
    ld [hl-], a
    ld d, c
    inc a
    dec l
    ld e, [hl]
    sbc a
    ld d, d
    ld e, a
    sub b
    ld [hl], $99
    ld c, e
    cp h
    ld a, a
    ld a, a
    ld a, a
    xor a
    ccf
    ld e, a
    dec c
    add hl, sp
    dec b
    rla
    nop
    nop
    nop
    nop
    ld b, b
    add b
    sub b
    ld h, b
    jr nz, jr_002_7141

    sub h
    ld a, b
    ld l, b
    db $f4
    ld a, [c]
    sub h
    db $f4
    ld [de], a
    ret c

    ld [hl-], a
    and h
    ld a, d
    db $fc
    db $fc
    db $fc
    ld [$f2fc], a
    ld h, b
    inc l
    ld b, b
    call nz, RST_00
    inc b
    inc bc
    inc bc
    inc c
    dec b
    ld a, [de]
    db $10
    dec l
    ld e, d
    inc h
    ld sp, $af5e
    ld e, [hl]
    ld d, a
    sub [hl]
    or $f9
    rst $18
    cp a
    ld a, e
    ld a, h
    ld a, a
    cp a
    ld e, a
    adc a
    dec l
    ld c, c
    dec b
    scf
    nop
    nop

jr_002_71e1:
    ld b, b
    add b
    add b
    ld h, b
    and b
    db $10
    ld d, b
    adc b
    inc h
    ld c, b
    jr jr_002_71e1

    ld [c], a
    db $f4
    call nc, $ded2
    ld a, $f6
    ld a, [$7cbc]
    db $fc
    ld a, [$e6f0]
    ld l, b
    inc h
    ld b, b
    ret c

    inc b
    inc bc
    inc bc
    inc c
    ld bc, $101a
    dec l
    ld e, d
    inc h
    ld sp, $8f5e
    ld e, [hl]
    scf
    sub [hl]
    or $f9
    rst $18
    cp a
    ld a, e
    ld a, h
    ld a, a
    cp a
    ld e, a
    adc a
    rrca
    ld e, a
    dec c
    add hl, hl
    dec b
    rlca

jr_002_721f:
    ld b, b
    add b
    add b
    ld h, b
    and b
    db $10
    ld d, b
    adc b
    inc h
    ld c, b
    jr jr_002_721f

    ld [c], a
    db $f4
    ret c

    jp nc, Jump_000_3ede

    or $fa
    cp h
    ld a, h
    ld hl, sp-$02
    db $f4
    ld [c], a
    add sp, -$0c
    ld h, b
    jr z, jr_002_727e

    ret nz

    inc b
    inc bc
    inc de
    inc c
    ld [$5533], sp
    jr z, jr_002_7285

    ld a, [hl]
    rst $30
    ld d, [hl]
    ld a, [hl]
    pop af
    db $76
    ld sp, hl
    ld a, e
    db $fc
    ld a, a
    ccf
    dec sp
    ld e, h
    ccf
    ld c, a
    rra
    cpl
    rrca
    rra
    dec c
    add hl, de
    dec b
    rlca
    ld b, b
    add b
    db $10
    ld h, b
    and b
    jr @+$16

    ret z

    ld a, b
    db $f4
    jp nc, $f4d4

    ld [de], a
    ret c

    ld [hl-], a
    cp h
    ld a, d
    db $fc
    db $fc
    cp [hl]
    ld a, d
    cp $fc
    ldh a, [$e4]
    ldh [$f8], a
    nop
    ret z

    nop

jr_002_727e:
    nop
    ld a, [$c400]
    ld b, $00
    and a

jr_002_7285:
    jr z, jr_002_7288

    inc b

jr_002_7288:
    ld a, [$c408]
    ld de, $0008
    and a
    jr z, jr_002_7292

    inc d

jr_002_7292:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c410]
    ld de, $0010
    and a
    jr z, jr_002_72a8

    inc d

jr_002_72a8:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c418]
    ld de, $0018
    and a
    jr z, jr_002_72be

    inc d

jr_002_72be:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c420]
    ld de, $0020
    and a
    jr z, jr_002_72d4

    inc d

jr_002_72d4:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c428]
    ld de, $0028
    and a
    jr z, jr_002_72ea

    inc d

jr_002_72ea:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c430]
    ld de, $0030
    and a
    jr z, jr_002_7300

    inc d

jr_002_7300:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c438]
    ld de, $0038
    and a
    jr z, jr_002_7316

    inc d

jr_002_7316:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c440]
    ld de, $0040
    and a
    jr z, jr_002_732c

    inc d

jr_002_732c:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c448]
    ld de, $0048
    and a
    jr z, jr_002_7342

    inc d

jr_002_7342:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c450]
    ld de, $0050
    and a
    jr z, jr_002_7358

    inc d

jr_002_7358:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c458]
    ld de, $0058
    and a
    jr z, jr_002_736e

    inc d

jr_002_736e:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c460]
    ld de, $0060
    and a
    jr z, jr_002_7384

    inc d

jr_002_7384:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c468]
    ld de, $0068
    and a
    jr z, jr_002_739a

    inc d

jr_002_739a:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c470]
    ld de, $0070
    and a
    jr z, jr_002_73b0

    inc d

jr_002_73b0:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c478]
    ld de, $0078
    and a
    jr z, jr_002_73c6

    inc d

jr_002_73c6:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c480]
    ld de, $0080
    and a
    jr z, jr_002_73dc

    inc d

jr_002_73dc:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c401]
    ld b, $00
    and a
    jr z, jr_002_73f1

    inc b

jr_002_73f1:
    ld a, [$c409]
    ld de, $0009
    and a
    jr z, jr_002_73fb

    inc d

jr_002_73fb:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c411]
    ld de, $0011
    and a
    jr z, jr_002_7411

    inc d

jr_002_7411:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c419]
    ld de, $0019
    and a
    jr z, jr_002_7427

    inc d

jr_002_7427:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c421]
    ld de, $0021
    and a
    jr z, jr_002_743d

    inc d

jr_002_743d:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c429]
    ld de, $0029
    and a
    jr z, jr_002_7453

    inc d

jr_002_7453:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c431]
    ld de, $0031
    and a
    jr z, jr_002_7469

    inc d

jr_002_7469:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c439]
    ld de, $0039
    and a
    jr z, jr_002_747f

    inc d

jr_002_747f:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c441]
    ld de, $0041
    and a
    jr z, jr_002_7495

    inc d

jr_002_7495:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c449]
    ld de, $0049
    and a
    jr z, jr_002_74ab

    inc d

jr_002_74ab:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c451]
    ld de, $0051
    and a
    jr z, jr_002_74c1

    inc d

jr_002_74c1:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c459]
    ld de, $0059
    and a
    jr z, jr_002_74d7

    inc d

jr_002_74d7:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c461]
    ld de, $0061
    and a
    jr z, jr_002_74ed

    inc d

jr_002_74ed:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c469]

Call_002_74fc:
    ld de, $0069
    and a
    jr z, jr_002_7503

    inc d

jr_002_7503:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c471]
    ld de, $0071
    and a
    jr z, jr_002_7519

    inc d

jr_002_7519:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c479]
    ld de, $0079
    and a
    jr z, jr_002_752f

    inc d

jr_002_752f:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c481]
    ld de, $0081
    and a
    jr z, jr_002_7545

    inc d

jr_002_7545:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c402]
    ld b, $00
    and a
    jr z, jr_002_755a

    inc b

jr_002_755a:
    ld a, [$c40a]
    ld de, $000a
    and a
    jr z, jr_002_7564

    inc d

jr_002_7564:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c412]
    ld de, $0012
    and a
    jr z, jr_002_757a

    inc d

jr_002_757a:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c41a]
    ld de, $001a
    and a
    jr z, jr_002_7590

    inc d

jr_002_7590:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c422]
    ld de, $0022
    and a
    jr z, jr_002_75a6

    inc d

jr_002_75a6:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c42a]
    ld de, $002a
    and a
    jr z, jr_002_75bc

    inc d

jr_002_75bc:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c432]
    ld de, $0032
    and a
    jr z, jr_002_75d2

    inc d

jr_002_75d2:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c43a]
    ld de, $003a
    and a
    jr z, jr_002_75e8

    inc d

jr_002_75e8:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c442]
    ld de, $0042
    and a
    jr z, jr_002_75fe

    inc d

jr_002_75fe:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c44a]
    ld de, $004a
    and a
    jr z, jr_002_7614

    inc d

jr_002_7614:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c452]
    ld de, $0052
    and a
    jr z, jr_002_762a

    inc d

jr_002_762a:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c45a]
    ld de, $005a
    and a
    jr z, jr_002_7640

    inc d

jr_002_7640:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c462]
    ld de, $0062
    and a
    jr z, jr_002_7656

    inc d

jr_002_7656:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c46a]
    ld de, $006a
    and a
    jr z, jr_002_766c

    inc d

jr_002_766c:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c472]
    ld de, $0072
    and a
    jr z, jr_002_7682

    inc d

jr_002_7682:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c47a]
    ld de, $007a
    and a
    jr z, jr_002_7698

    inc d

jr_002_7698:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c482]
    ld de, $0082
    and a
    jr z, jr_002_76ae

    inc d

jr_002_76ae:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c403]
    ld b, $00
    and a
    jr z, jr_002_76c3

    inc b

jr_002_76c3:
    ld a, [$c40b]
    ld de, $000b
    and a
    jr z, jr_002_76cd

    inc d

jr_002_76cd:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c413]
    ld de, $0013
    and a
    jr z, jr_002_76e3

    inc d

jr_002_76e3:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c41b]
    ld de, $001b
    and a
    jr z, jr_002_76f9

    inc d

jr_002_76f9:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c423]
    ld de, $0023
    and a
    jr z, jr_002_770f

    inc d

jr_002_770f:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c42b]
    ld de, $002b
    and a
    jr z, jr_002_7725

    inc d

jr_002_7725:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c433]
    ld de, $0033
    and a
    jr z, jr_002_773b

    inc d

jr_002_773b:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c43b]
    ld de, $003b
    and a
    jr z, jr_002_7751

    inc d

jr_002_7751:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c443]
    ld de, $0043
    and a
    jr z, jr_002_7767

    inc d

jr_002_7767:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c44b]
    ld de, $004b
    and a
    jr z, jr_002_777d

    inc d

jr_002_777d:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c453]
    ld de, $0053
    and a
    jr z, jr_002_7793

    inc d

jr_002_7793:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c45b]
    ld de, $005b
    and a
    jr z, jr_002_77a9

    inc d

jr_002_77a9:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c463]
    ld de, $0063
    and a
    jr z, jr_002_77bf

    inc d

jr_002_77bf:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c46b]
    ld de, $006b
    and a
    jr z, jr_002_77d5

    inc d

jr_002_77d5:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c473]
    ld de, $0073
    and a
    jr z, jr_002_77eb

    inc d

jr_002_77eb:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c47b]
    ld de, $007b
    and a
    jr z, jr_002_7801

    inc d

jr_002_7801:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c483]
    ld de, $0083
    and a
    jr z, jr_002_7817

    inc d

jr_002_7817:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c404]
    ld b, $00
    and a
    jr z, jr_002_782c

    inc b

jr_002_782c:
    ld a, [$c40c]
    ld de, $000c
    and a
    jr z, jr_002_7836

    inc d

jr_002_7836:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c414]
    ld de, $0014
    and a
    jr z, jr_002_784c

    inc d

jr_002_784c:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c41c]
    ld de, $001c
    and a
    jr z, jr_002_7862

    inc d

jr_002_7862:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c424]
    ld de, $0024
    and a
    jr z, jr_002_7878

    inc d

jr_002_7878:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c42c]
    ld de, $002c
    and a
    jr z, jr_002_788e

    inc d

jr_002_788e:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c434]
    ld de, $0034
    and a
    jr z, jr_002_78a4

    inc d

jr_002_78a4:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c43c]
    ld de, $003c
    and a
    jr z, jr_002_78ba

    inc d

jr_002_78ba:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c444]
    ld de, $0044
    and a
    jr z, jr_002_78d0

    inc d

jr_002_78d0:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c44c]
    ld de, $004c
    and a
    jr z, jr_002_78e6

    inc d

jr_002_78e6:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c454]
    ld de, $0054
    and a
    jr z, jr_002_78fc

    inc d

jr_002_78fc:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c45c]
    ld de, $005c
    and a
    jr z, jr_002_7912

    inc d

jr_002_7912:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c464]
    ld de, $0064
    and a
    jr z, jr_002_7928

    inc d

jr_002_7928:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c46c]
    ld de, $006c
    and a
    jr z, jr_002_793e

    inc d

jr_002_793e:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c474]
    ld de, $0074
    and a
    jr z, jr_002_7954

    inc d

jr_002_7954:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c47c]
    ld de, $007c
    and a
    jr z, jr_002_796a

    inc d

jr_002_796a:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c484]
    ld de, $0084
    and a
    jr z, jr_002_7980

    inc d

jr_002_7980:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c405]
    ld b, $00
    and a
    jr z, jr_002_7995

    inc b

jr_002_7995:
    ld a, [$c40d]
    ld de, $000d
    and a
    jr z, jr_002_799f

    inc d

jr_002_799f:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c415]
    ld de, $0015
    and a
    jr z, jr_002_79b5

    inc d

jr_002_79b5:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c41d]
    ld de, $001d
    and a
    jr z, jr_002_79cb

    inc d

jr_002_79cb:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c425]
    ld de, $0025
    and a
    jr z, jr_002_79e1

    inc d

jr_002_79e1:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c42d]
    ld de, $002d
    and a
    jr z, jr_002_79f7

    inc d

jr_002_79f7:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c435]
    ld de, $0035
    and a
    jr z, jr_002_7a0d

    inc d

jr_002_7a0d:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c43d]
    ld de, $003d
    and a
    jr z, jr_002_7a23

    inc d

jr_002_7a23:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c445]
    ld de, $0045
    and a

Jump_002_7a36:
    jr z, jr_002_7a39

    inc d

jr_002_7a39:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c44d]
    ld de, $004d
    and a
    jr z, jr_002_7a4f

    inc d

jr_002_7a4f:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c455]
    ld de, $0055
    and a
    jr z, jr_002_7a65

    inc d

jr_002_7a65:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c45d]
    ld de, $005d
    and a
    jr z, jr_002_7a7b

    inc d

jr_002_7a7b:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c465]
    ld de, $0065
    and a
    jr z, jr_002_7a91

    inc d

jr_002_7a91:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c46d]
    ld de, $006d
    and a
    jr z, jr_002_7aa7

    inc d

jr_002_7aa7:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c475]
    ld de, $0075
    and a
    jr z, jr_002_7abd

    inc d

jr_002_7abd:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c47d]
    ld de, $007d
    and a
    jr z, jr_002_7ad3

    inc d

jr_002_7ad3:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c485]
    ld de, $0085
    and a
    jr z, jr_002_7ae9

    inc d

jr_002_7ae9:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c406]
    ld b, $00
    and a
    jr z, jr_002_7afe

    inc b

jr_002_7afe:
    ld a, [$c40e]
    ld de, $000e
    and a
    jr z, jr_002_7b08

    inc d

jr_002_7b08:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c416]
    ld de, $0016
    and a
    jr z, jr_002_7b1e

    inc d

jr_002_7b1e:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c41e]
    ld de, $001e
    and a
    jr z, jr_002_7b34

    inc d

jr_002_7b34:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c426]
    ld de, $0026
    and a
    jr z, jr_002_7b4a

    inc d

jr_002_7b4a:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c42e]
    ld de, $002e
    and a
    jr z, jr_002_7b60

    inc d

jr_002_7b60:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c436]
    ld de, $0036
    and a
    jr z, jr_002_7b76

    inc d

jr_002_7b76:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c43e]
    ld de, $003e
    and a
    jr z, jr_002_7b8c

    inc d

jr_002_7b8c:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c446]
    ld de, $0046
    and a
    jr z, jr_002_7ba2

    inc d

jr_002_7ba2:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c44e]
    ld de, $004e
    and a
    jr z, jr_002_7bb8

    inc d

jr_002_7bb8:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c456]
    ld de, $0056
    and a
    jr z, jr_002_7bce

    inc d

jr_002_7bce:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c45e]
    ld de, $005e
    and a
    jr z, jr_002_7be4

    inc d

jr_002_7be4:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c466]
    ld de, $0066
    and a
    jr z, jr_002_7bfa

    inc d

jr_002_7bfa:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c46e]
    ld de, $006e
    and a
    jr z, jr_002_7c10

    inc d

jr_002_7c10:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c476]
    ld de, $0076
    and a
    jr z, jr_002_7c26

    inc d

jr_002_7c26:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ld a, [$c47e]
    ld de, $007e
    and a
    jr z, jr_002_7c3c

    inc d

jr_002_7c3c:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61

Call_002_7c48:
    ld a, [$c486]
    ld de, $0086
    and a
    jr z, jr_002_7c52

    inc d

jr_002_7c52:
    ld a, b
    xor d
    ld b, d
    rr d
    rl a
    cp $03
    call z, Call_002_7c61
    ret


jr_002_7c5f:
    pop bc
    ret


Call_002_7c61:
    push bc
    ld c, e
    ld b, $20
    ld hl, $cb00
    ld de, $0010

jr_002_7c6b:
    ld a, [hl]
    and a
    jr z, jr_002_7c74

    inc hl
    ld a, [hl-]
    cp c
    jr z, jr_002_7c5f

jr_002_7c74:
    add hl, de
    dec b
    jr nz, jr_002_7c6b

    ld hl, $cb00

jr_002_7c7b:
    ld a, [hl]
    and a
    jr z, jr_002_7c82

    add hl, de
    jr jr_002_7c7b

jr_002_7c82:
    ld e, c
    ld a, $fe
    ld [hl+], a
    ld [hl], e
    inc l
    ld d, $c4
    ld a, [de]
    ld [hl+], a
    ld a, e
    srl a
    srl a
    srl a
    and $0f
    ld [hl+], a
    ld a, e
    and $07
    add a
    ld [hl], a
    pop bc
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

Call_002_7cfc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
