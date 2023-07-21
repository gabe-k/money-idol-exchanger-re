; Disassembly of "money_idol_exchanger.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    ld hl, $4162
    ld de, $8000
    ld bc, $0800
    call memcpy
    ld hl, $4962
    ld de, $8800
    ld bc, $0800
    call memcpy
    ld hl, $5162
    ld de, $9000
    ld bc, $0800
    call memcpy
    ld hl, $6714
    ld de, $8a00
    ld bc, $01e0
    jp Jump_000_0634


    ld hl, $4162
    ld de, $8000
    ld bc, $0800
    call memcpy
    ld hl, $4962
    ld de, $8800
    ld bc, $0800
    call memcpy
    ld hl, $5962
    ld de, $9000
    ld bc, $0800
    call memcpy
    ld a, [$cf29]
    ld hl, $6162
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $93b0
    ld b, $60

jr_00b_4065:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00b_4065

    ld a, [$cf29]
    ld hl, $68f6
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9660
    ld bc, $01a0

jr_00b_407d:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_00b_407d

    ld a, [$cf29]
    ld hl, $6906
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9dc1
    call Call_000_0683
    ld a, [$cf29]
    ld hl, $6906
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $c310
    ld b, $36

jr_00b_40a8:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00b_40a8

    ret


    ld hl, $4162
    ld de, $8000
    ld bc, $0800
    call memcpy
    ld hl, $4962
    ld de, $8800
    ld bc, $0800
    call memcpy
    ld hl, $5962
    ld de, $9000
    ld bc, $0800
    call memcpy
    ld hl, $4142
    ld de, $90f0
    ld bc, $0020
    call memcpy
    ld a, [$cf5c]
    swap a
    and $0f
    jr z, jr_00b_40fc

    ld hl, $6480
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $93b0
    ld b, $40

jr_00b_40f6:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00b_40f6

jr_00b_40fc:
    ld a, [$cf5c]
    and $0f
    ld hl, $6480
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $93f0
    ld b, $40

jr_00b_410f:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00b_410f

    ld a, [$cf29]
    ld hl, $68f4
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9660
    ld bc, $01a0

jr_00b_4127:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_00b_4127

    ld a, [$cf29]
    ld hl, $6904
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9dc1
    call Call_000_0683
    ret


    nop
    nop
    nop
    nop
    ld c, [hl]
    ld c, [hl]
    jp z, $4eca

    ld c, [hl]
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    ld h, a
    sub l
    sub l
    daa
    daa
    ld b, h
    ld b, h
    db $f4
    db $f4
    nop
    nop
    jr jr_00b_417c

    inc [hl]
    inc l
    inc h
    inc l
    ld b, d
    ld l, [hl]
    ld h, d
    ld c, [hl]
    add c
    rst $08
    pop de
    adc a
    pop de
    adc a
    ld c, [hl]
    ld a, [hl]
    inc l
    inc a
    jr @+$1a

    inc h
    inc a
    ld e, d
    ld h, [hl]

jr_00b_417c:
    ld d, d
    ld l, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    jr jr_00b_418e

    ld [$0018], sp
    nop
    nop
    nop
    jr jr_00b_4196

jr_00b_418e:
    ld [$0018], sp
    nop
    nop
    nop
    jr jr_00b_419e

jr_00b_4196:
    ld [$0018], sp
    nop
    nop
    nop
    jr jr_00b_41a6

jr_00b_419e:
    ld [$0018], sp
    nop
    jr jr_00b_41bc

    inc [hl]
    inc h

jr_00b_41a6:
    inc h
    inc h
    ld b, d
    ld h, [hl]
    ld h, d
    ld b, [hl]
    add c
    rst $00
    rst $00
    add c
    or c
    rst $00
    ld e, [hl]
    ld h, [hl]
    inc l
    inc [hl]
    jr jr_00b_41d0

    inc h
    inc a
    ld e, d
    ld h, [hl]

jr_00b_41bc:
    ld d, d
    ld l, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    inc a
    jr jr_00b_41cc

    ld [$0018], sp
    nop
    nop
    nop
    jr jr_00b_41d4

jr_00b_41cc:
    ld [$0018], sp
    nop

jr_00b_41d0:
    nop
    nop
    jr jr_00b_41dc

jr_00b_41d4:
    ld [$0018], sp
    nop
    nop
    nop
    jr jr_00b_41e4

jr_00b_41dc:
    ld [$0018], sp
    nop
    nop
    nop
    jr jr_00b_41fc

jr_00b_41e4:
    inc l
    inc [hl]
    inc l
    inc [hl]
    ld b, d
    db $76
    ld h, [hl]
    ld d, d
    and c
    db $d3
    db $eb
    sub c
    adc e
    pop af
    ld a, d
    ld a, [hl]
    inc [hl]
    inc a
    jr jr_00b_4210

    inc h
    inc a
    ld e, d
    ld h, [hl]

jr_00b_41fc:
    ld d, d
    ld l, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    inc a
    ld [$0018], sp
    nop
    nop
    nop
    jr jr_00b_4212

    ld [$0018], sp
    nop
    nop
    nop

jr_00b_4210:
    jr jr_00b_421a

jr_00b_4212:
    ld [$0018], sp
    nop
    nop
    nop
    jr jr_00b_4222

jr_00b_421a:
    ld [$0018], sp
    nop
    nop
    nop
    jr jr_00b_422a

jr_00b_4222:
    jr jr_00b_423c

    inc [hl]
    inc l
    inc h
    inc l
    ld h, d
    ld c, [hl]

jr_00b_422a:
    ld b, [hl]
    ld c, d
    sub l
    res 2, a
    adc c
    or e
    adc a
    ld e, [hl]
    ld a, [hl]
    inc l
    inc a
    jr jr_00b_4250

    inc h
    inc a
    ld e, d
    ld h, [hl]

jr_00b_423c:
    ld d, d
    ld l, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    inc a

Call_00b_4242:
    nop
    nop
    nop
    nop
    jr jr_00b_4250

    ld [$0018], sp
    nop
    nop
    nop
    jr jr_00b_4258

jr_00b_4250:
    ld [$0018], sp
    nop
    nop
    nop
    jr jr_00b_4260

jr_00b_4258:
    ld [$0018], sp
    nop
    nop
    nop
    jr jr_00b_4268

jr_00b_4260:
    ld [$0018], sp
    nop
    nop
    nop
    ccf
    ccf

jr_00b_4268:
    jr nz, jr_00b_42a9

    jr nz, jr_00b_42ab

    jr nz, jr_00b_42ad

    jr nz, jr_00b_42af

    jr nz, jr_00b_42b1

    db $10
    rra
    inc c
    rrca
    ld b, $03
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp Jump_00b_66ff


    inc a
    jr jr_00b_42b8

    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    inc b

jr_00b_42a9:
    db $fc
    inc b

jr_00b_42ab:
    db $fc
    inc b

jr_00b_42ad:
    db $fc
    inc b

jr_00b_42af:
    db $fc
    inc b

jr_00b_42b1:
    db $fc
    ld [$30f8], sp
    ldh a, [$60]

jr_00b_42b7:
    ret nz

jr_00b_42b8:
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
    ccf
    rra
    jr nz, jr_00b_42ea

    jr nz, jr_00b_42ec

    jr nz, jr_00b_42ee

    jr nz, jr_00b_42f0

    jr nz, jr_00b_42e2

    db $10
    inc bc
    inc c
    dec b
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop

jr_00b_42e2:
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop

jr_00b_42ea:
    rst $38
    nop

jr_00b_42ec:
    rst $38
    nop

jr_00b_42ee:
    rst $38
    nop

jr_00b_42f0:
    rst $38
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
    jp $245a


    nop
    jr jr_00b_4301

jr_00b_4301:
    nop
    nop
    nop
    nop
    nop

jr_00b_4306:
    nop
    db $fc
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ldh a, [$08]
    ret nz

    jr nc, jr_00b_42b7

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
    inc b
    inc bc
    nop
    inc c
    ld [$2011], sp
    inc de
    nop
    ld hl, $3130
    ld c, b
    ld c, c
    ld e, b
    ld c, e
    jr c, jr_00b_4366

    nop
    inc c
    inc b
    inc bc
    rlca
    rlca
    dec b
    inc b
    inc b
    ld b, $02
    inc bc
    nop
    nop
    jr nz, jr_00b_4306

    nop
    jr nc, jr_00b_4359

    adc b
    inc b
    adc b
    nop
    add h
    inc c
    adc h
    ld [de], a
    sub d
    ld d, $d2
    inc e
    inc c
    nop
    jr nc, jr_00b_4379

jr_00b_4359:
    ret nz

    ldh [$e0], a
    and b
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop

jr_00b_4366:
    inc b
    inc bc
    nop
    inc c
    ld [$2011], sp
    inc de
    nop
    ld hl, $3130
    ld c, b
    ld c, c
    ld e, b
    ld c, e
    jr c, jr_00b_43a8

    nop

jr_00b_4379:
    inc c
    inc b
    inc bc
    rrca
    rrca
    dec bc
    dec c
    dec b
    rlca
    nop
    nop
    nop
    nop

jr_00b_4386:
    jr nz, @-$3e

    nop
    jr nc, jr_00b_439b

    adc b
    inc b
    adc b
    nop
    add h
    inc c
    adc h
    ld [de], a
    sub d
    ld d, $d2
    inc e
    inc c
    nop
    jr nc, jr_00b_43bb

jr_00b_439b:
    ret nz

    ldh [$e0], a
    and b
    ld h, b
    ld b, b
    ret nz

    nop
    nop
    inc b
    inc bc
    nop
    inc c

jr_00b_43a8:
    ld [$2011], sp
    inc de
    nop
    ld hl, $3130
    ld c, b
    ld c, c
    ld e, b
    ld c, e
    jr c, @+$32

    nop
    inc c
    inc b
    inc bc
    rlca

jr_00b_43bb:
    rlca
    dec b
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    jr nz, jr_00b_4386

    nop
    jr nc, jr_00b_43d9

    adc b
    inc b
    adc b
    nop
    add h
    inc c
    adc h
    ld [de], a
    sub d
    ld d, $d2
    inc e
    inc c
    nop
    jr nc, jr_00b_43f9

jr_00b_43d9:
    ret nz

    ldh [$e0], a
    and b
    jr nz, jr_00b_43ff

    ld h, b
    ld b, b
    ret nz

    nop
    nop
    ld [$0707], sp
    jr jr_00b_4418

    rla
    rra
    ld h, $1f
    ld h, $3f
    scf
    ld c, a
    ld c, b
    ld e, a
    ld c, b
    ccf
    scf
    rlca
    jr jr_00b_4401

jr_00b_43f9:
    rlca
    rlca
    rlca
    dec b

jr_00b_43fd:
    inc b
    inc b

jr_00b_43ff:
    ld b, $02

jr_00b_4401:
    inc bc
    nop
    nop
    db $10
    ldh [$e0], a
    jr jr_00b_43fd

    add sp, -$08
    inc b
    ld hl, sp+$04
    db $fc
    db $ec
    ld a, [c]
    ld [hl], d
    or $72
    db $fc
    db $ec
    ldh [rNR23], a

jr_00b_4418:
    db $10
    ldh [$e0], a
    ldh [$a0], a
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ld [$0707], sp
    jr jr_00b_445a

    rla
    rra
    ld h, $1f
    ld h, $3f
    scf
    ld c, a
    ld c, b
    ld e, a
    ld c, b
    ccf
    scf
    rlca
    jr jr_00b_4443

    rlca
    rrca
    rrca
    dec bc

jr_00b_443f:
    dec c
    dec b
    rlca
    nop

jr_00b_4443:
    nop
    nop
    nop
    db $10
    ldh [$e0], a
    jr jr_00b_443f

    add sp, -$08
    inc b
    ld hl, sp+$04
    db $fc
    db $ec
    ld a, [c]
    ld [hl], d
    or $72
    db $fc
    db $ec
    ldh [rNR23], a

jr_00b_445a:
    db $10
    ldh [$e0], a
    ldh [$a0], a
    ld h, b
    ld b, b
    ret nz

    nop
    nop
    ld [$0707], sp
    jr jr_00b_4498

    rla
    rra
    ld h, $1f
    ld h, $3f
    scf
    ld c, a
    ld c, b
    ld e, a
    ld c, b
    ccf
    scf
    rlca
    jr @+$0a

    rlca
    rlca
    rlca
    dec b

jr_00b_447d:
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    db $10
    ldh [$e0], a
    jr jr_00b_447d

    add sp, -$08
    inc b
    ld hl, sp+$04
    db $fc
    db $ec
    ld a, [c]
    ld [hl], d
    or $72
    db $fc
    db $ec
    ldh [rNR23], a

jr_00b_4498:
    db $10
    ldh [$e0], a
    ldh [$a0], a
    jr nz, jr_00b_44bf

    ld h, b
    ld b, b
    ret nz

    rlca
    nop
    jr jr_00b_44ad

jr_00b_44a6:
    jr nz, jr_00b_44c7

    jr nz, @+$1d

    ld b, b
    inc sp
    ld b, b

jr_00b_44ad:
    dec sp
    ld h, b
    ld a, e
    sub b
    sbc e
    or b
    sbc e
    ld h, b
    ld [hl], c
    jr nz, jr_00b_44d7

    jr jr_00b_44c1

    rlca
    rlca
    dec b
    inc b
    inc b

jr_00b_44bf:
    ld b, $02

jr_00b_44c1:
    inc bc
    ldh [rP1], a
    jr jr_00b_44a6

    inc b

jr_00b_44c7:
    ld hl, sp+$04
    ld [$6c02], sp
    ld [bc], a
    ld l, h
    ld b, $6e
    add hl, bc
    ld l, c
    dec bc
    ld l, c
    ld b, $0e
    inc b

jr_00b_44d7:
    ld hl, sp+$18
    ldh [$e0], a
    ldh [$a0], a
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    rlca
    nop
    jr jr_00b_44ef

jr_00b_44e8:
    jr nz, jr_00b_4509

    jr nz, @+$1d

    ld b, b
    inc sp
    ld b, b

jr_00b_44ef:
    dec sp
    ld h, b
    ld a, e
    sub b
    sbc e
    or b
    sbc e
    ld h, b
    ld [hl], c
    jr nz, jr_00b_4519

    jr jr_00b_4503

    rrca
    rrca
    dec bc
    dec c
    dec b
    rlca
    nop

jr_00b_4503:
    nop
    ldh [rP1], a
    jr jr_00b_44e8

    inc b

jr_00b_4509:
    ld hl, sp+$04
    ld [$6c02], sp
    ld [bc], a
    ld l, h
    ld b, $6e
    add hl, bc
    ld l, c
    dec bc
    ld l, c
    ld b, $0e
    inc b

jr_00b_4519:
    ld hl, sp+$18
    ldh [$e0], a
    ldh [$a0], a
    ld h, b
    ld b, b
    ret nz

    rlca
    nop
    jr jr_00b_452d

jr_00b_4526:
    jr nz, jr_00b_4547

    jr nz, @+$1d

    ld b, b
    inc sp
    ld b, b

jr_00b_452d:
    dec sp
    ld h, b
    ld a, e
    sub b
    sbc e
    or b
    sbc e
    ld h, b
    ld [hl], c
    jr nz, jr_00b_4557

    jr @+$09

    rlca
    rlca
    dec b
    rlca
    inc bc
    inc bc
    ld bc, $e001
    nop
    jr jr_00b_4526

    inc b

jr_00b_4547:
    ld hl, sp+$04
    ld [$6c02], sp
    ld [bc], a
    ld l, h
    ld b, $6e
    add hl, bc
    ld l, c
    dec bc
    ld l, c
    ld b, $0e
    inc b

jr_00b_4557:
    ld hl, sp+$18
    ldh [$e0], a
    ldh [$a0], a
    jr nz, jr_00b_457f

    ld h, b
    ld b, b
    ret nz

    rlca
    rlca
    jr jr_00b_457e

    jr nz, jr_00b_4598

    ld l, $2e
    ld l, b
    ld c, b
    ld c, b
    ld c, b
    ld l, [hl]
    ld l, [hl]
    sub d
    sub d
    or d
    sub d
    ld l, [hl]
    ld l, [hl]
    jr nz, jr_00b_45a8

    jr jr_00b_4592

    rlca
    rlca
    dec b
    inc b

jr_00b_457e:
    inc b

jr_00b_457f:
    ld b, $02
    inc bc
    ldh [$e0], a
    jr @+$1a

    inc b
    inc c
    db $f4
    db $f4
    sub [hl]
    sub d
    sub d
    sub d
    sub [hl]
    sub [hl]
    sbc c
    sbc c

jr_00b_4592:
    sbc e
    sbc c
    or $f6
    inc b
    inc c

jr_00b_4598:
    jr jr_00b_45b2

    ldh [$e0], a
    and b
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    rlca
    rlca
    jr jr_00b_45c0

jr_00b_45a8:
    jr nz, jr_00b_45da

    ld l, $2e
    ld l, b
    ld c, b
    ld c, b
    ld c, b
    ld l, [hl]
    ld l, [hl]

jr_00b_45b2:
    sub d
    sub d
    or d
    sub d
    ld l, [hl]
    ld l, [hl]
    jr nz, jr_00b_45ea

    jr jr_00b_45d4

    rrca
    rrca
    dec bc
    dec c

jr_00b_45c0:
    dec b
    rlca
    nop
    nop
    ldh [$e0], a
    jr jr_00b_45e0

    inc b
    inc c
    db $f4
    db $f4
    sub [hl]
    sub d
    sub d
    sub d
    sub [hl]
    sub [hl]
    sbc c
    sbc c

jr_00b_45d4:
    sbc e
    sbc c
    or $f6
    inc b
    inc c

jr_00b_45da:
    jr jr_00b_45f4

    ldh [$e0], a
    and b
    ld h, b

jr_00b_45e0:
    ld b, b
    ret nz

    rlca
    rlca
    jr jr_00b_45fe

    jr nz, jr_00b_4618

    ld l, $2e

jr_00b_45ea:
    ld l, b
    ld c, b
    ld c, b
    ld c, b
    ld l, [hl]
    ld l, [hl]
    sub d
    sub d
    or d
    sub d

jr_00b_45f4:
    ld l, [hl]
    ld l, [hl]
    jr nz, @+$32

    jr jr_00b_4612

    rlca
    rlca
    dec b
    rlca

jr_00b_45fe:
    inc bc
    inc bc
    ld bc, $e001
    ldh [rNR23], a
    jr jr_00b_460b

    inc c
    db $f4
    db $f4
    sub [hl]

jr_00b_460b:
    sub d
    sub d
    sub d
    sub [hl]
    sub [hl]
    sbc c
    sbc c

jr_00b_4612:
    sbc e
    sbc c
    or $f6
    inc b
    inc c

jr_00b_4618:
    jr jr_00b_4632

    ldh [$e0], a
    and b
    jr nz, jr_00b_463f

    ld h, b
    ld b, b
    ret nz

    rrca
    rlca
    rra
    jr jr_00b_4666

    jr nz, @+$81

    dec hl
    ld a, [hl]
    ld e, d
    ld a, [hl]
    ld c, d
    ld a, [hl]
    ld l, d
    sbc [hl]
    sbc d

jr_00b_4632:
    cp [hl]
    sbc d
    ld a, a
    ld l, e
    ccf
    jr nz, jr_00b_4658

    jr jr_00b_464a

    rlca
    dec b
    inc b
    inc b

jr_00b_463f:
    ld b, $02
    inc bc
    ldh a, [$e0]
    ld hl, sp+$18
    db $fc
    inc b
    cp $bc

jr_00b_464a:
    xor $aa
    xor $aa
    xor $ae
    jp hl


    xor c
    db $eb
    xor c
    cp $be
    db $fc
    inc b

jr_00b_4658:
    ld hl, sp+$18
    ldh a, [$e0]
    and b
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    rrca
    rlca

jr_00b_4666:
    rra
    jr @+$41

    jr nz, jr_00b_46ea

    dec hl
    ld a, [hl]
    ld e, d
    ld a, [hl]
    ld c, d
    ld a, [hl]
    ld l, d
    sbc [hl]
    sbc d
    cp [hl]
    sbc d
    ld a, a
    ld l, e
    ccf
    jr nz, jr_00b_469a

    jr jr_00b_468c

    rrca
    dec bc
    dec c
    dec b
    rlca
    nop
    nop
    ldh a, [$e0]
    ld hl, sp+$18
    db $fc
    inc b
    cp $bc

jr_00b_468c:
    xor $aa
    xor $aa
    xor $ae
    jp hl


    xor c
    db $eb
    xor c
    cp $be
    db $fc
    inc b

jr_00b_469a:
    ld hl, sp+$18
    ldh a, [$e0]
    and b
    ld h, b
    ld b, b
    ret nz

    rrca
    rlca
    rra
    jr jr_00b_46e6

    jr nz, jr_00b_4728

    dec hl
    ld a, [hl]
    ld e, d
    ld a, [hl]
    ld c, d
    ld a, [hl]
    ld l, d
    sbc [hl]
    sbc d
    cp [hl]
    sbc d
    ld a, a

jr_00b_46b5:
    ld l, e
    ccf
    jr nz, jr_00b_46d8

    jr jr_00b_46ca

    rlca
    dec b
    rlca
    inc bc
    inc bc
    ld bc, $f001

jr_00b_46c3:
    ldh [$f8], a
    jr jr_00b_46c3

    inc b
    cp $bc

jr_00b_46ca:
    xor $aa
    xor $aa
    xor $ae
    jp hl


    xor c
    db $eb
    xor c
    cp $be
    db $fc
    inc b

jr_00b_46d8:
    ld hl, sp+$18
    ldh a, [$e0]
    and b
    jr nz, jr_00b_46ff

    ld h, b
    ld b, b
    ret nz

    rrca
    rlca
    rrca
    rra

jr_00b_46e6:
    rra
    ccf
    ld h, d
    ld [hl+], a

jr_00b_46ea:
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld h, d
    ld h, d
    sbc d
    sbc d
    cp d
    sbc d
    ld h, d
    ld h, d
    rra

jr_00b_46f7:
    ccf
    rrca
    rra
    rrca
    rlca
    dec b
    inc b
    inc b

jr_00b_46ff:
    ld b, $02
    inc bc
    ldh a, [$e0]
    ldh a, [$f8]
    ld hl, sp-$04
    ld [hl+], a
    jr nz, jr_00b_46b5

    xor d
    xor d
    xor d
    xor [hl]
    xor [hl]
    xor c
    xor c
    xor e
    xor c
    ld h, $26
    ld hl, sp-$04
    ldh a, [$f8]
    ldh a, [$e0]
    and b
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    rrca
    rlca
    rrca
    rra

jr_00b_4728:
    rra
    ccf
    ld h, d
    ld [hl+], a
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld h, d
    ld h, d
    sbc d
    sbc d
    cp d

jr_00b_4735:
    sbc d
    ld h, d
    ld h, d
    rra
    ccf
    rrca
    rra
    rlca
    rrca
    dec bc
    dec c
    dec b
    rlca
    nop
    nop
    ldh a, [$e0]
    ldh a, [$f8]
    ld hl, sp-$04
    ld [hl+], a
    jr nz, jr_00b_46f7

    xor d
    xor d
    xor d
    xor [hl]
    xor [hl]
    xor c
    xor c
    xor e
    xor c
    ld h, $26
    ld hl, sp-$04
    ldh a, [$f8]
    ldh a, [$e0]
    and b
    ld h, b
    ld b, b
    ret nz

    rrca
    rlca
    rrca
    rra
    rra
    ccf
    ld h, d
    ld [hl+], a
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld h, d
    ld h, d
    sbc d
    sbc d
    cp d
    sbc d
    ld h, d
    ld h, d
    rra
    ccf
    rrca
    rra
    rrca
    rlca
    dec b
    rlca
    inc bc
    inc bc
    ld bc, $f001
    ldh [$f0], a
    ld hl, sp-$08
    db $fc
    ld [hl+], a
    jr nz, jr_00b_4735

    xor d
    xor d
    xor d
    xor [hl]
    xor [hl]
    xor c
    xor c
    xor e
    xor c
    ld h, $26
    ld hl, sp-$04
    ldh a, [$f8]
    ldh a, [$e0]
    and b
    jr nz, jr_00b_47bf

    ld h, b
    ld b, b
    ret nz

    nop
    ld a, a
    ccf
    ld b, b
    jr nz, jr_00b_4807

    jr nz, jr_00b_4802

    jr nz, jr_00b_4805

    jr nz, jr_00b_4807

    ld h, b
    ld a, b
    sub b
    sbc c
    or b
    sbc c
    ld h, b
    ld a, b
    jr nz, @+$61

    ccf
    ld b, b
    nop
    ld a, a
    dec b
    inc b
    inc b

jr_00b_47bf:
    ld b, $02
    inc bc
    nop
    cp $fc
    ld [bc], a
    inc b
    ld a, [$1a04]
    inc b
    ld a, [$fa04]
    ld b, $1e
    add hl, bc
    ld sp, hl
    dec bc
    ld sp, hl
    ld b, $1e
    inc b
    ld a, [$02fc]
    nop
    cp $a0
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    ld a, a
    ccf
    ld b, b
    jr nz, @+$61

    jr nz, @+$5a

    jr nz, jr_00b_4847

    jr nz, @+$5b

    ld h, b
    ld a, b
    sub b
    sbc c
    or b
    sbc c
    ld h, b
    ld a, b
    jr nz, @+$61

    ccf
    ld b, b
    nop
    ld a, a
    dec bc
    dec c
    dec b
    rlca

jr_00b_4802:
    nop
    nop
    nop

jr_00b_4805:
    cp $fc

jr_00b_4807:
    ld [bc], a
    inc b
    ld a, [$1a04]
    inc b
    ld a, [$fa04]
    ld b, $1e
    add hl, bc
    ld sp, hl
    dec bc
    ld sp, hl
    ld b, $1e
    inc b
    ld a, [$02fc]
    nop
    cp $a0
    ld h, b
    ld b, b
    ret nz

    nop
    ld a, a
    ccf
    ld b, b
    jr nz, jr_00b_4887

    jr nz, jr_00b_4882

    jr nz, jr_00b_4885

    jr nz, jr_00b_4887

    ld h, b
    ld a, b
    sub b
    sbc c
    or b
    sbc c
    ld h, b
    ld a, b
    jr nz, jr_00b_4897

    ccf
    ld b, b
    nop
    ld a, a
    dec b
    rlca
    inc bc
    inc bc
    ld bc, $0001
    cp $fc
    ld [bc], a
    inc b

jr_00b_4847:
    ld a, [$1a04]
    inc b
    ld a, [$fa04]
    ld b, $1e
    add hl, bc
    ld sp, hl
    dec bc
    ld sp, hl
    ld b, $1e
    inc b
    ld a, [$02fc]
    nop
    cp $a0
    jr nz, jr_00b_487f

    ld h, b
    ld b, b
    ret nz

    ld a, a
    nop
    ld b, b
    ccf
    ld b, b
    jr nz, @+$49

    jr nz, jr_00b_48b1

    jr nz, jr_00b_48b3

    jr nz, jr_00b_48d6

    ld h, b
    sub [hl]
    sub b
    or [hl]
    sub b
    ld h, [hl]
    ld h, b
    ld b, b
    jr nz, jr_00b_48b9

    ccf
    ld a, a
    nop
    dec b
    inc b
    inc b

jr_00b_487f:
    ld b, $02
    inc bc

jr_00b_4882:
    cp $00
    ld [bc], a

jr_00b_4885:
    db $fc
    ld [bc], a

jr_00b_4887:
    inc b
    ld [c], a
    inc b
    ld [hl-], a
    inc b
    ld [hl-], a
    inc b
    and $06
    ret


    add hl, bc
    ld l, e
    add hl, bc
    ld [hl], $06
    ld [bc], a

jr_00b_4897:
    inc b
    ld [bc], a
    db $fc
    cp $00
    and b
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    ld a, a
    nop
    ld b, b
    ccf
    ld b, b
    jr nz, jr_00b_48f2

    jr nz, jr_00b_48f3

    jr nz, jr_00b_48f5

    jr nz, jr_00b_4918

jr_00b_48b1:
    ld h, b
    sub [hl]

jr_00b_48b3:
    sub b
    or [hl]
    sub b
    ld h, [hl]
    ld h, b
    ld b, b

jr_00b_48b9:
    jr nz, jr_00b_48fb

    ccf
    ld a, a
    nop
    dec bc
    dec c
    dec b
    rlca
    nop
    nop
    cp $00
    ld [bc], a
    db $fc
    ld [bc], a
    inc b
    ld [c], a
    inc b
    ld [hl-], a
    inc b
    ld [hl-], a
    inc b
    and $06
    ret


    add hl, bc
    ld l, e
    add hl, bc

jr_00b_48d6:
    ld [hl], $06
    ld [bc], a
    inc b
    ld [bc], a
    db $fc
    cp $00
    and b
    ld h, b
    ld b, b
    ret nz

    ld a, a
    nop
    ld b, b
    ccf
    ld b, b
    jr nz, jr_00b_4930

    jr nz, jr_00b_4931

    jr nz, jr_00b_4933

    jr nz, jr_00b_4956

    ld h, b
    sub [hl]
    sub b

jr_00b_48f2:
    or [hl]

jr_00b_48f3:
    sub b
    ld h, [hl]

jr_00b_48f5:
    ld h, b
    ld b, b
    jr nz, jr_00b_4939

    ccf
    ld a, a

jr_00b_48fb:
    nop
    dec b
    rlca
    inc bc
    inc bc
    ld bc, $fe01
    nop
    ld [bc], a
    db $fc
    ld [bc], a
    inc b
    ld [c], a
    inc b
    ld [hl-], a
    inc b
    ld [hl-], a
    inc b
    and $06
    ret


    add hl, bc
    ld l, e
    add hl, bc
    ld [hl], $06
    ld [bc], a
    inc b

jr_00b_4918:
    ld [bc], a
    db $fc
    cp $00
    and b
    jr nz, jr_00b_493f

    ld h, b
    ld b, b
    ret nz

    ld a, h
    ld a, b
    ld c, e
    ld b, a
    ld e, h
    ld c, a
    ld [hl], a
    ld e, b
    jr nz, jr_00b_496b

    ld hl, $5f3e
    ld l, b

jr_00b_4930:
    ld e, a

jr_00b_4931:
    db $76
    ld d, a

jr_00b_4933:
    ld a, c
    ld e, a
    ld a, a
    inc [hl]
    dec hl
    ld e, a

jr_00b_4939:
    ld [hl], b
    ld a, a
    ld h, a
    add hl, de
    inc e
    inc b

jr_00b_493f:
    ld b, $02
    inc bc
    ld a, h

jr_00b_4943:
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

jr_00b_4956:
    ld l, h
    and h
    ret c

    jr c, jr_00b_4943

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

jr_00b_496b:
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
    jr nz, jr_00b_49eb

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
    jr c, jr_00b_49ea

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
    call z, Call_00b_7030
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

jr_00b_49ea:
    ld e, h

jr_00b_49eb:
    ld e, a
    daa
    jr c, jr_00b_4a2f

    ld a, a
    ld b, c

jr_00b_49f1:
    ld a, [hl]
    sbc a
    xor $a7
    or $97
    ld sp, hl
    ld a, a
    ld l, a
    scf
    jr c, jr_00b_4a0c

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

jr_00b_4a0c:
    ret z

    jr c, jr_00b_4a13

    db $fc
    inc b
    db $fc
    ld a, [c]

jr_00b_4a13:
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

jr_00b_4a2f:
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
    jr c, jr_00b_49f1

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
    jr c, jr_00b_4aaf

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

jr_00b_4a7d:
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

    jr c, jr_00b_4a93

    db $fc
    inc b
    db $fc
    ld a, [c]

jr_00b_4a93:
    xor $ca
    sbc $d2
    ld a, $fc
    db $ec
    ret c

    jr c, jr_00b_4a7d

    ldh [$c0], a
    ld b, b
    add b
    add b
    nop
    nop
    ldh [$e0], a
    sub e
    sub e
    call c, $f78f
    sbc b
    ld h, b
    ld a, a
    ld b, a

jr_00b_4aaf:
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
    call nz, $74fc
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
    jr nz, jr_00b_4b2d

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

jr_00b_4b25:
    dec sp
    ld e, h

jr_00b_4b27:
    ld c, a
    or a

jr_00b_4b29:
    sbc b
    and b

jr_00b_4b2b:
    cp a
    ld h, [hl]

jr_00b_4b2d:
    ld a, a
    cp l

jr_00b_4b2f:
    sbc h
    db $db

jr_00b_4b31:
    jp nc, Jump_00b_596f

    ld d, a

jr_00b_4b35:
    ld l, a
    inc h

jr_00b_4b37:
    dec sp
    rra

jr_00b_4b39:
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

jr_00b_4b4e:
    ld a, d
    ld [hl], d
    or [hl]
    sub [hl]
    db $ec
    inc [hl]
    call nc, $48ec
    cp b
    ldh a, [rNR10]
    ld hl, sp+$08
    jr nc, jr_00b_4b4e

    ret nz

    ret nz

    nop
    nop
    ret nz

    jr nz, jr_00b_4b25

    jr nz, jr_00b_4b27

    jr nz, jr_00b_4b29

    jr nz, jr_00b_4b2b

    jr nz, jr_00b_4b2d

    jr nz, jr_00b_4b2f

    jr nz, jr_00b_4b31

    jr nz, @-$3e

    jr nz, jr_00b_4b35

    jr nz, jr_00b_4b37

    jr nz, jr_00b_4b39

jr_00b_4b79:
    jr nz, jr_00b_4b79

    nop
    cp $01
    nop
    rst $38
    nop
    nop
    ld a, h
    ld [bc], a
    cp $01
    adc $31
    adc $21
    adc $21
    adc $21
    adc $21
    adc $21
    adc $21
    adc $21
    adc $21
    adc $21
    cp $01
    ld a, h
    add e
    nop
    ld a, [hl]
    nop
    nop
    ld a, h
    ld [bc], a
    cp $01
    adc $31
    adc $21
    ret nz

jr_00b_4bab:
    daa
    ret nz

    jr nz, jr_00b_4bab

    ld [bc], a
    ld a, [hl]
    add c
    ld c, $71
    ld c, $01
    adc $01
    adc $01
    cp $01
    ld a, h
    add e
    nop
    ld a, [hl]
    nop
    nop
    cp $01
    cp $01
    ldh [$1f], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ldh [rNR34], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    cp $01
    cp $01
    nop
    rst $38
    nop
    nop
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    dec c
    ld [bc], a
    dec c
    ld [bc], a
    dec c
    ld [bc], a
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ld c, $01
    ld c, $01
    inc c
    inc bc
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    nop
    ld c, $00
    nop
    ld h, e
    db $10
    ld h, e
    db $10
    ld h, e
    sub b
    ld h, e
    sub b
    ld h, e
    sub b
    db $e3
    db $10
    db $e3
    db $10
    db $e3
    db $10
    db $e3
    db $10
    db $e3
    db $10
    db $e3
    db $10
    ld h, e
    db $10
    ld h, e
    db $10
    ld h, e
    stop
    ld [hl], e
    nop
    nop
    adc h
    ld b, d
    adc h
    ld b, d
    adc [hl]
    ld b, c
    adc [hl]
    ld b, c
    adc [hl]
    ld b, c
    adc a
    ld b, b
    adc a
    ld b, b
    adc a
    ld b, b
    adc l
    ld b, d
    adc l
    ld b, d
    adc h
    ld b, e
    adc h
    ld b, d
    adc h
    ld b, d
    adc h
    ld b, d
    nop
    adc $00
    nop
    ld h, b
    db $10
    ld h, b
    db $10
    ld h, b
    db $10
    ld h, b
    db $10
    ld h, b
    db $10
    ld h, b
    sub b
    ld h, b
    sub b
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ld h, b
    sub b
    ld h, b
    stop
    ld [hl], b
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    jr jr_00b_4c8c

    jr c, jr_00b_4cae

    jr jr_00b_4c90

    jr jr_00b_4c92

    jr jr_00b_4c94

    jr jr_00b_4c96

    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld b, $06
    inc c
    inc c
    jr jr_00b_4ca4

jr_00b_4c8c:
    jr nc, jr_00b_4cbe

    ld a, [hl]
    ld a, [hl]

jr_00b_4c90:
    nop
    nop

jr_00b_4c92:
    inc a
    inc a

jr_00b_4c94:
    ld h, [hl]
    ld h, [hl]

jr_00b_4c96:
    ld b, $06
    inc c
    inc c
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    inc c
    inc c

jr_00b_4ca4:
    inc e
    inc e
    inc a
    inc a
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld a, [hl]
    ld a, [hl]

jr_00b_4cae:
    inc c
    inc c
    nop
    nop
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    ld a, b
    ld a, b
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

jr_00b_4cbe:
    ld a, b
    ld a, b
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc c
    inc c
    inc c
    inc c
    jr jr_00b_4cf6

    jr jr_00b_4cf8

    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]

jr_00b_4cf6:
    ld h, [hl]
    ld h, [hl]

jr_00b_4cf8:
    ld a, $3e
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    ld b, b
    ld b, b
    ld e, b
    ld e, b
    db $e4
    db $e4
    ld h, h
    ld h, h
    call nz, $c4c4
    call nz, Call_00b_4242
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_00b_4d38

    jr c, jr_00b_4d52

    ld h, h
    ld h, h
    ld b, h
    ld b, h
    add d
    add d
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    ld a, h
    ld a, h
    ld [$0408], sp
    inc b
    ld b, b
    ld b, b
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

jr_00b_4d38:
    nop
    nop
    nop
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
    dec b
    dec b
    rlca
    rlca
    db $10
    db $10
    cp $fe
    db $10
    db $10
    ld d, h
    ld d, h

jr_00b_4d52:
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
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
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    db $fc
    db $fc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$1008], sp
    db $10
    jr z, jr_00b_4da0

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00b_4da0:
    rst $38
    ld a, [hl]
    nop
    nop
    nop
    nop
    rra
    nop
    db $10
    rrca
    db $10
    ld [$0813], sp
    inc de
    ld [$0813], sp
    inc de
    ld [$0813], sp
    inc de
    ld [$0813], sp
    db $10
    ld [$0f10], sp
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ld [$08f0], sp
    db $10
    add sp, $10
    jr z, jr_00b_4de0

    jr z, jr_00b_4de2

    add sp, $10
    ret z

    db $10
    ld l, b
    db $10
    jr z, jr_00b_4dea

    ld [$0810], sp
    ldh a, [$f8]
    nop

jr_00b_4de0:
    nop
    nop

jr_00b_4de2:
    nop
    nop
    nop
    nop
    rlca
    nop
    inc b
    inc bc

jr_00b_4dea:
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    inc bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr nz, @-$3e

    jr nz, jr_00b_4e4c

    and b
    ld b, b
    jr nz, jr_00b_4e50

    jr nz, jr_00b_4e52

    and b
    ld b, b
    and b
    ld b, b
    jr nz, jr_00b_4e58

    jr nz, jr_00b_4e5a

    jr nz, jr_00b_4e5c

    jr nz, @-$3e

    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0001
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
    nop
    add b

jr_00b_4e4c:
    nop
    add b
    nop
    add b

jr_00b_4e50:
    nop
    add b

jr_00b_4e52:
    nop
    add b
    nop
    add b
    nop
    add b

jr_00b_4e58:
    nop
    add b

jr_00b_4e5a:
    nop
    add b

jr_00b_4e5c:
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
    rra
    rrca
    db $10
    ld [$0817], sp
    inc d
    ld [$0814], sp
    inc d
    ld [$0814], sp
    inc d
    ld [$0814], sp
    inc d
    ld [$0f17], sp
    stop
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$10
    ld [$e810], sp
    db $10
    ld [$e810], sp
    db $10
    add sp, $10
    ld [$e810], sp
    db $10
    add sp, $10
    ld [$e810], sp
    ldh a, [$08]
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc bc
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    dec b
    inc bc
    inc b
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$c0], a
    jr nz, jr_00b_4f0b

    and b
    ld b, b
    jr nz, jr_00b_4f0f

    and b
    ld b, b
    and b
    ld b, b
    jr nz, jr_00b_4f15

    and b
    ld b, b
    and b
    ld b, b
    jr nz, jr_00b_4f1b

    and b
    ret nz

    jr nz, jr_00b_4edf

jr_00b_4edf:
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    nop
    add b

jr_00b_4f0b:
    nop
    add b
    nop
    add b

jr_00b_4f0f:
    nop
    add b
    nop
    add b
    nop
    add b

jr_00b_4f15:
    nop
    add b
    nop
    add b
    nop
    add b

jr_00b_4f1b:
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0407], sp
    jr jr_00b_4f3b

    ld hl, $2340
    jr nz, jr_00b_4f71

    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    jr nz, jr_00b_4f79

    ld b, b
    inc hl
    db $10

jr_00b_4f3b:
    jr nz, jr_00b_4f41

    jr jr_00b_4f47

    rlca
    nop

jr_00b_4f41:
    nop
    nop
    nop
    nop
    nop
    db $10

jr_00b_4f47:
    ldh [rNR41], a
    jr jr_00b_4f53

    add h
    ld [bc], a
    add h
    inc b
    add d
    nop
    add d
    nop

jr_00b_4f53:
    add d
    nop
    add d
    inc b
    add d
    ld [bc], a
    call nz, $0408
    jr nz, jr_00b_4f76

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

jr_00b_4f71:
    ld b, [hl]
    ccf
    ld b, a
    ccf
    ld b, b

jr_00b_4f76:
    ccf
    ld b, b
    ld e, a

jr_00b_4f79:
    jr nz, @+$11

jr_00b_4f7b:
    scf
    rlca
    jr jr_00b_4f87

    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    db $10

jr_00b_4f87:
    ldh [$e0], a
    jr jr_00b_4f7b

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
    jr jr_00b_4faf

jr_00b_4fa8:
    jr nz, jr_00b_4fc9

    ld b, b
    dec sp
    ld b, b
    inc sp
    add b

jr_00b_4faf:
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
    jr jr_00b_4fa8

    inc b

jr_00b_4fc9:
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
    jr jr_00b_5000

    jr nc, jr_00b_500a

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
    jp nz, Jump_00b_6e42

    ld c, [hl]
    jr nc, jr_00b_501e

    jr jr_00b_5018

jr_00b_5000:
    rrca
    rlca
    nop
    nop
    ldh a, [$e0]
    jr jr_00b_5020

    inc c
    inc b

jr_00b_500a:
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

jr_00b_5018:
    sub e
    sub d
    or $f2
    inc c
    inc b

jr_00b_501e:
    jr jr_00b_5038

jr_00b_5020:
    ldh a, [$e0]
    nop
    nop
    rrca
    rlca
    rra
    jr jr_00b_5068

    jr nz, jr_00b_50aa

    ld c, e
    cp $5a
    cp $8a
    cp $8a
    cp $8a
    cp $8a
    cp $8a

jr_00b_5038:
    cp $4a
    ld a, a
    ld c, e
    ccf
    jr nz, jr_00b_505e

    jr jr_00b_5050

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

jr_00b_5050:
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

jr_00b_505e:
    ld hl, sp+$18
    ldh a, [$e0]
    nop
    nop
    rrca
    rlca
    rrca
    rra

jr_00b_5068:
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
    jr nz, jr_00b_50ae

    xor e
    xor d
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor d
    jr nz, jr_00b_50be

    db $fc
    db $fc
    ldh a, [$f8]
    ldh a, [$e0]
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    ld e, l

jr_00b_50aa:
    push de
    push de
    ld d, l
    ld d, l

jr_00b_50ae:
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
    ld e, l
    ld e, l
    nop
    nop

jr_00b_50be:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call c, Call_00b_54dc
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    call c, Call_000_00dc
    nop
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
    ld b, b
    jr nz, jr_00b_514b

    jr nz, jr_00b_5146

    jr nz, jr_00b_5149

    jr nz, jr_00b_514b

    jr nz, jr_00b_514c

    jr nz, jr_00b_514f

    jr nz, jr_00b_5151

    jr nz, jr_00b_5152

    jr nz, jr_00b_515b

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
    jr nz, jr_00b_5174

    jr nz, jr_00b_5175

    jr nz, jr_00b_5177

    jr nz, jr_00b_517a

    jr nz, jr_00b_517b

    jr nz, jr_00b_517d

    jr nz, jr_00b_517f

    jr nz, jr_00b_517b

    jr nz, jr_00b_517d

    ccf
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00b_5146:
    cp $00
    ld [bc], a

jr_00b_5149:
    db $fc
    ld [bc], a

jr_00b_514b:
    inc b

jr_00b_514c:
    ld [c], a
    inc b
    ld [hl-], a

jr_00b_514f:
    inc b
    ld [hl-], a

jr_00b_5151:
    inc b

jr_00b_5152:
    ld [c], a
    inc b
    jp nz, Jump_00b_6204

    inc b
    ld [hl-], a
    inc b
    ld [bc], a

jr_00b_515b:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_00b_517c

jr_00b_5174:
    inc h

jr_00b_5175:
    inc c
    inc h

jr_00b_5177:
    inc c
    inc h
    inc c

jr_00b_517a:
    inc h

jr_00b_517b:
    inc c

jr_00b_517c:
    inc h

jr_00b_517d:
    inc c
    inc h

jr_00b_517f:
    inc c
    inc h
    inc c
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    ld [$3c18], sp
    inc a
    ld h, d
    ld h, d
    ld h, b
    ld h, b
    inc a
    inc a
    ld b, $06
    ld b, [hl]
    ld b, [hl]
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, d
    ld h, d
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
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
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    inc a
    inc a
    nop
    nop
    ld a, h
    ld a, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
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
    nop
    nop
    nop
    nop
    scf
    scf
    ld b, h
    ld b, h
    ld [hl], a
    ld [hl], a
    inc d
    inc d
    ld h, a
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_00b_5248

    ld c, b
    ld c, b
    ld b, b
    ld b, b
    ld c, b
    ld c, b
    jr nc, jr_00b_5250

    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jr jr_00b_523e

    jr jr_00b_5240

    jr jr_00b_5242

    jr jr_00b_5244

    jr jr_00b_5246

    jr jr_00b_5248

    nop
    nop
    jr jr_00b_524c

    jr jr_00b_524e

    jr jr_00b_5250

    jr jr_00b_5252

    jr jr_00b_5254

    jr jr_00b_5256

jr_00b_523e:
    jr jr_00b_5258

jr_00b_5240:
    nop
    nop

jr_00b_5242:
    ld h, d
    ld h, d

jr_00b_5244:
    db $76
    db $76

jr_00b_5246:
    ld a, [hl]
    ld a, [hl]

jr_00b_5248:
    ld l, d
    ld l, d
    ld h, d
    ld h, d

jr_00b_524c:
    ld h, d
    ld h, d

jr_00b_524e:
    ld h, d
    ld h, d

jr_00b_5250:
    nop
    nop

jr_00b_5252:
    nop
    nop

jr_00b_5254:
    nop
    nop

jr_00b_5256:
    ld [hl], a
    ld [hl], a

jr_00b_5258:
    ld d, d
    ld d, d
    ld [hl], d
    ld [hl], d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
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
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld [hl+], a
    ld [hl+], a
    ld [hl], $36
    inc [hl]
    inc [hl]
    inc e
    inc e
    inc e
    inc e
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    ld b, b
    ld b, b
    ld e, b
    ld e, b
    db $e4
    db $e4
    ld h, h
    ld h, h
    call nz, $c4c4
    call nz, Call_00b_4242
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_00b_52c8

    jr c, jr_00b_52e2

    ld h, h
    ld h, h
    ld b, h
    ld b, h
    add d
    add d
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    ld a, h
    ld a, h
    ld [$0408], sp
    inc b
    ld b, b
    ld b, b
    inc a
    inc a
    nop
    nop
    ld b, h
    ld b, h
    ld l, l
    ld l, l
    ld l, l
    ld l, l

jr_00b_52c8:
    ld d, l
    ld d, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    nop
    nop
    sub h
    sub h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ret z

    ret z

    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    nop
    nop

jr_00b_52e2:
    jr nz, jr_00b_5304

    jr nz, jr_00b_5306

    nop
    nop
    nop
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
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    jr jr_00b_531c

jr_00b_5304:
    jr c, jr_00b_533e

jr_00b_5306:
    jr jr_00b_5320

    jr jr_00b_5322

    jr jr_00b_5324

    jr jr_00b_5326

    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld b, $06
    inc c
    inc c
    jr jr_00b_5334

jr_00b_531c:
    jr nc, jr_00b_534e

    ld a, [hl]
    ld a, [hl]

jr_00b_5320:
    nop
    nop

jr_00b_5322:
    inc a
    inc a

jr_00b_5324:
    ld h, [hl]
    ld h, [hl]

jr_00b_5326:
    ld b, $06
    inc c
    inc c
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    inc c
    inc c

jr_00b_5334:
    inc e
    inc e
    inc a
    inc a
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld a, [hl]
    ld a, [hl]

jr_00b_533e:
    inc c
    inc c
    nop
    nop
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    ld a, b
    ld a, b
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

jr_00b_534e:
    ld a, b
    ld a, b
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc c
    inc c
    inc c
    inc c
    jr jr_00b_5386

    jr jr_00b_5388

    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]

jr_00b_5386:
    ld h, [hl]
    ld h, [hl]

jr_00b_5388:
    ld a, $3e
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop

jr_00b_5391:
    nop
    nop

jr_00b_5393:
    nop
    inc bc
    rlca
    inc e
    inc c
    ld de, $1b18
    jr nc, jr_00b_53c0

    jr nc, @+$35

    jr nz, @+$39

    jr nz, jr_00b_53a3

jr_00b_53a3:
    nop
    ret nz

    ldh [$38], a
    jr nc, jr_00b_5391

    jr jr_00b_5393

    inc e
    db $e4
    inc e
    db $e4

jr_00b_53af:
    inc e
    db $e4
    inc e
    scf
    jr nz, @+$39

    jr nz, @+$39

    jr nz, jr_00b_53e0

    jr nc, @+$19

    jr nc, jr_00b_53d4

jr_00b_53bd:
    jr jr_00b_53db

    rrca

jr_00b_53c0:
    inc bc
    rlca
    db $e4
    inc e
    db $e4
    inc e
    call nz, $c43c
    inc a
    adc b
    ld a, h
    ld [$38f8], sp
    ldh a, [$c0]
    ldh [rP1], a
    nop

jr_00b_53d4:
    inc bc
    inc bc
    inc b
    ld b, $06
    inc b
    add hl, bc

jr_00b_53db:
    inc c
    dec c
    ld [$0809], sp

jr_00b_53e0:
    add hl, bc
    ld [$0000], sp
    ret nz

    ret nz

    jr nz, jr_00b_5448

    ldh [rNR41], a
    ret nc

    jr nc, jr_00b_53bd

jr_00b_53ed:
    jr nc, @-$0e

    db $10
    ldh a, [rNR10]
    add hl, bc
    ld [$0809], sp
    add hl, bc
    ld [$080d], sp
    add hl, bc
    inc c
    rlca
    inc b
    inc b
    ld b, $03
    inc bc
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret nc

    jr nc, jr_00b_53db

    jr nc, jr_00b_53ed

    jr nz, jr_00b_53af

    ld h, b
    ret nz

    ret nz

    nop
    nop
    ld bc, $0301
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
    ld [bc], a
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
    add b
    add b
    add b
    add b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $8001
    add b
    add b
    add b
    add b
    add b

jr_00b_5448:
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
    rrca
    rrca
    inc sp
    inc a
    ld e, a
    ld h, b
    ld e, a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    inc l
    inc e
    ld a, [bc]
    ld b, $fa
    ld [bc], a
    ld e, a
    ld b, b
    ld e, a
    ld h, b
    inc sp
    inc a
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
    cp $02
    ld a, [$cc06]
    inc a
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
    nop
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
    db $fc
    db $fc
    sbc [hl]
    ld [bc], a
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

Call_00b_54dc:
    inc sp
    inc a
    ld e, a
    ld h, b
    ld e, a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    call z, $fa3c
    ld b, $fe
    ld [bc], a
    ld c, a
    ld b, b
    ld d, b
    ld h, b
    inc [hl]
    jr c, jr_00b_5508

    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$0a02]
    ld b, $2c
    inc e

jr_00b_5508:
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
    ld bc, $0300
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
    nop
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld [hl], b
    ld a, a
    ld hl, sp-$39
    ret nz

    add a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add e
    nop
    add a
    nop
    rst $00
    ld b, b
    rst $08
    ld b, b
    nop
    nop
    ccf
    nop
    rst $38
    nop
    di
    inc c
    db $ed
    ld e, $d9
    inc a
    or c
    ld a, b
    pop hl
    ld [hl], b
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    and c
    ld h, b
    nop
    nop
    jr nc, jr_00b_5566

jr_00b_5566:
    ld a, b
    nop
    ld a, h
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $f4
    inc c
    db $fc
    inc c
    nop
    nop
    inc c
    nop
    ld e, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, a
    ld bc, $017e
    nop
    nop
    inc c
    nop
    ld e, $00
    rra
    ld bc, $011f
    rra
    ld bc, $013f
    dec a
    inc bc
    nop
    nop
    inc bc
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    jr nz, jr_00b_55c0

    inc e
    inc a
    nop
    cp $00
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    cp $1e
    ldh a, [rNR10]
    ret nc

    jr nc, jr_00b_55c1

    ld bc, $001f
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    ld bc, $013f

jr_00b_55c0:
    ld a, l

jr_00b_55c1:
    inc bc
    adc a
    add b
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    rst $30
    rrca
    cp $ff
    ld hl, sp-$04
    nop
    add b
    rst $08
    ld b, b
    ld c, a
    ret nz

    sbc $c1
    sbc a
    pop bc
    rra
    add c
    rra
    ld bc, $011f
    rra
    nop
    ld b, e
    ldh [$c3], a
    ret nz

    add e
    ret nz

    add a
    add b
    rlca
    add b
    rrca
    nop
    rrca
    nop
    rra
    nop
    pop hl
    ld h, b
    pop hl
    ld h, b
    db $e3
    ld h, b
    jp $c360


    ld h, b
    ld b, a
    ret nz

    ld b, a
    ret nz

    rst $00
    ret nz

    db $fc
    inc c
    ld hl, sp+$0c
    add sp, $1c
    ld hl, sp+$18
    ld hl, sp+$18
    ldh a, [rNR23]
    ldh a, [rNR23]
    pop af
    db $10

jr_00b_5612:
    ld a, a
    nop
    ld a, a
    ld [$08ff], sp
    rst $38
    ld [$08fb], sp
    db $eb
    jr @-$03

    jr jr_00b_5612

    jr jr_00b_5662

    inc bc
    ld a, $83
    cp $43
    ld a, [$fe46]
    ld b, $fc
    ld b, $fc
    ld b, $fc
    inc b
    rrca
    inc c
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop

jr_00b_563c:
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ldh a, [$30]
    ldh [$30], a
    ldh [$30], a
    ldh [$30], a
    ldh [rNR41], a
    ldh [rNR41], a
    and b
    ld h, b
    and b
    ld h, b
    ld a, a
    inc bc
    ld a, [hl]
    inc bc
    ld a, [$fe06]
    ld b, $fc
    ld b, $74
    adc h
    ld a, h
    ld a, h
    jr c, @+$3a

jr_00b_5662:
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $0302
    inc bc
    nop
    ld bc, $00ff
    cp $01
    rst $38
    ld bc, $03fd

jr_00b_567a:
    ei
    rlca
    rst $28
    rra
    cp $ff
    ld hl, sp-$04
    rst $08
    ret nz

    adc a
    ret nz

jr_00b_5686:
    adc a
    add b

jr_00b_5688:
    adc a
    add b
    rrca
    add b
    inc bc
    inc b
    inc bc
    inc bc
    ld bc, $d101
    jr nc, jr_00b_5686

jr_00b_5695:
    jr nc, jr_00b_5688

    jr nc, jr_00b_567a

    jr nc, jr_00b_563c

    ld [hl], b
    ld h, b
    pop hl
    ldh [$e0], a
    ret nz

    ret nz

    pop af
    jr jr_00b_5695

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$f0]
    ld h, b
    ld h, b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld [hl], h
    inc c
    ld l, h
    inc e
    inc a
    inc a
    jr jr_00b_56d8

    nop
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ld b, $01
    rlca
    rlca
    inc bc
    inc bc
    ldh [$60], a
    ldh [$60], a
    ret nz

    ld h, b

jr_00b_56d8:
    ret nz

    ld h, b
    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    ret nz

    add b
    add b
    db $10
    db $10
    jr z, jr_00b_570e

    ld b, h
    ld b, h
    cp d
    cp d
    nop
    nop
    ld a, h
    ld a, h
    ld b, h
    ld b, h
    ld a, h
    ld a, h
    ld b, h
    ld b, h
    db $e4
    db $e4
    inc b
    inc b
    xor $ee
    inc b
    inc b
    db $e4
    db $e4
    and h
    and h
    db $e4
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

jr_00b_570e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00b_596f:
    nop
    nop
    nop
    jr jr_00b_597c

    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c

jr_00b_597c:
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    inc d
    inc l
    ld [$3c18], sp
    inc a
    ld h, d
    ld h, d
    ld h, b
    ld h, b
    inc a
    inc a
    ld b, $06
    ld b, [hl]
    ld b, [hl]
    inc a
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jr jr_00b_59de

    jr jr_00b_59e0

    jr jr_00b_59e2

    jr jr_00b_59e4

    jr jr_00b_59e6

    jr jr_00b_59e8

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

jr_00b_59de:
    ld h, d
    ld h, d

jr_00b_59e0:
    nop
    nop

jr_00b_59e2:
    inc a
    inc a

jr_00b_59e4:
    ld h, [hl]
    ld h, [hl]

jr_00b_59e6:
    ld h, b
    ld h, b

jr_00b_59e8:
    ld l, [hl]
    ld l, [hl]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld a, $3e
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
    nop
    nop
    nop
    rrca
    nop
    jr jr_00b_5a09

jr_00b_5a09:
    jr jr_00b_5a0b

jr_00b_5a0b:
    rra
    nop
    jr jr_00b_5a0f

jr_00b_5a0f:
    jr jr_00b_5a11

jr_00b_5a11:
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    add e
    inc bc
    add e
    dec sp
    cp e
    inc bc
    add e
    inc bc
    add e
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06

Call_00b_5a2c:
    ld d, $16
    or $f6
    nop
    nop
    nop
    nop
    push bc
    push bc
    push bc
    push bc
    push hl
    push hl
    push de
    push de
    call $c5cd
    push bc
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    add b
    add b
    add b
    add b
    ldh a, [$f0]
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld c, [hl]
    jp z, $4eca

    ld c, [hl]
    ld c, b
    ld c, b
    ld c, b
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
    db $fc
    nop
    ld c, $00
    ld b, $00
    nop
    nop
    ld b, $01
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    nop
    nop
    ret nz

    rlca
    ldh [$0e], a
    ldh [$0e], a
    ldh [$0e], a
    ldh [$0e], a
    ldh [$0e], a
    ldh [$0e], a
    ldh [rP1], a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    ldh [rP1], a
    ret nz

    nop
    nop
    rst $38
    nop
    nop
    nop
    ld h, a
    ld h, a
    sub l
    sub l
    daa
    daa
    ld b, h
    ld b, h
    db $f4
    db $f4
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
    ld a, a
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
    rst $38
    nop
    nop
    nop
    nop
    ld c, $00
    db $fc
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
    ld c, $00
    ld b, $00
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$0e], a
    nop
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld b, $01
    nop
    ldh [rP1], a
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
    ld c, $00
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

jr_00b_5b91:
    nop
    nop

jr_00b_5b93:
    nop
    inc bc
    rlca
    inc e
    inc c
    ld de, $1b18
    jr nc, jr_00b_5bc0

    jr nc, @+$35

    jr nz, @+$39

    jr nz, jr_00b_5ba3

jr_00b_5ba3:
    nop
    ret nz

    ldh [$38], a
    jr nc, jr_00b_5b91

    jr jr_00b_5b93

    inc e
    db $e4
    inc e
    db $e4

jr_00b_5baf:
    inc e
    db $e4
    inc e
    scf
    jr nz, @+$39

    jr nz, @+$39

    jr nz, jr_00b_5be0

    jr nc, @+$19

    jr nc, jr_00b_5bd4

jr_00b_5bbd:
    jr jr_00b_5bdb

    rrca

jr_00b_5bc0:
    inc bc
    rlca
    db $e4
    inc e
    db $e4
    inc e
    call nz, $c43c
    inc a
    adc b
    ld a, h
    ld [$38f8], sp
    ldh a, [$c0]
    ldh [rP1], a
    nop

jr_00b_5bd4:
    inc bc
    inc bc
    inc b
    ld b, $06
    inc b
    add hl, bc

jr_00b_5bdb:
    inc c
    dec c
    ld [$0809], sp

jr_00b_5be0:
    add hl, bc
    ld [$0000], sp
    ret nz

    ret nz

    jr nz, jr_00b_5c48

    ldh [rNR41], a
    ret nc

    jr nc, jr_00b_5bbd

jr_00b_5bed:
    jr nc, @-$0e

    db $10
    ldh a, [rNR10]
    add hl, bc
    ld [$0809], sp
    add hl, bc
    ld [$080d], sp
    add hl, bc
    inc c
    rlca
    inc b
    inc b
    ld b, $03
    inc bc
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret nc

    jr nc, jr_00b_5bdb

    jr nc, jr_00b_5bed

    jr nz, jr_00b_5baf

    ld h, b
    ret nz

    ret nz

    nop
    nop
    ld bc, $0301
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
    ld [bc], a
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
    add b
    add b
    add b
    add b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $8001
    add b
    add b
    add b
    add b
    add b

jr_00b_5c48:
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
    rrca
    rrca
    inc sp
    inc a
    ld e, a
    ld h, b
    ld e, a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    inc l
    inc e
    ld a, [bc]
    ld b, $fa
    ld [bc], a
    ld e, a
    ld b, b
    ld e, a
    ld h, b
    inc sp
    inc a
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
    cp $02
    ld a, [$cc06]
    inc a
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
    nop
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
    db $fc
    db $fc
    sbc [hl]
    ld [bc], a
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
    inc sp
    inc a
    ld e, a
    ld h, b
    ld e, a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    call z, $fa3c
    ld b, $fe
    ld [bc], a
    ld c, a
    ld b, b
    ld d, b
    ld h, b
    inc [hl]
    jr c, jr_00b_5d08

    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$0a02]
    ld b, $2c
    inc e

jr_00b_5d08:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
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
    ld c, $00
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
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
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
    ret nz

    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
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
    rst $38
    rst $38
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    nop
    nop
    rst $38
    nop
    nop
    ld a, h
    ld a, h
    xor $ee
    add $c6
    add $c6
    add $c6
    add $c6
    add $c6
    add $c6
    add $c6
    xor $ee
    ld a, h
    ld a, h
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    jr jr_00b_5e72

    jr c, jr_00b_5e94

    jr c, jr_00b_5e96

    jr jr_00b_5e78

    jr jr_00b_5e7a

    jr jr_00b_5e7c

    jr jr_00b_5e7e

    jr jr_00b_5e80

    jr jr_00b_5e82

    jr jr_00b_5e84

    jr jr_00b_5e86

    nop
    nop
    nop
    rst $38

jr_00b_5e72:
    nop
    nop
    nop
    rst $38
    nop
    nop

jr_00b_5e78:
    ld a, h
    ld a, h

jr_00b_5e7a:
    adc $ce

jr_00b_5e7c:
    ld b, $06

jr_00b_5e7e:
    ld b, $06

jr_00b_5e80:
    ld c, $0e

jr_00b_5e82:
    inc e
    inc e

jr_00b_5e84:
    ld [hl], b
    ld [hl], b

jr_00b_5e86:
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    cp $fe
    nop
    nop
    nop
    rst $38
    nop
    nop

jr_00b_5e94:
    nop
    rst $38

jr_00b_5e96:
    nop
    nop
    ld a, h
    ld a, h
    adc $ce
    ld b, $06
    ld b, $06
    ld c, $0e
    inc a
    inc a
    ld c, $0e
    ld b, $06
    ld b, $06
    adc $ce
    ld a, h
    ld a, h
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    inc e
    inc e
    inc e
    inc e
    inc a
    inc a
    inc l
    inc l
    ld l, h
    ld l, h
    ld c, h
    ld c, h
    call z, $fecc
    cp $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    cp $fe
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    db $fc
    db $fc
    ld c, $0e
    ld b, $06
    ld b, $06
    ld b, $06
    adc $ce
    ld a, h
    ld a, h
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    ld a, h
    ld a, h
    and $e6
    ret nz

    ret nz

    ret nz

    ret nz

    db $fc
    db $fc
    adc $ce
    add $c6
    add $c6
    add $c6
    xor $ee
    ld a, h
    ld a, h
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    cp $fe
    ld b, $06
    ld c, $0e
    inc c
    inc c
    inc e
    inc e
    jr jr_00b_5f3c

    jr c, jr_00b_5f5e

    jr nc, jr_00b_5f58

    jr nc, jr_00b_5f5a

    jr nc, jr_00b_5f5c

    jr nc, jr_00b_5f5e

    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    ld a, h
    ld a, h
    xor $ee

jr_00b_5f3c:
    add $c6
    add $c6
    xor $ee
    jr c, jr_00b_5f7c

    xor $ee
    add $c6
    add $c6
    xor $ee
    ld a, h
    ld a, h
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop

jr_00b_5f58:
    ld a, h
    ld a, h

jr_00b_5f5a:
    xor $ee

jr_00b_5f5c:
    add $c6

jr_00b_5f5e:
    add $c6
    add $c6
    and $e6
    ld a, [hl]
    ld a, [hl]
    ld b, $06
    ld b, $06
    adc $ce
    ld a, h
    ld a, h
    nop
    nop
    nop
    rst $38
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, d
    ld h, d

jr_00b_5f7c:
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
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
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    inc a
    inc a
    nop
    nop
    ld a, h
    ld a, h
    ld h, d
    ld h, d
    ld h, d
    ld h, d
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
    ldh [$0e], a
    ldh [$0e], a
    ldh [$0e], a
    ldh [$0e], a
    ldh [$0e], a
    ldh [$0e], a
    ldh [$0e], a
    ret nz

    rlca
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Jump_00b_6060:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    ld h, c
    ldh [$61], a
    ld d, b
    ld h, d
    ret nz

    ld h, d
    jr nc, jr_00b_61cf

    and b
    ld h, e
    db $10
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
    nop
    nop
    nop
    inc c
    nop
    inc a
    nop
    db $fc
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc a
    nop
    inc a
    nop
    inc a
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
    nop
    nop
    nop
    nop

jr_00b_61cf:
    nop

Jump_00b_61d0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    jp $8100


    nop
    add c
    nop
    ld bc, $0300
    nop
    rra
    nop
    nop
    nop
    nop

Jump_00b_6204:
    nop
    add b
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
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    ret nz

    nop
    add b
    nop
    add b
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
    ld bc, $0300
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
    rst $38
    nop
    jp $8100


    nop
    add c
    nop
    inc bc
    nop
    ccf
    nop
    inc bc
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
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    inc bc
    nop
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
    ld bc, $8100
    nop
    add c
    nop
    jp $ff00


    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $30
    nop
    rst $20
    nop
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
    nop
    nop
    inc bc
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
    add a
    nop
    rst $38
    nop
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

Call_00b_633f:
    nop
    nop
    nop
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    inc bc
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
    add b
    nop
    nop
    nop
    inc bc
    nop
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
    ld bc, $8100
    nop
    add c
    nop
    jp $ff00


    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    rst $38
    nop
    jp $8100


    nop
    add c
    nop
    add b
    nop
    rst $38
    nop
    jp RST_00


    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    add b
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop

Call_00b_63dc:
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    jp $ff00


    nop
    nop
    nop
    nop
    nop

Jump_00b_63ef:
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    rst $38
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    ld e, $00
    nop
    nop
    ret nz

    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    inc a
    nop
    inc a
    nop
    inc a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub h
    ld h, h
    call nc, Call_000_1464
    ld h, l
    ld d, h
    ld h, l
    sub h
    ld h, l
    call nc, Call_000_1465
    ld h, [hl]
    ld d, h
    ld h, [hl]
    sub h
    ld h, [hl]
    call nc, Call_000_0066
    nop
    nop
    rrca
    nop
    inc e
    nop
    jr c, jr_00b_649d

jr_00b_649d:
    jr c, jr_00b_649f

jr_00b_649f:
    jr c, jr_00b_64a1

jr_00b_64a1:
    jr c, jr_00b_64a3

jr_00b_64a3:
    jr c, jr_00b_64a5

jr_00b_64a5:
    nop
    nop
    ldh a, [rP1]
    jr c, jr_00b_64ab

jr_00b_64ab:
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    jr c, jr_00b_64b7

jr_00b_64b7:
    jr c, jr_00b_64b9

jr_00b_64b9:
    jr c, jr_00b_64bb

jr_00b_64bb:
    inc e
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    jr c, jr_00b_64cd

jr_00b_64cd:
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
    inc bc
    nop
    rrca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    nop
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
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh a, [rP1]
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
    inc e
    nop
    jr c, jr_00b_651d

jr_00b_651d:
    jr c, jr_00b_651f

jr_00b_651f:
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ldh a, [rP1]
    jr c, jr_00b_652b

jr_00b_652b:
    inc e
    nop
    inc e
    nop
    inc e
    nop
    jr c, jr_00b_6533

jr_00b_6533:
    ldh a, [rP1]
    rlca
    nop
    inc e
    nop
    jr c, jr_00b_653b

jr_00b_653b:
    jr c, jr_00b_653d

jr_00b_653d:
    ccf
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
    rrca
    nop
    inc e
    nop
    jr c, jr_00b_655d

jr_00b_655d:
    jr c, jr_00b_655f

jr_00b_655f:
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    jr c, jr_00b_656b

jr_00b_656b:
    inc e
    nop
    inc e
    nop
    jr c, jr_00b_6571

jr_00b_6571:
    ldh a, [rP1]
    jr c, jr_00b_6575

jr_00b_6575:
    nop
    nop
    jr c, jr_00b_6579

jr_00b_6579:
    jr c, jr_00b_657b

jr_00b_657b:
    inc e
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    jr c, jr_00b_658d

jr_00b_658d:
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
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    ld e, $00
    inc a
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    jr c, jr_00b_65b7

jr_00b_65b7:
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
    ld [hl], b
    nop
    db $fc
    nop
    ld [hl], b
    nop
    ld [hl], b
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
    ccf
    nop
    jr c, jr_00b_65db

jr_00b_65db:
    jr c, jr_00b_65dd

jr_00b_65dd:
    jr c, jr_00b_65df

jr_00b_65df:
    jr c, jr_00b_65e1

jr_00b_65e1:
    ccf
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
    ldh a, [rP1]
    jr c, jr_00b_65f5

jr_00b_65f5:
    nop
    nop
    jr c, jr_00b_65f9

jr_00b_65f9:
    jr c, jr_00b_65fb

jr_00b_65fb:
    inc e
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    jr c, jr_00b_660d

jr_00b_660d:
    ldh a, [rP1]
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
    inc e
    nop
    jr c, jr_00b_661d

jr_00b_661d:
    jr c, jr_00b_661f

jr_00b_661f:
    jr c, jr_00b_6621

jr_00b_6621:
    ccf
    nop
    inc a
    nop
    nop
    nop
    ldh a, [rP1]
    jr c, jr_00b_662b

jr_00b_662b:
    inc e
    nop
    inc e
    nop
    nop
    nop
    ldh a, [rP1]
    jr c, jr_00b_6635

jr_00b_6635:
    jr c, jr_00b_6637

jr_00b_6637:
    jr c, jr_00b_6639

jr_00b_6639:
    jr c, jr_00b_663b

jr_00b_663b:
    inc e
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    jr c, jr_00b_664d

jr_00b_664d:
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0100
    nop
    nop
    nop
    db $fc
    nop
    inc a
    nop
    ld a, b
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

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
    rrca
    nop
    inc e
    nop
    jr c, jr_00b_669d

jr_00b_669d:
    jr c, jr_00b_669f

jr_00b_669f:
    inc e
    nop
    rrca
    nop
    inc e
    nop
    nop
    nop
    ldh a, [rP1]
    jr c, jr_00b_66ab

jr_00b_66ab:
    inc e
    nop
    inc e
    nop
    jr c, jr_00b_66b1

jr_00b_66b1:
    ldh a, [rP1]
    jr c, jr_00b_66b5

jr_00b_66b5:
    jr c, jr_00b_66b7

jr_00b_66b7:
    jr c, jr_00b_66b9

jr_00b_66b9:
    jr c, jr_00b_66bb

jr_00b_66bb:
    inc e
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    jr c, jr_00b_66cd

jr_00b_66cd:
    ldh a, [rP1]
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
    inc e
    nop
    jr c, jr_00b_66dd

jr_00b_66dd:
    jr c, jr_00b_66df

jr_00b_66df:
    jr c, jr_00b_66e1

jr_00b_66e1:
    inc e
    nop
    rrca
    nop
    nop
    nop
    ldh a, [rP1]
    jr c, jr_00b_66eb

jr_00b_66eb:
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc a
    nop
    db $fc
    nop
    nop
    nop
    jr c, jr_00b_66f9

jr_00b_66f9:
    jr c, jr_00b_66fb

jr_00b_66fb:
    inc e
    nop
    rrca
    nop

Jump_00b_66ff:
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    jr c, jr_00b_670d

jr_00b_670d:
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
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
    nop
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld [hl], b
    ld a, a
    ld hl, sp-$39
    ret nz

    add a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add e
    nop
    add a
    nop
    rst $00
    ld b, b
    rst $08
    ld b, b
    nop
    nop
    ccf
    nop
    rst $38
    nop
    di
    inc c
    db $ed
    ld e, $d9
    inc a
    or c
    ld a, b
    pop hl
    ld [hl], b
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    and c
    ld h, b
    nop
    nop
    jr nc, jr_00b_6768

jr_00b_6768:
    ld a, b
    nop
    ld a, h
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $f4
    inc c
    db $fc
    inc c
    nop
    nop
    inc c
    nop
    ld e, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, a
    ld bc, $017e
    nop
    nop
    inc c
    nop
    ld e, $00
    rra
    ld bc, $011f
    rra
    ld bc, $013f
    dec a
    inc bc
    nop
    nop
    inc bc
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    jr nz, jr_00b_67c2

    inc e
    inc a
    nop
    cp $00
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    cp $1e
    ldh a, [rNR10]
    ret nc

    jr nc, jr_00b_67c3

    ld bc, $001f
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    ld bc, $013f

jr_00b_67c2:
    ld a, l

jr_00b_67c3:
    inc bc
    adc a
    add b
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    rst $30
    rrca
    cp $ff
    ld hl, sp-$04
    nop
    add b
    rst $08
    ld b, b
    ld c, a
    ret nz

    sbc $c1
    sbc a
    pop bc
    rra
    add c
    rra
    ld bc, $011f
    rra
    nop
    ld b, e
    ldh [$c3], a
    ret nz

    add e
    ret nz

    add a
    add b
    rlca
    add b
    rrca
    nop
    rrca
    nop
    rra
    nop
    pop hl
    ld h, b
    pop hl
    ld h, b
    db $e3
    ld h, b
    jp $c360


    ld h, b
    ld b, a
    ret nz

    ld b, a
    ret nz

    rst $00
    ret nz

    db $fc
    inc c
    ld hl, sp+$0c
    add sp, $1c
    ld hl, sp+$18
    ld hl, sp+$18
    ldh a, [rNR23]
    ldh a, [rNR23]
    pop af
    db $10

jr_00b_6814:
    ld a, a
    nop
    ld a, a
    ld [$08ff], sp
    rst $38
    ld [$08fb], sp
    db $eb
    jr @-$03

    jr jr_00b_6814

    jr jr_00b_6864

    inc bc
    ld a, $83
    cp $43
    ld a, [$fe46]
    ld b, $fc
    ld b, $fc
    ld b, $fc
    inc b
    rrca
    inc c
    inc bc
    nop
    inc bc
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
    ldh a, [$30]
    ldh [$30], a
    ldh [$30], a
    ldh [$30], a
    ldh [rNR41], a

jr_00b_684e:
    ldh [rNR41], a
    and b
    ld h, b
    and b
    ld h, b
    ld a, a
    inc bc
    ld a, [hl]
    inc bc
    ld a, [$fe06]
    ld b, $fc
    ld b, $74
    adc h
    ld a, h
    ld a, h
    jr c, jr_00b_689c

jr_00b_6864:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $0302
    inc bc
    nop
    ld bc, $00ff
    cp $01
    rst $38
    ld bc, $03fd

jr_00b_688c:
    ei
    rlca
    rst $28
    rra
    cp $ff
    ld hl, sp-$04
    rst $08
    ret nz

    adc a
    ret nz

jr_00b_6898:
    adc a
    add b

jr_00b_689a:
    adc a
    add b

jr_00b_689c:
    rrca
    add b
    inc bc
    inc b
    inc bc
    inc bc
    ld bc, $d101
    jr nc, jr_00b_6898

jr_00b_68a7:
    jr nc, jr_00b_689a

    jr nc, jr_00b_688c

    jr nc, jr_00b_684e

    ld [hl], b
    ld h, b
    pop hl
    ldh [$e0], a
    ret nz

    ret nz

    pop af
    jr jr_00b_68a7

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$f0]
    ld h, b
    ld h, b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld [hl], h
    inc c
    ld l, h
    inc e
    inc a
    inc a
    jr jr_00b_68ea

    nop
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ld b, $01
    rlca
    rlca
    inc bc
    inc bc
    ldh [$60], a
    ldh [$60], a
    ret nz

    ld h, b

jr_00b_68ea:
    ret nz

    ld h, b
    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    ret nz

    add b
    add b
    inc d
    ld l, c
    jp z, Jump_00b_706a

    ld l, h
    ld b, [hl]
    ld l, [hl]
    db $fc
    ld l, a
    or d
    ld [hl], c
    adc b
    ld [hl], e
    ld e, [hl]
    ld [hl], l
    sub h
    ld l, d
    ld a, [hl-]
    ld l, h
    db $10
    ld l, [hl]
    add $6f
    ld a, h
    ld [hl], c
    ld d, d
    ld [hl], e
    jr z, @+$77

    adc $76
    nop
    nop
    rra
    rra
    db $10
    rra
    rla
    jr jr_00b_6931

    jr jr_00b_6933

    jr @+$0e

    ld [$0c09], sp
    nop
    nop
    add b
    add b
    ld h, a
    rst $20
    dec de
    db $fc
    call nz, Call_00b_633f
    inc e
    cp a

jr_00b_6931:
    ld b, b
    ld e, a

jr_00b_6933:
    add b
    nop
    nop
    inc bc
    inc bc
    call z, Call_000_31cf
    cp $46
    ld hl, sp-$74
    ld [hl], b
    ld a, [$fd04]
    ld [bc], a
    nop
    nop
    ldh a, [$f0]
    db $10
    ldh a, [$d0]
    jr nc, jr_00b_699d

    jr nc, jr_00b_699f

    jr nc, jr_00b_69b1

    jr nz, jr_00b_6973

    ld h, b
    ld [$080d], sp
    dec c
    inc b
    rlca
    inc b
    rlca
    ld [$0e0f], sp
    ld a, [bc]
    rla
    inc e
    rra
    inc d
    add a
    nop
    push bc
    nop
    ei
    inc b
    jp c, Jump_000_1a25

    db $fd

jr_00b_696e:
    and a
    db $f4
    cp h
    db $ec
    xor h

jr_00b_6973:
    db $ec
    jp nz, $4601

    ld bc, $41be
    or [hl]
    ld c, c
    or b
    ld a, a
    jp z, Jump_00b_7b5e

    ld l, [hl]
    ld l, e
    ld l, [hl]
    jr nz, jr_00b_69e6

    jr nz, jr_00b_69e8

    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_00b_696e

    ldh [$a0], a
    ret nc

    ld [hl], b
    ldh a, [$50]
    ld [$080d], sp
    dec c
    inc b
    rlca
    inc b
    rlca
    inc b

jr_00b_699d:
    rlca
    ld a, [de]

jr_00b_699f:
    ld e, $17
    ld d, $09
    add hl, bc
    add a
    nop
    push bc
    nop
    ei
    inc b
    jp c, Jump_000_1a25

    db $fd
    and a
    db $f4
    cp h

jr_00b_69b1:
    db $ec
    inc l
    db $ec
    cpl
    ld [hl-], a
    dec sp
    dec h
    ld d, [hl]
    ld l, c
    or l
    jp z, $d3ad

    xor a
    db $d3
    ld l, [hl]
    ld d, a
    ld e, h
    ld a, a
    ldh [$ac], a
    cp c
    ret nz

    ret nc

    ld h, c
    rst $20
    ld a, b
    ld c, b
    ld c, a
    sbc a
    add h
    ld a, c
    adc $24
    rst $38
    rrca
    ld l, d
    dec sp
    rlca
    ld d, $0d
    rst $08
    inc a
    dec h
    push hl
    di
    ld b, e
    inc a
    rst $20
    ld c, b
    rst $38
    add sp, -$68

jr_00b_69e6:
    cp b
    ld c, b

jr_00b_69e8:
    call nc, Call_00b_5a2c
    and [hl]
    ld l, d
    sub [hl]
    xor d
    sub $fc

jr_00b_69f1:
    call nc, $fc74
    rla
    ld [de], a
    ccf
    inc [hl]
    ld e, l
    ld l, [hl]
    or a
    adc $af
    db $d3
    xor a
    db $d3
    ld l, [hl]
    ld d, a
    ld e, h
    ld a, a
    ldh [$ac], a
    cp b
    pop bc
    ret nc

    ld h, c
    and a
    jr c, @+$1a

    rla
    inc de
    inc e
    and c
    sbc [hl]
    ld h, h
    rst $38
    cpl
    ld [hl-], a
    dec sp
    dec h
    ld d, [hl]
    ld l, c
    or l
    jp z, $d3ad

    xor a
    db $d3
    ld l, a
    ld d, [hl]
    ld e, a
    ld a, h
    ldh [$ac], a
    cp b
    pop bc
    ret nc

    ld h, c
    rst $20
    ld hl, sp-$68
    cpl
    rra
    inc h
    add hl, hl
    ld a, $a4
    ld a, a
    jr c, jr_00b_6a75

    jr nc, jr_00b_6a77

    ld l, l
    ld a, a
    ld [hl], e
    ld [hl], e
    jr nz, @+$22

    nop
    nop
    nop
    nop
    nop

jr_00b_6a43:
    nop
    ld e, c
    rst $38
    sbc e
    adc $36
    inc c
    ld l, h
    sub b
    call c, Call_000_2be0
    ld sp, $1913
    rrca
    rrca
    inc [hl]
    rst $38
    or d
    rst $20
    reti


    ld h, c
    ld l, l
    inc de
    db $76
    ld c, $a8
    jr jr_00b_69f1

    jr nc, jr_00b_6a43

    ldh [$38], a
    ld hl, sp+$18
    ld hl, sp+$6c
    db $fc
    sbc h
    sbc h
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    inc a

jr_00b_6a75:
    dec [hl]
    scf

jr_00b_6a77:
    ld [hl-], a
    ld l, a
    ld l, c
    ld a, a
    ld a, a
    jr nz, jr_00b_6a9e

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    rst $38
    sbc e
    adc $36
    inc c
    ld l, h
    sub b
    call c, Call_000_2be0
    ld sp, $1913
    rrca
    rrca
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l

jr_00b_6a9e:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, a
    ld l, h
    ld l, l
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    db $76
    ld [hl], a
    ld [hl], d
    ld [hl], e
    ld a, h
    ld a, l
    ld a, d
    ld a, e
    nop
    nop
    nop
    nop
    inc bc

jr_00b_6acf:
    inc bc
    inc b

jr_00b_6ad1:
    rlca
    dec bc
    inc c
    rla
    jr jr_00b_6afe

    jr c, jr_00b_6b00

    jr c, jr_00b_6adb

jr_00b_6adb:
    nop
    xor $ee
    rra
    pop af
    jp hl


    db $10
    ld [hl], b
    ld [$08f0], sp
    ldh [rNR23], a
    ret z

    jr nc, jr_00b_6aeb

jr_00b_6aeb:
    nop
    xor $ee
    pop af
    rra
    ld l, $11
    dec e
    jr nz, jr_00b_6b14

    jr nz, @+$11

    jr nc, @+$29

    jr jr_00b_6afb

jr_00b_6afb:
    nop
    nop
    nop

jr_00b_6afe:
    add b
    add b

jr_00b_6b00:
    ld b, b
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_00b_6acf

    jr c, jr_00b_6ad1

    jr c, @+$15

    inc e
    ld [$040f], sp
    rlca
    ld b, $05
    rlca
    inc b

jr_00b_6b14:
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    adc h
    ld [hl], b
    inc d
    add sp, $1f
    ld hl, sp+$67
    or h
    rst $18
    ld a, h
    call nc, $dc74
    call c, $c1a2
    ld h, e
    inc e
    ld d, b
    cpl
    ldh a, [$3f]
    call z, $f75b
    ld a, h
    ld d, a
    ld e, h
    db $76
    ld [hl], a
    adc d
    rlca
    sub b
    ld [hl], b
    jr nz, @-$1e

    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    add b
    add b
    inc de
    inc e
    ld [$340f], sp
    scf
    ld l, $3d
    rra
    ld [de], a
    dec e
    rra
    ld de, $0b1f
    rrca
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    ld bc, $0301
    ld [bc], a
    dec b
    ld b, $05
    rlca
    ld d, b
    pop hl
    rst $20
    ld hl, sp+$44
    rst $38
    xor $bb
    rst $38
    ld de, $ffef
    db $f4
    add a
    ld h, e
    add e
    dec d
    rrca
    rst $08
    ccf
    ld b, h
    rst $38
    xor $bb
    rst $38
    ld de, $feef
    ld e, a
    jp nz, $838d

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
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld [$040f], sp
    rlca
    rlca
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ret nc

    pop hl
    ld h, a
    ld hl, sp-$1c
    ccf
    cp [hl]
    dec de
    rst $18
    ld de, $1fef
    ld [hl], h
    add a
    ld h, e
    add e
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    dec b
    dec b
    rrca
    ld [$1c13], sp
    ccf
    cpl
    ld d, b
    pop hl
    rst $20
    ld hl, sp+$44
    rst $38
    xor $bb
    rst $38
    ld de, $ffef
    ld [hl], h
    add a
    ld h, e
    add e
    dec b
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101

jr_00b_6be4:
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $e701
    inc b
    db $e3
    inc bc
    db $f4
    inc b
    ccf
    jp $8f77


    jr c, @-$36

    db $10
    ldh a, [$e0]
    ldh [$cf], a
    ld b, c
    adc a
    add c
    ld e, a
    ld b, c
    ld sp, hl
    add a
    db $dd
    db $e3
    jr c, jr_00b_6c2d

    db $10
    rra
    rrca
    rrca
    ld b, b
    ret nz

    add b
    add b
    ret nz

    ld b, b
    ld h, b
    and b
    jr nc, jr_00b_6be4

    and b
    ldh [$c0], a
    ret nz

    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    ld bc, $3b01
    scf
    ld e, l

jr_00b_6c2d:
    ld a, l
    ld h, c
    ld h, c
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    ld bc, $0401
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    ld l, h
    ld l, l
    ld [hl], e
    ld [hl], h
    ld [hl], c
    ld [hl], d
    ld a, e
    ld a, b
    ld a, c
    ld a, d
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld [hl], l
    db $76
    ld [hl], c
    ld [hl], d
    ld a, h
    ld a, b
    ld a, c
    ld a, d
    nop
    nop
    nop
    nop
    rlca
    rlca
    add hl, de
    dec e
    daa
    jr nc, jr_00b_6cc9

    ld h, c
    ld a, a
    ld b, c
    cp l
    jp Jump_00b_6060


    sub b
    sub b
    ld [$0f08], sp
    rrca
    sbc h
    sub e
    ldh [rIE], a
    ld b, b
    cp a
    ld a, [hl]

jr_00b_6c8f:
    add c
    nop
    nop
    nop
    nop
    dec sp
    dec sp
    push bc
    add $83
    add d
    add d
    add e
    add e
    add e
    push bc
    ld b, a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_00b_6d18

    ret z

    jr jr_00b_6c8f

    inc c
    db $fc
    ld b, h
    cp d
    and [hl]
    and [hl]
    jp c, $bcdc

    or [hl]
    xor $ab
    rst $38
    sub a
    cp $4a
    ld a, e
    ld [hl-], a
    inc sp
    ld bc, $f601
    add b
    ld h, h
    ld b, b
    rst $00
    cp b
    sbc c
    ld a, [hl]
    inc [hl]

jr_00b_6cc9:
    rst $30
    ld l, $ed
    xor h
    db $ec
    and b
    call z, Call_000_39ff
    ld c, d
    ld bc, $38c5
    inc sp
    db $fc
    ld e, c
    sbc $e8
    ld l, a
    ld l, d
    ld l, a
    dec bc
    ld h, a
    ld a, [de]
    ld d, $b6
    cp d
    jp c, $aaee

    cp $d2
    cp $a4
    cp h
    sbc b
    sbc b
    nop
    nop
    and [hl]
    jp c, $bcdc

    or [hl]
    xor $bb
    rst $38
    sbc a
    rst $30
    ld c, c
    ld a, c
    dec sp
    ld a, [hl-]
    ld c, $09
    or $80
    ld h, h
    ld b, b
    rst $00
    cp b
    sbc c
    ld a, [hl]
    inc [hl]
    rst $30
    xor [hl]
    db $ed
    xor h
    db $ec
    ld h, b
    call z, $daa6
    call c, $b6bc
    xor $bb
    rst $38

jr_00b_6d18:
    sbc a
    or $4a
    ld a, e
    ld a, [hl-]
    dec sp
    ld bc, $0101
    ld bc, $0302
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld b, $05
    inc c
    inc c
    ld h, b
    jp nz, Jump_00b_61d0

    and a
    ld hl, sp+$78
    rlca
    inc sp
    inc c
    jr nz, jr_00b_6d6c

    and b
    jr nz, @+$71

    ldh a, [$0d]
    add a
    ld d, $0d
    srl a
    dec a
    pop bc
    sbc b
    ld h, b
    ld [$0a18], sp
    add hl, bc
    db $ec
    ld e, $00
    nop
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
    ret nz

    ld b, b
    ld h, b
    ld h, b
    ld b, $06
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0203

jr_00b_6d6c:
    rlca
    inc b
    rrca
    ld [$63c0], sp
    jr nc, jr_00b_6d95

    ld h, a
    jr jr_00b_6d8f

    rlca
    and e
    cp h
    ldh [$e0], a
    ldh [$60], a
    rst $28
    or b
    ld bc, $0201
    inc bc
    ld bc, $0301
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    dec c

jr_00b_6d8f:
    ld a, [bc]
    ld h, b
    jp Jump_00b_61d0


    and a

jr_00b_6d95:
    ld hl, sp+$78
    rlca
    inc sp
    inc c
    jr nz, jr_00b_6dcc

    and b
    jr nz, @+$71

    ldh a, [$1f]
    inc d
    rrca
    dec bc
    rlca
    inc b
    rrca
    ld [$0407], sp
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    ret nz

    ldh [$c0], a
    ld h, b
    ret z

    ld [hl], a
    db $eb
    ld sp, $71eb
    sbc a
    sub c
    rrca
    add hl, bc
    ld b, $06
    rlca
    ld c, $07
    dec c
    daa
    call c, Call_000_18af
    xor a
    inc e
    di
    ld [de], a

jr_00b_6dcc:
    pop hl
    ld hl, $c0c0
    ldh a, [$50]
    ldh [$a0], a
    ret nz

    ld b, b
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    rra
    ld de, $0a0f
    rlca
    inc b
    rrca
    ld [$0407], sp
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    ret nz

    ld h, b
    ret nz

    ld h, b
    ret z

    ld [hl], a
    db $eb
    ld [hl], c
    db $eb
    ld [hl], c
    sbc a
    sub c
    rrca
    add hl, bc
    ld b, $06
    ld d, $15
    dec d
    inc de
    cpl
    ld l, $3f
    jr c, jr_00b_6e10

    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop

jr_00b_6e10:
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, a
    ld l, h
    ld l, l
    ld [hl], l
    db $76
    ld [hl], e
    ld [hl], h
    ld a, l
    ld a, [hl]
    ld a, e
    ld a, h
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld [hl], b
    ld l, e
    ld l, h
    ld l, l
    ld [hl], a
    ld a, b
    ld [hl], e
    ld [hl], h

Jump_00b_6e42:
    ld a, a
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
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld e, $1e
    ld hl, $213f
    ccf
    inc h
    dec sp
    ld [hl], d
    ld e, c
    call $aab8
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld hl, sp-$08
    ld b, h
    db $fc
    ld l, d
    and $a5
    ld [hl], e
    inc bc
    ld [bc], a
    rlca
    ld b, $3d
    ld a, $2d
    ld h, $18
    rra
    inc e
    dec de
    jr jr_00b_6e97

    inc h
    inc sp
    ld d, a
    inc c
    db $e4
    rra
    sub [hl]
    ld h, e
    inc de
    pop hl
    rra
    ld hl, sp+$34
    push af
    xor [hl]
    db $ec
    xor h
    db $ec
    sbc l

jr_00b_6e97:
    ld [hl], e
    ld de, $10ff
    rst $38
    sub b
    rst $38
    ld a, b
    rst $38
    db $dd
    sbc $6c
    ld l, a
    ld l, e
    ld l, a
    add b
    add b
    ret nz

    ret nz

    cp b
    cp b
    ld l, b
    ret z

    ldh a, [rSVBK]
    ldh a, [$30]
    ret nc

    jr nc, jr_00b_6f1d

    sbc b
    inc bc
    ld [bc], a
    rlca
    ld b, $39
    ld a, [hl-]
    add hl, sp
    ld a, [hl+]
    cpl
    scf
    dec de
    ld de, $161f
    rla
    jr jr_00b_6f1e

jr_00b_6ec7:
    inc c
    db $e4
    rra
    sub [hl]
    ld h, e
    inc de
    pop hl
    rra
    ld hl, sp-$4c
    push af
    xor [hl]
    db $ec
    xor h
    db $ec
    add hl, hl
    scf
    scf
    cpl
    dec sp
    cpl

jr_00b_6edc:
    ld e, $17
    rrca
    ld c, $0e
    dec bc
    ld d, $14
    dec hl
    inc l
    and b
    call z, $e3dc
    jr z, jr_00b_6edc

    inc de
    inc a
    rst $38
    db $10
    ret c

    ccf
    inc a
    rst $38
    ld a, [hl]
    rst $38
    dec bc
    ld h, a
    ld [hl], a
    adc a
    add hl, hl
    rra
    sub b
    ld a, c
    rst $38
    db $10
    ld [hl], $f9
    ld a, c
    cp $fd
    cp $18
    add sp, -$38
    ld hl, sp-$58
    ld hl, sp-$30
    ldh a, [$e0]
    ldh [$e0], a
    and b
    ret nc

    ld d, b
    xor b
    ld l, b
    ld l, $3f
    dec [hl]
    ld l, $35
    ld l, $1a

jr_00b_6f1d:
    rla

jr_00b_6f1e:
    dec c
    dec bc
    rla
    rla
    rla
    db $10
    daa
    jr nz, jr_00b_6ec7

    call z, Call_00b_63dc
    xor b
    ld [hl], c
    db $d3
    inc a
    ld a, a
    add b
    ld e, b
    cp a
    cp h
    rst $38
    cp $7f
    add hl, hl
    scf
    ld [hl], $2f
    ld [hl], $2f
    dec de
    rla
    dec c
    dec bc
    ld d, $17
    inc d
    rla
    dec l
    inc l
    and b
    call z, $e3dc
    add sp, -$0f
    or e
    call c, Call_000_00ff
    ret c

    ccf
    inc a
    rst $38
    ld a, [hl]
    rst $38
    inc l
    cpl
    ld c, a
    ld b, a
    ld c, a
    ld b, c
    adc a
    add c
    sbc [hl]
    add d
    sbc [hl]
    add d
    db $fc
    db $fc
    nop
    nop
    rst $38
    rst $28
    rst $08
    rst $28
    rst $00
    rst $28
    ld b, e
    ld a, a
    dec hl
    ld sp, $312b
    ld de, $0e1b
    ld c, $fe
    rst $28
    rst $20
    rst $28
    rst $00
    rst $28
    add l
    db $fd
    xor b
    jr @-$56

    jr jr_00b_6f93

    or b
    ldh [$e0], a
    ld l, b
    add sp, -$1c
    call nz, $04e4
    ld [c], a
    ld [bc], a
    ld a, [c]
    add d
    ld a, [c]
    add d
    ld a, [hl]

jr_00b_6f93:
    ld a, [hl]
    nop
    nop
    cpl
    jr nz, jr_00b_6fe8

    ld b, b
    ld c, a
    ld b, c
    adc a
    add c
    sbc [hl]
    add d
    sbc [hl]
    add d
    db $fc

Jump_00b_6fa3:
    db $fc
    nop
    nop
    dec hl
    ld a, [hl+]
    ld d, [hl]
    ld e, c
    ld e, a
    ld d, a
    sbc a
    sbc c
    sbc [hl]
    add d
    sbc [hl]
    add d
    db $fc
    db $fc
    nop
    nop
    rst $38
    rst $28
    rst $08
    rst $28
    jp Jump_00b_63ef


    ld a, a
    dec hl
    ld sp, $312b
    ld de, $0e1b
    ld c, $04
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, l
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, l
    ld l, l
    ld l, [hl]
    ld l, e
    ld l, h
    ld [hl], e
    ld [hl], h
    ld [hl], c
    ld [hl], d
    ld a, e
    ld a, b

jr_00b_6fe8:
    ld a, c
    ld a, d
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, l
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld [hl], l
    db $76
    ld [hl], c
    ld [hl], d
    ld a, h
    ld a, l
    ld a, c
    ld a, d
    nop
    nop
    jr nc, jr_00b_7030

    ld a, b
    ld c, b
    ld c, h
    ld b, h
    ld b, [hl]
    ld b, d
    ld b, [hl]
    ld b, d
    daa
    ld hl, $2122
    nop
    nop
    nop
    nop
    rrca
    rrca
    jr nc, jr_00b_7053

    ld b, b
    ld a, a
    call nc, $1e8b
    and c
    rrca
    ld b, b

jr_00b_701c:
    nop
    nop
    nop
    nop
    ldh [$e0], a
    jr jr_00b_701c

    inc b
    db $fc
    ld [de], a
    and $b1
    ld c, e
    pop hl
    dec b
    nop
    nop
    jr jr_00b_7048

Call_00b_7030:
jr_00b_7030:
    inc a
    inc h
    ld h, h
    ld b, h
    call nz, $c484
    add h
    ret z

    ld [$0888], sp
    ld [de], a
    ld de, $1110
    ld [$0609], sp
    rlca
    ld [bc], a
    ld [bc], a
    inc b
    inc b

jr_00b_7048:
    dec [hl]
    inc [hl]
    ld a, e
    ld c, [hl]
    add l
    ld b, d
    ld b, b
    and a
    ld a, [de]
    push hl
    ld a, [de]

jr_00b_7053:
    db $fc
    inc [hl]
    ld [hl], h
    inc l
    ld a, h
    xor h
    ld l, h
    and b
    ld l, h
    ld b, d
    add l
    inc d
    res 6, b
    ld c, a
    or b
    ld a, a
    ld e, b
    ld e, h
    ld l, b
    ld a, h
    ld l, e
    ld l, h

Jump_00b_706a:
    dec bc
    ld l, h
    sub b
    db $10
    db $10
    db $10
    jr nz, jr_00b_7092

    ret nz

    ret nz

    add b
    add b
    ld b, b
    ld b, b
    ld e, b
    ld e, b
    cp h
    db $e4
    ld [de], a
    ld de, $1110
    ld [$3609], sp
    scf
    ld l, $3e
    ld de, $3619
    scf
    ld a, b
    ld e, a
    add l
    ld b, d
    ld b, b
    and a
    ld a, [de]
    push hl

jr_00b_7092:
    ld a, [de]
    db $fc
    inc [hl]
    ld [hl], h
    inc l
    ld a, h
    xor h
    db $ec
    and b
    db $ec
    cp [hl]
    call $f38c
    ld [hl], e
    ld a, a
    inc c
    inc c
    add hl, bc
    ld [$1113], sp
    dec d
    inc de

jr_00b_70aa:
    add hl, sp
    ld h, $a0
    pop bc
    reti


    ld hl, sp-$1a
    inc [hl]
    ld b, e
    ld a, e
    daa
    ld a, $ba
    ccf
    pop af
    cpl
    rst $38
    reti


    ld a, [bc]
    rlca
    ld [hl], $3f
    rst $08
    ld e, c
    add h
    cp h
    set 7, d
    cp e
    ld sp, hl
    rra
    jp hl


    rst $38
    ld [hl], $fa
    ld h, [hl]
    ld h, d
    sbc [hl]
    sbc h
    db $fc
    ld h, b
    ld h, b
    jr nz, jr_00b_70f6

    ld d, b
    sub b
    jr nc, jr_00b_70aa

    sbc b
    ld l, b
    cp c
    adc $8e
    or $73
    ld a, [hl]
    dec c
    dec c
    add hl, bc
    add hl, bc
    inc de
    ld de, $1315
    add hl, sp
    ld h, $a0
    pop bc
    ret nc

    ld h, c
    ld [hl], e
    inc a
    ld c, a
    ld b, e
    rst $38
    ld b, d

jr_00b_70f6:
    ld a, [$b1a7]
    xor a
    rst $38
    reti


    cp [hl]
    call $f38d
    ld [hl], e
    ld a, a
    rrca
    dec c
    dec bc
    ld a, [bc]
    ld d, $12
    ld d, $16
    jr c, jr_00b_7139

    and b
    pop bc
    ret nc

    pop hl
    db $e3
    cp h
    ld c, a
    ld b, e
    ld a, a
    ld b, d
    ld a, d

jr_00b_7117:
    daa
    or c

jr_00b_7119:
    ld l, a
    ld a, a
    ld sp, hl
    inc sp
    inc l
    daa
    add hl, sp
    cpl
    ld sp, $302f
    cpl
    jr nc, @+$21

    add hl, de
    rlca
    rlca
    nop
    nop
    rst $08
    adc c
    add a
    rlca
    add hl, bc
    nop
    jp hl


    ret nz

    db $eb
    ld sp, $11fd
    db $fd

jr_00b_7139:
    ld sp, hl
    ld b, $07
    rst $20

jr_00b_713d:
    ld [hl+], a
    jp $21c1


    ld bc, $062f
    xor a
    jr jr_00b_71c6

jr_00b_7147:
    ld de, $3f7f
    ret nz

    ret nz

    ret c

    jr z, jr_00b_7117

    jr c, jr_00b_7139

    jr @-$16

    jr jr_00b_713d

    jr jr_00b_7147

    jr nc, jr_00b_7119

    ret nz

    nop
    nop
    ld [hl], $37
    ld sp, $2f3b
    ccf
    ccf
    jr c, jr_00b_7194

    jr nc, jr_00b_7186

    add hl, de
    rlca
    rlca
    nop
    nop
    rst $28
    ret


    rst $00
    add a
    adc c
    nop
    jp hl


    ret nz

    db $eb
    ld sp, $11fd
    db $fd
    ld sp, hl
    ld b, $07
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l

jr_00b_7186:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c

jr_00b_7194:
    ld l, [hl]
    ld l, a
    ld l, h
    ld l, l
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    db $76
    ld [hl], a
    ld [hl], d
    ld [hl], e
    ld a, h
    ld a, l
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
    inc b
    inc b
    ld c, $0a
    rrca
    dec bc
    ld c, $0b
    nop
    nop
    nop
    nop

jr_00b_71c6:
    rrca
    rrca
    ld sp, $403f
    ld a, a
    jp nz, $a2bd

    jr @+$24

    stop
    nop
    nop
    nop
    ldh [$e0], a
    jr @-$06

    inc b
    db $fc
    add [hl]
    ld a, d
    xor e
    ld de, $1189
    ld c, $0b
    rlca
    dec b
    rlca
    dec b
    ld b, $05
    inc b
    rlca
    ld c, $09
    ld [$0e0f], sp
    add hl, bc
    call nz, $043b
    ei
    add hl, sp
    cp $dd
    sbc $b6
    or [hl]
    rst $28
    rst $38
    cp a
    xor $a2
    adc $47
    cp b
    ld b, l
    cp d
    jr @+$01

    inc [hl]
    rst $38
    ld e, d
    rst $18
    xor $ff
    ei
    rst $28
    adc h
    db $e4
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

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld c, $0b
    rlca
    dec b
    rlca
    dec b
    ld e, $1d
    rra
    rla
    inc c
    add hl, bc
    dec bc
    dec bc
    dec bc
    inc c
    call nz, $043b
    ei
    add hl, sp
    cp $dd
    sbc $b6
    or [hl]
    rst $28
    rst $38
    ld a, a
    xor $e2
    ld c, [hl]
    call nz, $043b
    ei
    add hl, sp
    cp $dd
    sbc $b4
    or [hl]
    rst $28
    rst $38
    cp a
    xor $a2
    adc $06
    dec b
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    dec b
    rlca
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    call c, Call_00b_78e4
    ei
    ld h, [hl]
    ld sp, hl
    sbc a
    adc [hl]
    ld b, b
    or h
    sbc c
    ld h, h
    xor b
    ld [hl], a
    jr nc, @+$01

    ld a, a
    ld c, d
    ld a, $bd
    call z, $f13b
    rst $20
    dec bc
    ld e, a
    ld [hl], $4f
    dec h
    sbc $19
    cp $c0
    ret nz

    ret nz

    ret nz

    ret nz

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
    dec b
    ld b, $06
    rlca
    ld b, $07
    rlca
    rlca
    dec b
    rlca
    ld b, $07
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    call c, $b8e4
    ld a, e
    ld d, [hl]
    cp c
    rra
    adc $a0
    db $f4
    reti


    db $e4
    ld c, b
    rst $30
    jr nc, @+$01

    ld b, $05
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    dec b
    rlca
    ld b, $07
    inc bc
    ld [bc], a
    ld b, $05
    call c, Call_00b_78e4
    ei
    ld h, [hl]

jr_00b_72c7:
    ld sp, hl
    sbc a
    adc [hl]
    ld b, b
    or h
    sbc c
    ld h, h
    jr z, jr_00b_72c7

    ld [hl], b
    rst $38
    rlca
    ld b, $07
    dec b
    ld b, $05
    inc c
    dec bc
    dec c
    dec bc
    ld a, [bc]
    ld c, $0c
    inc c
    nop
    nop
    ldh [$7f], a
    pop bc
    ld [hl], a
    pop bc
    rst $30
    xor e
    ld [hl], c
    rst $38
    ei
    dec d
    dec de
    dec bc
    rrca
    ld b, $06
    inc c
    rst $38
    inc b
    rst $18
    inc b
    rst $18
    xor d
    dec e
    rst $38
    cp a
    ld d, b
    or b
    and b
    ldh [$c0], a
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld h, b
    and b
    ld h, b
    and b
    and b
    ldh [$60], a
    ld h, b
    nop
    nop
    ld b, $05
    ld b, $05
    ld b, $05
    inc c
    dec bc
    dec c
    dec bc
    ld a, [bc]
    ld c, $0c
    inc c
    nop
    nop
    ld h, b
    rst $38
    ld b, c
    rst $30
    ld b, c
    rst $30
    xor e
    ld [hl], c
    rst $38
    ei
    dec d
    dec de
    dec bc
    rrca
    ld b, $06
    dec bc
    ld a, [bc]
    dec bc
    add hl, bc
    ld e, $17
    inc e
    rra
    dec c
    dec bc
    ld a, [bc]
    ld c, $0c
    inc c
    nop
    nop
    ldh [rIE], a
    ld b, c
    rst $30
    ld b, c
    rst $30
    xor e
    ld [hl], c
    rst $38
    ei
    dec d
    dec de
    dec bc
    rrca
    ld b, $06
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, l
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, l
    ld l, l
    ld l, [hl]
    ld l, e
    ld l, h
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld a, h
    ld a, l
    ld a, d
    ld a, e
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, l
    ld l, c
    ld l, a
    ld l, e
    ld l, h
    db $76
    ld [hl], a
    ld [hl], d
    ld [hl], e
    ld a, [hl]
    ld a, a
    ld a, d
    ld a, e
    ld bc, $0301
    ld [bc], a
    rrca
    inc c
    rra
    db $10
    dec a
    ld [hl+], a
    ld [hl], $24
    ld l, $28
    ld a, $28
    rst $08
    rst $08
    ld a, [c]
    ld a, $fd
    inc c
    rst $38
    inc b
    ld l, a
    ld [de], a
    rst $18
    ld hl, $40b3
    ld [hl], c
    add d
    ldh a, [$f0]
    call z, $e27c
    ld a, $f9
    ccf
    db $fd
    ld b, a
    rst $28
    add d
    dec e
    nop

jr_00b_73b6:
    rst $10
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
    add b
    add b
    add b
    ret nz

    ld b, b
    ccf
    inc l
    rra
    inc d
    rrca
    ld c, $0d
    inc c
    ld de, $0d1e
    ld c, $02
    inc bc
    ld bc, $7d01
    ld [c], a
    ld a, $f9
    rst $38
    ld a, h
    rst $38
    ld l, [hl]
    ld l, b
    xor h
    cpl
    ret nz

    jr c, jr_00b_73b6

    cp b
    ret nc

    rst $28
    inc e
    ei
    inc a
    rst $38
    ld a, h
    cp $ec
    dec l
    ld l, d
    jp hl


    ld b, $38
    rla
    cp e
    rla
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld h, b
    ld h, b
    db $10
    ldh a, [$60]
    ldh [$80], a
    add b
    nop
    nop
    ccf
    inc l
    rra
    inc d
    ld l, a
    ld l, [hl]
    ld e, l
    ld e, h
    cpl
    ld h, $2f
    ld a, [hl+]
    cpl
    ld sp, $181f
    ld a, l
    ld [c], a
    ld a, $f9
    rst $38
    ld a, h
    rst $38
    ld l, [hl]
    add sp, -$54
    cp a
    ret nz

    or b
    ret nc

    ldh a, [$d0]
    nop
    nop
    rlca
    rlca
    ld c, $08
    dec c
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    rla
    inc de
    ld d, b
    ld a, a
    rst $28
    cp a
    ld e, b
    ccf
    ld d, d
    xor c
    ld bc, $20fc
    rst $38
    ld h, c
    ld a, [$3879]
    ld d, h
    cp h
    rst $28
    ei
    inc [hl]
    ld hl, sp-$6b
    dec hl
    nop
    ld a, a
    ld [$0dff], sp
    cp [hl]
    dec a
    add hl, sp
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ld h, b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    ret nc

    sub b
    rlca
    inc b
    ld b, $07
    rrca

jr_00b_746d:
    dec bc
    dec c
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld d, $13
    ld sp, $1fff
    rst $38
    jr jr_00b_746d

    sub d
    jp hl


    pop bc
    db $fc
    ld h, b
    rst $38
    ld hl, $39fa
    ld hl, sp+$00
    nop
    rlca
    rlca
    ld c, $08
    dec c
    dec bc
    dec bc
    dec bc
    ld c, $0f
    rrca
    inc c
    rra
    inc d
    ld d, c
    ld a, a
    rst $28
    cp a
    ld e, b
    ccf
    jp nc, Jump_000_01a9

    db $fc
    jr nz, @+$01

    ld h, c
    ld a, [$f8b9]
    dec d
    rla
    inc d
    rla
    dec l
    daa
    add hl, hl
    cpl
    ld a, [hl-]
    cpl
    ld a, [de]
    rra
    rlca
    rlca
    nop
    nop
    and d
    ld a, b
    pop hl
    jp c, $df40

    ld b, c
    rst $18
    ld e, [hl]
    jp $8bf6


    db $ec
    rra
    rst $38
    rst $38

jr_00b_74c8:
    adc e
    dec a
    ld c, $b7
    inc b
    rst $30
    dec b
    rst $30
    db $f4
    add a
    jp c, Jump_00b_6fa3

    pop af
    cp $fe
    ld d, b
    ret nc

    ld d, b
    ret nc

    ld l, b
    ret z

    jr z, jr_00b_74c8

    cp b
    add sp, -$50
    ldh a, [$c0]
    ret nz

    nop
    nop
    inc d
    rla
    inc d
    rla
    dec l
    daa
    add hl, hl
    cpl
    ld a, [hl-]
    cpl
    ld a, [de]
    rra
    rlca
    rlca
    nop
    nop
    ld [hl+], a
    ld hl, sp+$61
    jp c, $df40

    ld b, c
    rst $18
    ld e, [hl]
    jp $8bf6


    db $ec
    rra
    rst $38
    rst $38
    rla
    inc de
    cpl
    add hl, hl
    ld a, $3f
    dec l
    daa
    add hl, hl
    cpl
    ld a, [hl-]
    cpl
    ld a, [de]
    rra
    rlca
    rlca
    ld [hl+], a
    ld hl, sp+$61
    jp c, $df51

    ld e, a
    rst $18
    ld e, [hl]
    jp $8bf6


    db $ec
    rra
    rst $38
    rst $38
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, a
    ld l, h
    ld l, l
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld a, h
    ld a, l
    ld a, d
    ld a, e
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    db $76
    ld [hl], a
    ld [hl], d
    ld [hl], e
    ld a, [hl]
    ld a, a
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
    ld bc, $0101
    ld bc, $0302
    rrca
    rrca
    db $10
    rra
    cpl
    jr nc, @+$4a

    ld [hl], h
    or e
    call z, $8271
    and d
    ld bc, $003d
    nop
    nop
    ldh a, [$f0]
    call z, $0a3c
    ld b, $e5
    inc bc
    ld a, [$0d01]
    ldh a, [$f6]
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
    add b
    add b
    add b
    ld b, b
    ret nz

    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $09
    inc c
    add hl, bc
    inc c
    rlca
    inc b
    add hl, bc
    inc c
    dec c
    ld [$1c62], sp
    adc d
    inc [hl]
    adc d
    inc [hl]
    ld e, c
    ld h, $3c
    ld a, e
    db $fc
    ld a, a
    inc a
    ld l, l
    jr nz, @-$32

    adc d
    inc b
    ld b, l
    ld [bc], a
    ld [hl+], a
    ld b, c
    sbc b
    ld h, c
    db $fd
    jr c, @+$01

    ld a, h
    ld a, d
    ld l, l
    ld a, [bc]
    ld h, l
    ld b, b
    ret nz

    ret nz

    ld b, b
    jr nz, jr_00b_7634

    jr nz, jr_00b_7636

    jr nz, jr_00b_7638

    ret nz

    ld b, b
    and b
    jr nz, @-$5e

    jr nz, jr_00b_75e2

    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_00b_75e2:
    inc b
    ld b, $09
    inc c
    add hl, bc
    inc c
    scf
    inc [hl]
    ccf
    ld l, $17

jr_00b_75ed:
    inc de
    ld [de], a
    add hl, de
    ld [de], a
    add hl, de
    rra
    rla
    jr jr_00b_7614

    ld [$0a0b], sp
    dec bc
    dec b
    ld b, $02
    inc bc
    ld h, b
    ret nz

    ret nc

    db $e3
    daa
    ld hl, sp-$18
    rst $20
    ccf
    rra
    ccf
    db $e3
    ld e, h
    rst $38
    and c
    ld a, a
    inc c
    rlca
    ld d, $8f
    ret


    ccf

jr_00b_7614:
    ld a, $de

jr_00b_7616:
    ld hl, sp+$61
    ld hl, sp-$61
    push hl
    cp $0a
    db $fd
    sub b
    jr nc, @+$52

    or b
    ldh a, [$d0]
    jr nc, jr_00b_7616

    jr nz, @-$5e

    and b
    and b
    ld b, b
    ret nz

    add b
    add b
    cpl
    dec h
    ccf
    add hl, hl
    jr @+$21

jr_00b_7634:
    inc e
    rra

jr_00b_7636:
    ld a, [bc]
    dec bc

jr_00b_7638:
    dec bc
    dec bc
    dec b
    ld b, $02
    inc bc
    ld h, b
    ret nz

    ret nc

    db $e3
    ld h, [hl]
    ld a, c
    jr z, jr_00b_75ed

    ccf
    rst $18
    ccf
    db $e3
    sbc h
    rst $38
    pop hl
    ld a, a
    ld [de], a
    add hl, de
    ld [de], a
    add hl, de
    jr jr_00b_766b

    jr @+$19

    add hl, bc
    dec bc
    dec bc
    dec bc
    ld b, $07
    inc b
    rlca
    ld h, b
    ret nz

    ret nc

    db $e3
    daa
    ld hl, sp-$18
    rst $20
    ccf
    rra
    ccf
    db $e3
    inc e

jr_00b_766b:
    rst $38
    ld hl, $01ff
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

jr_00b_767c:
    nop
    nop
    cp $5f
    ld d, e
    rst $08
    rst $20
    rst $18
    cpl
    ccf
    daa
    ccf
    dec de
    ld de, $0f09
    ld b, $06
    cp $f4
    sub l
    and $cf
    rst $30
    ld [$c9fb], a
    ld sp, hl
    or b
    db $10
    jr nz, jr_00b_767c

    ret nz

    ret nz

    ld b, b
    ret nz

    jr nz, jr_00b_7702

    and b
    ld h, b
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
    add hl, bc
    ld c, $1e
    add hl, de
    rla
    dec d
    dec de
    inc de
    ld a, $2e
    jr nc, jr_00b_76ea

    nop
    nop
    nop
    nop
    ld a, [hl]
    rst $18
    db $d3
    rst $08
    rst $20
    rst $18
    cpl
    ccf
    daa
    ccf
    dec de
    ld de, $0f09
    ld b, $06
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    ld l, h
    ld l, l

jr_00b_76ea:
    ld [hl], e
    ld [hl], h
    ld [hl], c
    ld [hl], d
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    inc b
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld [hl], l

jr_00b_76fd:
    db $76
    ld [hl], c
    ld [hl], d
    ld a, e
    ld a, h

jr_00b_7702:
    ld a, c
    ld a, d
    push de
    ld a, d
    ld hl, $7731
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $da00
    ld b, $c0

jr_00b_7714:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00b_7714

    pop de
    ld a, e
    ld hl, $7731
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $dac0
    ld b, $c0

jr_00b_772a:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00b_772a

    ret


    ld b, l

jr_00b_7732:
    ld [hl], a
    dec b
    ld a, b
    push bc
    ld a, b
    add l
    ld a, c
    ld b, l
    ld a, d
    dec b
    ld a, e
    push bc
    ld a, e

jr_00b_773f:
    add l
    ld a, h
    ld b, l
    ld a, l
    dec b
    ld a, [hl]
    nop
    nop
    ld [bc], a
    ld bc, $0708

jr_00b_774b:
    db $10
    rrca
    inc bc
    inc e
    daa
    jr jr_00b_7761

    jr nc, jr_00b_77a3

    jr nc, jr_00b_7775

    ld h, b
    sbc a
    ld h, b
    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

jr_00b_7761:
    ccf
    ret nz

    ccf
    ret nz

    add d
    ld a, h
    nop
    rst $38
    jr c, jr_00b_7732

    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_00b_7772:
    nop
    rst $38
    nop

jr_00b_7775:
    rst $00
    jr c, jr_00b_773f

jr_00b_7778:
    jr c, jr_00b_76fd

jr_00b_777a:
    ld l, h
    add e
    ld l, h
    add e
    ld l, h
    add e
    ld l, h
    add e
    ld l, h
    add e
    ld l, h
    nop

jr_00b_7786:
    nop
    add b
    nop
    jr nz, jr_00b_774b

    db $10
    ldh [$80], a
    ld [hl], b
    ret z

    jr nc, jr_00b_7772

    jr jr_00b_7778

    jr jr_00b_7786

    inc c
    ld a, [c]
    inc c

jr_00b_7799:
    ldh a, [$0e]
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06

jr_00b_77a3:
    ld hl, sp+$06
    ccf

jr_00b_77a6:
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$9f], a
    ld h, b
    rra
    ld h, b
    ld c, a
    jr nc, jr_00b_77c5

    jr nc, jr_00b_77df

    jr jr_00b_77bd

    inc e
    db $10
    rrca

jr_00b_77bd:
    ld [$0207], sp

jr_00b_77c0:
    ld bc, $0000
    nop
    nop

jr_00b_77c5:
    add e
    ld l, h
    add e
    ld l, h
    add e
    ld l, h
    add e
    ld l, h
    add e
    ld l, h
    rst $00
    jr c, jr_00b_7799

    jr c, @+$01

    nop
    rst $38

jr_00b_77d6:
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    jr c, jr_00b_77a6

jr_00b_77df:
    nop
    rst $38
    add d
    ld a, h
    nop
    nop
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ldh a, [$0e]
    ld a, [c]
    inc c
    ldh a, [$0c]
    db $e4
    jr jr_00b_77d6

    jr jr_00b_77c0

    jr nc, jr_00b_777a

    ld [hl], b
    db $10
    ldh [rNR41], a
    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0304
    add hl, bc
    ld b, $03
    inc c
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    ld bc, $080e
    rlca
    inc b
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld [bc], a
    db $fc
    ld bc, $fcfe
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, [hl]
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
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    nop
    nop
    nop
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
    nop
    add b
    nop
    add b
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld a, [hl]
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
    add c
    ld a, [hl]
    add c
    inc a
    jp $ff00


    add c
    ld a, [hl]
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
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0400
    inc bc

jr_00b_78c9:
    db $10
    rrca
    inc hl
    inc e
    rlca
    jr c, jr_00b_791f

    jr nc, jr_00b_78e1

    ld [hl], b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    ld c, a
    jr nc, jr_00b_78de

jr_00b_78de:
    ccf
    jr nz, jr_00b_7900

jr_00b_78e1:
    nop
    nop
    ld [bc], a

Call_00b_78e4:
    ld bc, $ff00
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

jr_00b_78f2:
    nop
    rst $38
    nop
    rst $00
    jr c, @-$7b

    ld a, h
    adc c
    ld h, [hl]
    ld hl, $01c6
    adc $43

jr_00b_7900:
    sbc h
    rlca
    ld a, b
    rra
    ldh [$80], a
    nop
    jr nz, jr_00b_78c9

    ld [$c0f0], sp
    jr c, jr_00b_78f2

    jr jr_00b_7900

    inc c
    ld a, [c]
    inc c
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06

jr_00b_791f:
    ld hl, sp+$06
    ld a, [c]
    inc c
    ldh a, [$0c]
    inc b
    inc bc
    add hl, bc

jr_00b_7928:
    ld b, $13
    inc c
    rlca
    jr jr_00b_7955

    jr jr_00b_793f

    jr nc, @+$61

    jr nz, jr_00b_7953

    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b

jr_00b_793b:
    rra
    ld h, b
    rrca
    ld [hl], b

jr_00b_793f:
    nop
    ld a, a
    nop
    ccf
    nop
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    pop hl
    ld e, $c0
    ccf

jr_00b_7953:
    ret nz

    ccf

jr_00b_7955:
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    nop
    db $e4
    jr jr_00b_7928

    jr c, jr_00b_78f2

    ld [hl], b
    db $10
    ldh [rLCDC], a
    add b
    nop
    nop
    nop
    db $fc
    nop
    cp $f0
    ld c, $f8
    ld b, $f8
    ld b, $f8
    ld b, $f0
    ld c, $00
    cp $00
    db $fc
    nop
    nop
    ld bc, $0400
    inc bc
    db $10
    rrca

jr_00b_798b:
    inc hl
    inc e
    rlca
    jr c, jr_00b_79df

    jr nc, jr_00b_79a1

    ld [hl], b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rrca
    ld [hl], b
    nop
    ld a, a
    nop
    ccf

jr_00b_79a1:
    nop
    nop
    nop
    nop
    ld [bc], a
    db $fc
    nop
    rst $38
    ld a, h
    add e
    rst $38

jr_00b_79ac:
    nop
    rst $38
    nop
    rst $38

jr_00b_79b0:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00

jr_00b_79b6:
    jr c, jr_00b_793b

    ld a, h
    inc bc
    db $ec
    inc bc
    call z, $dc03
    rlca
    cp b
    rrca

jr_00b_79c2:
    ld [hl], b
    rra

jr_00b_79c4:
    ld h, b
    nop
    nop
    add b
    nop
    jr nz, jr_00b_798b

    db $10
    ldh [$c8], a
    jr nc, jr_00b_79b0

    jr jr_00b_79b6

    jr jr_00b_79c4

    inc c
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]

jr_00b_79df:
    db $e4
    jr jr_00b_79c2

    jr jr_00b_79ac

    jr nc, jr_00b_79e6

jr_00b_79e6:
    nop
    nop
    nop
    nop
    ccf
    nop
    ld a, a
    rrca
    ld [hl], b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rrca
    ld [hl], b
    ld c, a
    jr nc, jr_00b_7a01

jr_00b_79fa:
    jr c, jr_00b_7a1f

    inc e
    db $10
    rrca
    inc b
    inc bc

jr_00b_7a01:
    ld bc, $0000
    nop
    rra
    ld h, b
    rrca
    ld [hl], b
    rlca
    cp b
    inc bc
    call c, $cc03
    inc bc
    db $ec
    add e
    ld a, h
    rst $00
    jr c, @+$01

    nop
    rst $38

jr_00b_7a18:
    nop
    rst $38

jr_00b_7a1a:
    nop
    rst $38
    nop
    ld a, [hl]
    add c

jr_00b_7a1f:
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ldh [rNR23], a
    db $e4
    jr jr_00b_7a1a

    inc c
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    db $e4
    jr jr_00b_7a18

    jr jr_00b_79fa

    jr c, jr_00b_79c4

    ld [hl], b
    db $10
    ldh [rNR41], a
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

jr_00b_7a4e:
    nop
    nop

jr_00b_7a50:
    nop

jr_00b_7a51:
    ld bc, $0000

jr_00b_7a54:
    ld bc, $0102
    nop

jr_00b_7a58:
    inc bc
    inc b

jr_00b_7a5a:
    inc bc
    ld bc, $0906

jr_00b_7a5e:
    ld b, $03

jr_00b_7a60:
    inc c
    inc de

jr_00b_7a62:
    inc c
    rlca

jr_00b_7a64:
    jr jr_00b_7a86

    rra
    nop
    ccf
    ld c, a
    jr nc, jr_00b_7a8b

    ld h, b
    sbc a
    ld h, b
    ccf
    ret nz

    ccf
    ret nz

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
    rst $30
    ld [$08f7], sp
    rst $20
    jr @-$17

    jr jr_00b_7a86

jr_00b_7a86:
    ret nz

    nop
    ldh [$80], a
    ld [hl], b

jr_00b_7a8b:
    ret nz

    jr nc, jr_00b_7a4e

    jr nc, jr_00b_7a50

    jr nc, @-$3e

    jr nc, jr_00b_7a54

    jr nc, @-$3e

    jr nc, jr_00b_7a58

    jr nc, jr_00b_7a5a

    jr nc, @-$3e

    jr nc, jr_00b_7a5e

    jr nc, jr_00b_7a60

    jr nc, jr_00b_7a62

    jr nc, jr_00b_7a64

    jr nc, jr_00b_7acd

    jr jr_00b_7ab7

jr_00b_7aa8:
    jr nc, @+$51

jr_00b_7aaa:
    jr nc, jr_00b_7acb

    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rrca
    ld [hl], b

jr_00b_7ab7:
    nop
    ld a, a
    nop
    ccf
    nop
    nop
    nop

jr_00b_7abe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $00
    jr c, @-$37

    jr c, jr_00b_7a51

    ld a, b

jr_00b_7acb:
    add a
    ld a, b

jr_00b_7acd:
    rst $38
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
    ld hl, sp+$07
    ld hl, sp+$07
    jr jr_00b_7ae5

    jr jr_00b_7ae0

jr_00b_7ae0:
    rra
    nop
    rrca
    nop
    nop

jr_00b_7ae5:
    ret nz

    jr nc, jr_00b_7aa8

    jr nc, jr_00b_7aaa

    inc a
    ret nz

    ld a, $f0
    ld c, $f8
    ld b, $f8
    ld b, $f8
    ld b, $f0
    ld c, $c0
    ld a, $c0
    inc a
    ret nz

    jr nc, jr_00b_7abe

    jr nc, jr_00b_7b00

jr_00b_7b00:
    ldh a, [rP1]
    ldh [rP1], a
    nop
    nop
    rrca
    nop
    rrca
    inc de
    inc c
    inc bc
    inc e
    inc bc
    inc e
    rlca
    jr jr_00b_7b39

    jr @+$09

    jr c, jr_00b_7b25

    jr nc, jr_00b_7b27

    jr nc, jr_00b_7b69

    jr nc, jr_00b_7b2b

    ld [hl], b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b

jr_00b_7b25:
    nop
    rst $38

jr_00b_7b27:
    nop
    rst $38
    rst $38
    nop

jr_00b_7b2b:
    rst $38
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

    ccf
    ret nz

    ccf

jr_00b_7b39:
    add b
    ld a, a
    add b
    ld a, a
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld hl, sp+$00

jr_00b_7b48:
    db $fc
    ld a, [c]
    inc c
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld a, [c]
    inc c
    nop
    db $fc
    nop
    ld hl, sp+$00
    nop
    ld b, b
    add b
    db $10

Jump_00b_7b5e:
    ldh [$08], a
    ldh a, [$c0]
    jr c, jr_00b_7b48

    jr jr_00b_7b66

jr_00b_7b66:
    ld a, a
    nop
    ccf

jr_00b_7b69:
    nop
    nop
    nop
    ccf
    nop
    ld a, a
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    ld c, a
    jr nc, jr_00b_7b87

    jr nc, @+$09

    jr c, jr_00b_7b9f

    inc e
    db $10
    rrca
    ld [$0207], sp
    ld bc, $0000
    ccf
    ret nz

jr_00b_7b87:
    rlca
    ld hl, sp+$03
    inc a
    inc bc
    call z, $ec03
    add e
    ld l, h
    add e
    ld a, h
    rst $00
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

jr_00b_7b9f:
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ldh a, [$0c]
    ld a, [c]
    inc c
    ldh a, [$0e]
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ldh a, [$0e]
    ld a, [c]
    inc c
    ldh [rNR32], a
    call nz, $0838
    ldh a, [rNR10]
    ldh [rLCDC], a
    add b
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0102
    nop
    inc bc
    inc b
    inc bc
    nop
    rlca
    add hl, bc
    ld b, $01
    ld c, $13
    inc c
    inc bc
    inc e
    daa
    jr jr_00b_7be5

    jr c, jr_00b_7c2f

    jr nc, jr_00b_7bf1

    ld [hl], b
    rra
    ld h, b

jr_00b_7be5:
    add c
    ld a, [hl]
    nop
    rst $38
    ld a, $c1
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop

jr_00b_7bf1:
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop

jr_00b_7c06:
    nop
    add b
    nop
    ld b, b
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b

jr_00b_7c14:
    add b
    nop
    add b
    add b
    nop
    nop
    nop
    jr nz, @-$3e

    db $10
    ldh [$c8], a
    jr nc, jr_00b_7c06

    jr jr_00b_7c14

    inc c
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b

jr_00b_7c2f:
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rrca
    ld [hl], b
    ld c, a
    jr nc, @+$09

    jr c, jr_00b_7c5f

    inc e
    db $10
    rrca
    ld [$0207], sp
    ld bc, $0000
    rst $38
    nop
    db $e3
    inc e
    jp $c13c


    ld [hl], $c1
    ld [hl], $c1
    ld [hl], $c3
    inc a
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

jr_00b_7c5f:
    nop

jr_00b_7c60:
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, [c]
    inc c
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ldh a, [$0e]
    ld a, [c]
    inc c
    ldh [rNR32], a
    call nz, $0838
    ldh a, [rNR10]
    ldh [rLCDC], a
    add b
    nop
    nop
    nop
    ccf
    nop
    ld a, a
    rrca
    ld [hl], b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rrca
    ld [hl], b
    nop
    ld a, a
    nop
    ccf
    nop
    nop
    nop

jr_00b_7c9c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00b_7ca6:
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
    inc bc
    db $fc
    rlca
    ld hl, sp+$27
    jr jr_00b_7ccb

    jr nc, jr_00b_7d0d

    jr nc, @+$21

    ld h, b
    sbc a
    ld h, b
    ccf
    ret nz

    nop
    ld hl, sp+$00
    db $fc
    ldh [rNR32], a

jr_00b_7ccb:
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh [rNR32], a
    db $e4
    jr jr_00b_7c9c

jr_00b_7cdc:
    jr c, jr_00b_7ca6

    jr nc, jr_00b_7c60

    ld [hl], b
    sub b
    ld h, b
    nop
    ldh [rSB], a

jr_00b_7ce6:
    nop

jr_00b_7ce7:
    nop
    ld bc, $0102
    nop
    inc bc
    inc b
    inc bc
    ld bc, $0906
    ld b, $03
    inc c
    inc de
    inc c
    rlca
    jr jr_00b_7d01

    jr jr_00b_7d03

    jr jr_00b_7d05

    jr jr_00b_7d00

jr_00b_7d00:
    rra

jr_00b_7d01:
    nop
    rrca

jr_00b_7d03:
    nop
    nop

jr_00b_7d05:
    ccf
    ret nz

    ld a, [hl]
    add c
    ld a, [hl]
    add c
    db $fc
    inc bc

jr_00b_7d0d:
    db $fc
    inc bc
    ld hl, sp+$07
    ld sp, hl
    ld b, $f0
    ld c, $f2
    inc c
    ldh [rNR32], a
    db $e4
    jr jr_00b_7cdc

    jr c, jr_00b_7ce6

    jr nc, jr_00b_7d20

jr_00b_7d20:
    ldh a, [rP1]
    ldh [rP1], a
    nop
    jr nz, jr_00b_7ce7

    nop
    ret nz

    ld b, b

jr_00b_7d2a:
    add b
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
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0708

jr_00b_7d49:
    db $10
    rrca

jr_00b_7d4b:
    inc hl
    inc e
    rlca
    jr c, @+$51

    jr nc, @+$11

    ld [hl], b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    ld c, a
    jr nc, jr_00b_7d67

jr_00b_7d60:
    jr c, jr_00b_7d85

    inc e
    rlca
    jr c, jr_00b_7d66

jr_00b_7d66:
    rst $38

jr_00b_7d67:
    nop
    rst $38
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_00b_7d72:
    nop
    rst $00

jr_00b_7d74:
    jr c, @-$7b

    ld a, h
    add e
    ld l, h
    add e
    ld a, h
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_00b_7d85:
    add b
    nop
    jr nz, jr_00b_7d49

    db $10
    ldh [$88], a
    ld [hl], b
    ret nz

    jr c, jr_00b_7d74

    jr jr_00b_7d72

    inc e
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    db $e4
    jr jr_00b_7d60

    jr c, jr_00b_7d2a

    ld [hl], b
    ret nz

    jr c, jr_00b_7df5

    jr nc, @+$21

    ld h, b
    sbc a
    ld h, b
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

    rra
    ldh [$9f], a
    ld h, b
    rrca
    ld [hl], b
    ld b, a
    jr c, jr_00b_7ddf

    ld e, $10
    rrca
    inc b
    inc bc
    nop
    nop
    rst $00
    jr c, jr_00b_7d4b

    ld a, h
    ld bc, $01ee
    add $01
    add $01
    xor $83
    ld a, h
    rst $00
    jr c, @+$01

    nop
    rst $38

jr_00b_7dd8:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_00b_7ddf:
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    db $e4
    jr jr_00b_7dd8

    inc c
    ld a, [c]
    inc c
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06

jr_00b_7df5:
    ldh a, [$0e]
    ld a, [c]
    inc c

jr_00b_7df9:
    ldh [rNR32], a
    call nz, $0838
    ldh a, [rNR10]
    ldh [rLCDC], a
    add b
    nop
    nop
    ld [bc], a
    ld bc, $0708
    db $10
    rrca
    inc hl
    inc e
    rlca
    jr c, jr_00b_7e5f

    jr nc, jr_00b_7e21

    ld [hl], b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b

jr_00b_7e21:
    ld c, a
    jr nc, jr_00b_7e33

    jr nc, jr_00b_7e26

jr_00b_7e26:
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_00b_7e2e:
    nop
    rst $38
    nop
    rst $38

jr_00b_7e32:
    nop

jr_00b_7e33:
    rst $20
    jr jr_00b_7df9

    inc a
    add e
    ld l, h
    add e
    ld l, h
    add e
    ld l, h
    jp $c73c


    jr c, @+$01

    nop
    rst $38
    nop
    ld b, b
    add b
    db $10
    ldh [$08], a
    ldh a, [$c4]
    jr c, jr_00b_7e2e

    inc e
    ld a, [c]
    inc c
    ldh a, [$0e]
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06

jr_00b_7e5f:
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    daa
    jr jr_00b_7e7b

    inc c
    ld [$0407], sp
    inc bc
    nop

jr_00b_7e6e:
    nop
    ld bc, $0000
    ld bc, $0102
    nop
    inc bc
    nop

jr_00b_7e78:
    inc bc
    nop
    inc bc

jr_00b_7e7b:
    nop
    inc bc
    ld [bc], a
    ld bc, $0001
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
    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    cp $01
    cp $01
    ld a, h
    add e
    nop
    rst $38
    add c
    ld a, [hl]
    nop
    nop
    ldh a, [$0e]
    ld a, [c]
    inc c
    ldh [rNR32], a
    db $e4
    jr jr_00b_7e6e

    jr c, jr_00b_7e78

    jr nc, jr_00b_7e32

    ld [hl], b
    sub b
    ld h, b
    nop
    ldh [rNR41], a
    ret nz

    nop
    ret nz

    ld b, b
    add b
    nop
    add b
    add b
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
