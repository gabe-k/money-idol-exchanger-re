; Disassembly of "money_idol_exchanger.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    call Call_000_05e9
    di
    call Call_000_04e1
    ld a, [$cf2f]
    ld hl, $1170
    and a
    call nz, Call_000_0f3a
    ld hl, $4618 ; source
    ld de, $8000 ; dest
    ld bc, $02d0 ; count
    call memcpy
    ld hl, $9800
    call Call_000_07c3
    ld hl, $4838
    ld de, $98c2
    call Call_000_0683
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
    ld [$cf1d], a
    ld a, $d1
    call set_pal_and_lcd_control
    call Call_000_0369
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ldh [$94], a
    call Call_000_047e
    ld b, $78

jr_001_405c:
    call Call_000_0369
    call Call_000_055e
    ldh a, [$8c]
    bit 0, a
    jr nz, copy_stuff_into_vram_01

    dec b
    jr nz, jr_001_405c

    call Call_000_05e9
    di
    call Call_000_04e1
    ld hl, $4300 ; source
    ld de, $8000 ; dest
    ld bc, $02d0 ; count
    call memcpy
    ld hl, $9800

Call_001_4081:
    call Call_000_07c3
    ld hl, $45d0
    ld de, $98c3
    call Call_000_0683
    ld a, $d1
    call set_pal_and_lcd_control
    call Call_000_0369
    call Call_000_047e
    ld b, $78

jr_001_409a:
    call Call_000_0369
    call Call_000_055e
    ldh a, [$8c]
    bit 0, a
    jr nz, copy_stuff_into_vram_01

    dec b
    jr nz, jr_001_409a

copy_stuff_into_vram_01: ; for reference: 0x40a9
    ld a, $01
    ldh [$a1], a
    call Call_000_03b4
    ld a, [$cf2f]
    ld hl, $42b6
    and a
    call nz, Call_000_0f3a
    call Call_000_05e9
    ld hl, $487a ; source
    ld de, $9000 ; dest
    ld bc, $0800 ; count
    call memcpy  ; copy the logo tiles
    ld hl, $507a ; source
    ld de, $8800 ; dest
    ld bc, $0560 ; count
    call memcpy  ; copy the font tiles
    ld hl, $5945 ; source
    ld de, $8000 ; dest
    ld bc, $0040 ; count
    call memcpy  ; some other times
    ld de, $55da
    ld hl, $9800
    call copy_tile_map_20x18
    ld a, $c3
    call set_pal_and_lcd_control
    ld a, $02
    call Call_000_063d
    xor a
    ldh [$9f], a
    ldh [$a0], a

jr_001_40f9:
    call Call_000_055e
    call Call_000_0369
    call Call_000_047e
    ldh a, [$9f]
    inc a
    ld c, a
    ldh [$9f], a
    and $0f
    jr nz, jr_001_4116

    ld hl, $42f0
    bit 4, c
    jr z, jr_001_4116

    ld hl, $42fd

jr_001_4116:
    ldh a, [$a0]
    inc a
    ld c, a
    ldh [$a0], a
    and $07
    jr nz, jr_001_4137

    ld a, c
    srl a
    and $0c
    ld bc, $0000
    push af
    call Call_001_42c6
    pop af
    add $04
    and $0c
    ld bc, $0405
    call Call_001_42c6

jr_001_4137:
    ldh a, [$8c]
    and $c4
    jr z, jr_001_4156

    ldh a, [$a1]
    xor $01
    ldh [$a1], a
    ld hl, $4241
    call Call_000_065e
    ld a, $02
    ld de, $9983
    call Call_000_0787
    ld a, $03
    call Call_000_07ce

jr_001_4156:
    ldh a, [$8c]
    and $09
    jr z, jr_001_40f9

    ldh a, [$a1]
    and a
    jr z, jr_001_4172

    ld a, $00
    call Call_000_063d
    call Call_000_03b4
    call Call_000_05e9
    call Call_000_04e1
    jp copy_menu_tiles_into_vram


jr_001_4172:
    ld a, $00
    call Call_000_063d
    call Call_000_03b4
    call Call_000_05e9
    call Call_000_04e1
    xor a
    ldh [$a2], a
    ld a, [$cf2f]
    ld hl, $1170
    and a
    call nz, Call_000_0f3a
    ld de, $5742
    ld hl, $9800
    call copy_tile_map_20x18
    ldh a, [$c4]
    and a
    ld hl, $5901
    jr z, jr_001_41a1

    ld hl, $590a

jr_001_41a1:
    ld de, $984d
    call Call_000_0683
    ld a, [$cf20]
    ld hl, $5912
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld de, $98ad
    call Call_000_0683
    ld a, [$cf21]
    and a
    ld hl, $58aa
    jr z, jr_001_41c6

    ld hl, $58d5

jr_001_41c6:
    ld de, $9960
    call Call_000_06a5
    ld a, $c3
    call set_pal_and_lcd_control
    ld a, $14
    ld [$c100], a
    ld a, $08
    ld [$c101], a
    ld a, $a5
    ld [$c102], a
    xor a
    ld [$c103], a

Jump_001_41e4:
jr_001_41e4:
    call Call_000_055e
    call Call_000_0369
    call Call_000_047e
    ldh a, [$8c]
    and $cd
    jr z, jr_001_41e4

    and $09
    jr z, jr_001_420c

    ldh a, [$a2]
    ld hl, $4244
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call jump_to_hl
    ld a, $06
    call Call_000_07ce
    jr jr_001_41e4

jr_001_420c:
    ldh a, [$8c]
    and $84
    jr z, jr_001_4220

    ldh a, [$a2]
    inc a
    ldh [$a2], a
    cp $04
    jr nz, jr_001_422d

    xor a
    ldh [$a2], a
    jr jr_001_422d

jr_001_4220:
    ldh a, [$a2]
    dec a
    ldh [$a2], a
    cp $ff
    jr nz, jr_001_422d

    ld a, $03
    ldh [$a2], a

jr_001_422d:
    ldh a, [$a2]
    ld hl, $42b2
    call Call_000_065e
    ld a, [hl]
    ld [$c100], a
    ld a, $03
    call Call_000_07ce
    jp Jump_001_41e4


    nop
    and l
    nop
    ld c, h
    ld b, d
    ld h, e
    ld b, d
    adc b
    ld b, d
    xor e
    ld b, d
    ldh a, [$c4]
    xor $ff
    ldh [$c4], a
    ldh [$c5], a
    ld hl, $5900
    jr z, jr_001_425c

    ld hl, $5909

jr_001_425c:
    ld de, $984d
    call Call_000_06a5
    ret


    ld a, [$cf20]
    inc a
    cp $03
    jr nz, jr_001_426c

    xor a

jr_001_426c:
    ld [$cf20], a
    ld hl, $5912
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $98ad
    call Call_000_06a5
    ld a, [$cf20]
    swap a
    add a
    ld [$cf5d], a
    ret


    ld a, [$cf21]
    xor $ff
    ld [$cf21], a
    ld bc, $0201
    ld hl, $58aa
    jr z, jr_001_429e

    ld bc, $0102
    ld hl, $58d5

jr_001_429e:
    ld a, b
    ldh [$b4], a
    ld a, c
    ldh [$b5], a
    ld de, $9960
    call Call_000_06a5
    ret


    pop af
    call Call_000_04e1
    jp copy_stuff_into_vram_01


    inc d
    inc l
    ld b, h
    ld [hl], h
    ld d, c
    nop
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld bc, $c800
    nop
    nop
    nop
    nop
    nop
    nop

Call_001_42c6:
    ld hl, $42e0
    call Call_000_065e
    ld de, $c100
    ld a, b
    call Call_000_0665
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    add c
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ret


    inc e
    ld [hl], b
    nop
    nop
    inc e
    ld [hl], b
    ld [bc], a
    nop
    inc e
    ld [hl], b
    ld bc, $1c00
    ld [hl], b
    inc bc
    nop
    ld a, [bc]
    ld a, [bc]
    ld bc, $9493
    sub l
    sub [hl]
    nop
    sub l
    sub a
    sbc b
    sbc c
    sub a
    ld a, [bc]
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
    nop
    nop
    nop
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
    nop
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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    db $10
    rrca
    nop
    rrca
    ld [$0007], sp
    nop
    nop
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
    ld [bc], a
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0800
    rlca
    jr nz, jr_001_43bb

    add b
    ld a, a
    nop

jr_001_439f:
    rst $38
    nop
    nop
    nop
    nop
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
    inc c
    ldh a, [rSB]

jr_001_43bb:
    cp $00
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
    ccf
    ld b, b
    sbc a
    jr nz, jr_001_439f

    nop
    nop
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
    ld hl, sp+$00
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
    nop
    rst $38
    nop
    nop
    nop
    rlca
    nop
    rlca
    inc b
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    ld bc, $0100
    ld bc, $4400
    add e
    ld [$20c7], sp
    rst $08
    nop
    rst $28
    ld [$00e7], sp
    rst $30
    nop
    rst $30
    inc b
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fc
    nop
    db $fc
    inc b
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
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
    ccf
    nop
    nop
    nop
    nop
    db $10
    rst $20
    inc b
    di
    ld [$02f3], sp
    ld sp, hl
    inc b
    ld sp, hl
    nop
    db $fd
    nop
    ld bc, $3f00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
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
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    rrca
    db $10
    rrca
    nop
    rra
    jr nz, jr_001_44a7

    nop
    ccf
    ld b, b
    ccf
    nop
    ld a, a
    add b
    ld a, a
    nop
    cp $02
    db $fc
    nop
    db $fc
    inc b
    ld hl, sp+$00
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
    add b
    ld a, a
    nop

jr_001_44a7:
    ld a, a
    ld b, b
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    ld [bc], a
    ld sp, hl
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $01
    cp $00
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$04
    ld hl, sp+$00
    db $fc
    ld [bc], a
    db $fc
    ld bc, $00fe
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
    ld b, d
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
    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld bc, $fd00

Call_001_44fc:
    nop
    db $fd
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
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
    nop
    nop
    nop
    nop
    nop
    rst $38
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
    nop
    nop
    nop
    ld hl, sp+$00
    rlca
    nop
    rlca
    nop
    rlca
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
    rst $38
    nop
    rst $38
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
    ld bc, $0000
    ld bc, $0102
    nop
    inc bc
    nop
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    inc b
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    rst $18
    nop
    rst $18
    nop
    rst $28
    ld [$0107], sp
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
    ld bc, $0cfe
    ldh a, [$c0]
    nop
    nop
    ei
    nop
    rst $30
    ld [$00e7], sp
    rst $08
    nop
    sbc a
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    nop
    nop
    nop
    ld c, $05
    ld bc, $0202
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
    inc b
    dec b
    ld b, $06
    rlca
    ld [bc], a
    ld [$0a09], sp
    dec bc
    inc c
    ld [bc], a
    ld [bc], a
    dec c
    inc b
    dec b
    ld c, $0e
    rrca
    dec b
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    inc b
    dec b
    nop
    jr jr_001_461a

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_001_462a

    ld [hl+], a
    inc hl
    inc h
    dec h
    inc h
    ld h, $27
    inc h
    jr z, jr_001_463c

    ld a, [hl+]
    dec hl
    inc h
    inc h
    inc l
; start of VRAM data
    nop
    nop

jr_001_461a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_462a:
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    ld c, $1f
    inc e
    ld a, $00
    nop
    nop
    nop

jr_001_463c:
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, h
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    jr c, jr_001_46f6

    ld [hl], b
    ld hl, sp-$20
    ldh a, [$c0]
    ldh [$80], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    jr c, jr_001_4746

    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
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
    ld a, h
    ld a, h
    ld a, l
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld a, l
    ld a, l
    ld a, h
    ld a, h
    ld a, h
    ld a, h

jr_001_46f6:
    ld a, h
    ld a, h
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    add b
    add b
    add b
    add b
    add b
    add b
    ld a, d
    ld a, c
    ld a, e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, [hl]
    ld a, b
    ld a, h
    ld a, h
    ld a, b
    ld a, [$fffc]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $28
    rra
    rla
    rrca
    rrca
    rlca
    rlca
    rlca
    rla
    rrca
    ccf
    rra
    sbc a
    ccf
    ld a, $bf
    dec a
    cp [hl]
    cp h
    cp h
    cp a
    cp a

jr_001_4746:
    cp a
    cp a
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rla
    rrca
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    dec a
    inc a
    cp l
    ccf
    ccf
    cp a
    cp a
    cp a
    cp a
    cp a
    cp [hl]
    cp a
    cp h
    cp [hl]
    ld a, $bc
    ld a, l
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    adc a
    dec bc
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    dec bc
    rlca
    sbc a
    rrca
    rst $08
    sbc a
    sbc [hl]
    rst $18
    sbc l
    sbc $c0
    ret nz

    set 0, a
    rst $18
    rst $08
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    dec bc
    rlca
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    ret nz

    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld hl, sp-$08
    ld hl, sp-$08
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    rlca
    rlca
    inc bc
    ld [bc], a
    ld bc, $8080
    add b
    add b
    ret nz

    add b
    and b
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp a
    cp a
    cp h
    cp h
    cp l
    cp [hl]
    cp [hl]
    cp a
    sbc a
    cp a
    cp a
    sbc a
    sub a
    adc a
    rst $38
    rst $38
    db $fd
    cp $00
    nop
    dec bc
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $bc
    inc a
    inc a
    inc a
    inc a
    inc a
    cp h
    cp h
    cp h
    cp h
    inc a
    cp h
    cp h
    inc a
    inc a
    inc a
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
    inc bc
    inc bc
    inc bc
    rst $08
    rst $18
    rst $18
    rst $18
    sbc $de
    sbc $df
    rst $18
    rst $18
    rst $08
    rst $18
    rst $18
    rst $08
    set 0, a
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    adc e
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$08
    ld hl, sp-$08
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    ret nz

    add b
    add b
    nop
    db $10
    inc b
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
    ld bc, $0706
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
    ld bc, $0c0b
    dec c
    ld c, $0f
    db $10

jr_001_4862:
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$03

    ld b, $00
    nop
    rlca
    add hl, de
    ld a, [de]
    ld a, [bc]
    ld [$1c1b], sp
    dec e
    ld e, $1f
    jr nz, jr_001_489b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_488e:
    nop
    nop
    inc b
    inc bc
    db $10
    inc c
    jr nz, jr_001_48a9

    ld [bc], a
    ld hl, $2748
    nop

jr_001_489b:
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_4862

    ld [$0430], sp
    ld [$c421], sp
    ld [bc], a

jr_001_48a9:
    push hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_48b2:
    nop
    nop
    ld b, d
    inc a
    nop
    jp RST_00


    nop
    nop
    inc b
    inc bc
    db $10
    inc c
    jr nz, @+$12

    inc b
    inc hl
    ld b, b
    cpl
    adc h
    ld b, b
    ld b, b
    add c
    nop
    nop
    jr nz, jr_001_488e

    ld [$0430], sp
    ld [$c420], sp
    ld a, [bc]
    db $f4
    ld hl, $021a
    sbc c
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
    jr nz, jr_001_48f7

    add d
    ld hl, $a340
    nop
    nop
    nop
    nop

jr_001_48ee:
    nop

jr_001_48ef:
    nop
    jr nz, jr_001_48b2

    ld [$0430], sp
    adc b
    nop

jr_001_48f7:
    add h
    ld [bc], a
    ld d, h
    nop
    nop
    ld bc, $0200
    ld bc, $0200
    inc b
    ld [bc], a
    nop
    inc b
    nop
    dec b
    nop
    dec b
    ld b, d
    inc a
    nop
    jp RST_00


    ld de, $400e
    ccf
    nop
    di
    ld hl, $04c2
    add d
    nop
    ld c, h
    add b
    ld b, c
    ld b, d
    add c
    ld b, h
    inc bc
    ld [$0207], sp
    inc c
    inc c
    nop
    jr nz, jr_001_493a

    jr nz, jr_001_48ee

    ld b, d
    add b
    ld [bc], a
    add b
    nop
    ld hl, sp+$48
    or b
    nop
    call nz, $c402
    add h
    ld c, d

jr_001_493a:
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    inc a
    nop
    rst $38
    inc h
    jp RST_00


    nop
    nop
    ld b, b
    ld bc, $0100
    ld [bc], a
    ld bc, $0300
    jr nz, jr_001_4957

    ld hl, $0012

jr_001_4957:
    inc l
    inc h
    ld b, e
    ld a, [hl+]
    sub b
    add b
    jr nc, jr_001_48ef

    jr nz, jr_001_4961

jr_001_4961:
    nop
    dec b
    nop
    inc b
    add hl, bc
    nop
    inc [hl]
    inc h
    jp nz, Jump_000_0300

    ld [$2007], sp
    ld e, $40
    inc a
    nop
    ld hl, sp+$40
    sbc b
    nop
    jr @+$2a

    db $10
    inc b
    ld b, e
    ld b, b
    rlca
    ld b, b
    rlca
    ld [$0107], sp
    ld c, $02
    inc l
    ld b, b
    inc l
    jr nz, jr_001_49da

    nop
    ld d, d
    add c
    ld [bc], a
    ld [bc], a
    pop bc
    ld [bc], a
    ldh [rP1], a
    ldh a, [rLCDC]
    jr nc, jr_001_4998

    nop

jr_001_4998:
    inc b
    add hl, bc
    ld b, d
    inc a
    nop
    jp Jump_000_0810


    jr nz, @+$1a

    ld b, b
    inc sp
    add c
    ld h, [hl]
    ld [bc], a
    call z, $9804
    nop
    nop
    add b
    nop
    ld b, b
    add b
    nop
    ld b, b
    jr nz, jr_001_49f4

    nop
    jr nz, jr_001_49b7

jr_001_49b7:
    jr nz, jr_001_49b9

jr_001_49b9:
    jr nz, jr_001_49bb

jr_001_49bb:
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
    inc de
    nop
    stop
    nop
    inc b
    inc b
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    add b
    nop
    ld h, b
    nop

jr_001_49da:
    ld a, [bc]
    inc [hl]
    jr nz, jr_001_49fd

    inc b
    inc bc
    nop
    nop
    nop
    jp Jump_000_3c42


    nop
    nop
    inc bc
    nop
    nop
    inc a
    inc h
    ld b, e
    nop
    ld b, b
    ld b, b
    add b
    add b
    nop

jr_001_49f4:
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld [$2232], sp

jr_001_49fd:
    pop bc
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
    jp Jump_000_3c42


    nop
    nop
    rlca
    nop
    jr c, jr_001_4a18

jr_001_4a18:
    ret nz

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
    add b
    nop
    add b
    nop
    nop
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
    nop
    nop
    jr nc, jr_001_4a3d

jr_001_4a3d:
    jr nc, jr_001_4a3f

jr_001_4a3f:
    jp Jump_000_3c42


    nop
    nop
    nop
    nop
    jr nc, jr_001_4a48

jr_001_4a48:
    ld c, h
    nop
    db $10
    ld c, h
    ld b, h
    add e
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
    ld [$2434], sp
    jp nz, $0200

    ld [bc], a
    ld bc, $0001
    nop
    nop
    jr nc, jr_001_4a68

jr_001_4a68:
    ld c, h
    nop
    ld [$5030], sp
    jr nz, jr_001_4ab0

    ld a, $20
    inc e
    nop
    jp Jump_000_3c42


    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_4a9d

    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    rrca

jr_001_4a9d:
    nop
    ld [hl], b
    nop
    add b
    nop
    ld [$2007], sp
    rra
    nop
    ccf
    nop
    ccf
    nop
    nop
    rst $38
    nop
    nop
    nop

jr_001_4ab0:
    nop
    nop
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_001_4abc

jr_001_4abc:
    ld hl, $c806
    rlca
    nop
    rrca
    nop
    rrca
    sub b

jr_001_4ac5:
    rrca
    add b
    rra
    add b
    rra
    ld e, $00
    ld bc, $0c00
    nop
    ld [hl+], a
    inc e
    nop
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    inc a
    nop
    ret nz

    nop
    ld [bc], a
    ld bc, $0f10
    ld b, b
    ccf
    nop
    ld a, a
    nop
    ld a, a
    ld b, c
    ld a, $0c
    nop
    ld [bc], a
    nop
    ld sp, $08c0
    ldh a, [rDIV]
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    add b
    ld a, h
    rrca

Call_001_4afb:
    nop
    jr nc, jr_001_4afe

jr_001_4afe:
    ld b, b
    nop
    add h
    inc bc
    db $10
    rrca
    jr nz, jr_001_4b25

    nop
    ccf
    ld bc, $003e
    nop
    ld [hl+], a
    inc e
    add b
    ld a, [hl]
    nop
    cp $00
    cp $02
    db $fc
    db $10
    ldh [rP1], a
    ldh [$80], a
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld c, a

jr_001_4b25:
    nop
    ld [hl], b
    nop
    ld b, b
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc b
    nop
    db $fc
    nop
    inc e
    nop
    ld b, $00
    add d
    nop
    ld bc, $4800
    jr nc, jr_001_4ac5

    ld a, b
    ld [bc], a
    db $fc
    ld bc, $80fe
    ld a, a
    ld b, b
    ccf
    nop
    nop
    ld bc, $8300
    nop
    ld b, d
    nop
    ld b, [hl]
    nop
    inc h
    nop
    inc l
    nop
    ld a, [hl+]
    inc b
    add e
    nop
    nop
    nop
    inc h
    jr jr_001_4ba3

    inc a
    ld bc, $407e
    ccf
    jr nz, jr_001_4b87

    add hl, de
    ld b, $00
    nop
    add b
    nop
    ld b, b
    nop
    jr nz, jr_001_4b72

jr_001_4b72:
    ld hl, $2300
    nop
    daa
    nop
    ld b, a
    nop
    nop
    nop
    ld c, $00
    ld sp, $c100
    nop
    add c
    nop
    dec b
    jr jr_001_4ba7

jr_001_4b87:
    inc e
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
    ld hl, sp+$00
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

jr_001_4ba3:
    nop
    rra
    nop
    ld h, b

jr_001_4ba7:
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

jr_001_4bb1:
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_001_4bba

jr_001_4bba:
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    ccf
    db $10
    jr nz, jr_001_4bcf

jr_001_4bcf:
    nop
    nop
    nop
    ld c, h
    jr nc, jr_001_4bb1

    jr nz, jr_001_4bd7

jr_001_4bd7:
    nop
    nop
    nop
    ld bc, $00fe
    ldh a, [rP1]
    ldh a, [rDIV]
    di
    inc b
    di
    nop
    ldh a, [rP1]
    ldh a, [rTMA]
    pop af
    ld bc, $221e
    inc e
    nop
    inc a
    nop
    inc a
    inc b
    jr c, @+$22

    jr jr_001_4bf7

jr_001_4bf7:
    nop
    ld b, d
    add b
    db $10
    rrca
    nop
    rrca
    nop
    rrca
    db $10
    rrca
    ld bc, $001e
    ld e, $20
    ld e, $02
    inc a
    ld [$0030], sp
    nop
    nop
    nop
    add hl, sp
    nop
    ld d, d
    ld hl, $4324
    ld c, b
    rlca
    db $10
    rrca
    add b
    ld a, h
    add l
    ld a, b
    nop
    ld hl, sp+$08

jr_001_4c21:
    ldh a, [$08]
    ldh a, [rDIV]
    ld hl, sp+$02
    db $fc
    nop
    cp $a4
    jr jr_001_4c2d

jr_001_4c2d:
    add b
    ld [bc], a
    ld bc, $0f30
    ld b, b
    ccf
    nop
    ld a, a
    ld b, $79

jr_001_4c38:
    ld d, d
    ld hl, $e000
    nop
    ldh [rTMA], a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00e7], sp
    ldh [rP1], a
    nop
    ld [$0007], sp
    ccf
    add b
    ccf
    nop
    cp a
    db $10
    and e
    add b
    inc bc
    nop
    inc bc
    inc bc
    nop
    ld de, $00e0
    ld hl, sp+$00
    ld hl, sp+$30
    ret nz

    nop
    add b
    ld bc, $1880
    add c
    db $10
    rrca
    add hl, bc
    ld b, $80
    nop
    nop
    nop
    nop
    nop
    pop bc
    nop
    jr nz, jr_001_4c38

    db $10
    ldh [$32], a
    inc c
    ld h, h
    jr jr_001_4cdb

    jr nz, jr_001_4c21

    ld b, b
    jp z, Jump_000_1004

    ld c, $20
    ld e, $40
    ld a, $60
    nop
    add h
    ld a, b
    nop
    cp $00
    cp $42
    inc a
    nop
    nop
    ld h, b
    nop
    sub b
    ld h, b
    ld c, a
    nop
    call c, Call_001_7000
    nop
    ld b, b
    nop
    ld a, [bc]
    inc b
    db $10
    ld c, $20
    ld e, $40
    ld a, $03
    inc a
    nop
    ccf
    nop
    ccf
    add b
    ld a, a
    ld bc, $01fe
    cp $90
    ld l, a
    nop
    rrca
    db $10
    ldh [rDIV], a
    ld hl, sp+$02
    db $fc
    nop
    cp $20
    ld e, $22
    inc e
    nop
    inc a
    inc b
    jr c, jr_001_4ccb

jr_001_4ccb:
    nop
    jr nz, jr_001_4ced

    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld de, $80e0
    nop
    rra
    nop
    inc b

jr_001_4cdb:
    nop
    add d
    nop
    ld de, $05e0
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    inc h
    jr jr_001_4cea

    nop

jr_001_4cea:
    nop
    nop
    nop

jr_001_4ced:
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
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    nop
    nop
    rrca
    ld [hl], b
    nop
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    rra
    nop
    nop
    nop
    ldh [rP1], a
    ld b, b
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rP1]
    ld bc, $1900
    rlca

jr_001_4d28:
    rlca
    rst $38
    ld b, $c0
    ld [$48c4], sp
    add h
    sub h
    ld [$1820], sp
    jr nc, @-$06

    db $fc
    ld hl, sp-$06
    db $fc
    ld b, b
    inc a
    inc b
    ld a, b
    add b
    ld a, b
    ld [$02f0], sp
    ldh a, [$92]
    ld h, b
    dec b
    ld [bc], a
    ld [$2007], sp
    rra
    ld b, c
    ld a, $02
    ld a, h
    inc b
    ld a, b
    ld c, b
    jr nc, jr_001_4d56

    nop

jr_001_4d56:
    ld [bc], a
    ld bc, $038c
    pop bc
    ld a, $20
    rra
    db $10
    rrca
    ld [$8407], sp
    inc bc
    ld b, d
    add c
    jr nc, jr_001_4d28

    ld [$04f0], sp
    inc bc
    add b
    rlca
    ld [$0087], sp
    adc a
    nop
    adc a
    xor c
    ld b, $20
    nop
    sub b
    ld h, b

jr_001_4d7a:
    daa
    ret nz

    ld bc, $44c6
    add d
    ld c, $80
    adc [hl]
    nop
    ld e, $00
    ccf
    nop
    ld [hl], b
    rrca
    nop
    inc bc
    nop
    inc bc
    db $10
    ld h, e
    nop
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    nop
    nop
    ld b, b
    add b
    nop
    add c
    inc h
    sbc c
    nop
    db $fd
    ld bc, $04fc
    ld hl, sp+$10
    ldh [rSC], a
    ld bc, $071a
    add hl, bc
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld hl, $001e
    nop
    jr nz, jr_001_4d7a

    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR41]
    ret nz

    ld b, d
    add b
    ld b, $00
    dec l
    ld [de], a
    sbc b
    ld h, a
    add hl, bc
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    ld hl, $001e
    nop
    ld b, b
    add b
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR11]
    ldh [rSCX], a
    add b
    rlca
    nop
    rra
    nop
    rst $38
    nop
    nop
    rrca
    adc b
    rlca
    ret nz

    rlca
    call nz, $e003
    inc bc
    ld [c], a
    ld bc, $00f0
    adc h
    ld [hl], b
    xor c
    db $10
    ld [bc], a
    add c
    ld b, l
    add e
    rlca
    rst $08
    rlca
    rst $08
    ld e, a
    adc a
    ld a, [bc]
    inc e
    jr nz, jr_001_4e0a

jr_001_4e0a:
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $e8
    ldh a, [rLCDC]
    add b
    nop
    nop
    nop
    nop
    ld [hl+], a
    ret nz

    db $ec
    ldh a, [$60]
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
    inc bc
    rrca
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
    rst $38
    rst $38
    rst $18
    ccf
    dec c
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    rla
    rrca
    ld [bc], a
    ld bc, $0000
    nop
    nop
    or $0f
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
    ld l, a
    rra
    dec c
    inc bc
    ld h, a
    sbc a
    inc sp
    rst $08
    adc l
    di
    and $f9
    pop af
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    ldh a, [rIE]
    ld a, h
    rst $38
    ld a, $ff
    rst $08
    ccf
    daa
    rst $18
    db $fc
    rst $38
    rst $20
    ld hl, sp-$0d
    rst $38
    ei
    rst $38
    ld a, l
    rst $38
    ccf
    rst $38
    db $fc
    rst $38
    add e
    db $fc
    ld a, a
    add b
    rra
    rst $20
    adc c
    rst $30
    call nz, $fcfb
    rst $38
    ldh a, [rIE]
    rrca
    ldh a, [rIE]
    nop
    pop af
    ld c, $cf
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    or a
    ld c, b
    nop
    ld c, c
    ld a, $ff
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $76
    adc c
    nop
    ld c, c
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    inc c
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $08
    jr nc, jr_001_4f0c

    rst $08
    rst $20
    sbc a
    adc a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    pop bc
    ccf
    cp $01
    jp nz, $fdff

    cp $f7
    ld hl, sp-$31
    ldh a, [$bc]
    jp $9f61


    rst $00
    rst $38
    ccf
    rst $38
    cp $01
    ld hl, sp+$07
    db $e3
    rra
    adc a
    ld a, a
    ccf
    rst $38
    db $fd
    cp $e8
    ldh a, [rLCDC]
    add b
    ld e, $ff

jr_001_4f0c:
    db $fc
    rst $38
    db $f4
    ld hl, sp-$30
    ldh [rLCDC], a
    add b
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
    ld a, [hl]
    nop
    jr jr_001_4f2f

jr_001_4f2f:
    jr jr_001_4f31

jr_001_4f31:
    jr jr_001_4f33

jr_001_4f33:
    jr jr_001_4f35

jr_001_4f35:
    jr jr_001_4f37

jr_001_4f37:
    jr jr_001_4f39

jr_001_4f39:
    nop
    nop
    ld h, d
    nop
    halt
    ld a, [hl]
    nop
    ld l, d
    nop
    ld h, d
    nop
    ld h, d
    nop
    ld h, d
    nop
    nop

jr_001_4f4a:
    rst $20
    rra
    nop
    nop
    ld bc, $0000
    ld bc, $0102
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld bc, $fcf3
    adc a
    ld [hl], b
    ld a, h
    add b
    ldh a, [rP1]
    ret nz

    nop
    add b
    nop
    nop
    nop
    inc bc

jr_001_4f69:
    nop
    ei
    inc b
    nop
    ld a, [c]
    nop
    add d
    nop
    pop af
    nop
    add d
    inc bc
    add h
    rrca
    ldh a, [$f8]
    rlca
    adc b
    ld d, c
    nop
    sub b
    nop
    sub b
    ld [$3111], sp
    adc [hl]
    cp a
    ld b, b
    ret nz

    ccf
    jr nc, jr_001_4f4a

    nop
    ld a, c
    ld [bc], a
    ld c, c
    nop
    ld c, d
    or l
    ld c, d
    rst $38
    nop
    nop
    rst $38
    ldh [rP1], a

jr_001_4f98:
    nop
    nop
    nop
    ld c, l
    jr nz, jr_001_4f69

    nop
    add hl, hl
    sub $29
    rst $38
    nop
    nop
    rst $38
    rlca
    nop
    nop
    nop
    nop
    ld c, e
    nop
    ld b, d
    nop
    ld e, e
    nop
    ld c, d
    call nz, $fc3a
    inc bc
    inc bc
    db $fc
    inc c
    inc bc
    ccf
    ret nz

    nop
    inc e
    nop
    jp nc, Jump_000_1200

    nop
    inc e
    jr nz, jr_001_4f98

    db $ed
    ld [de], a
    rra
    ldh [$cc], a
    ld a, $f1
    ld c, $3e
    ld bc, $000f
    inc bc
    nop
    ld bc, $0000
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    add b
    ld b, b
    add b
    add b
    ld b, b
    add b

jr_001_4fe7:
    ld b, b
    ld b, b
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0e11
    ld c, a
    jr nc, jr_001_503f

    ret nz

    ldh [rP1], a
    nop
    ld bc, $0001
    db $10
    rrca
    rrca
    ldh a, [rIE]
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    adc a
    nop
    ld e, [hl]
    add c
    jr c, jr_001_4fe7

    sub e
    ld l, h
    ldh [$1f], a
    inc a
    inc bc
    rlca
    nop
    nop
    nop
    add d
    ld a, h
    ld sp, $d5ce
    ld [bc], a
    xor d
    ld bc, $8154
    ld [bc], a
    ld sp, hl
    nop
    rst $38
    jr nc, jr_001_5049

    nop
    nop
    nop
    nop
    nop

jr_001_503f:
    nop
    add b
    nop
    add b
    nop
    nop
    add b
    ld b, b
    add b
    ld b, b

jr_001_5049:
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0102
    ld [bc], a
    ld bc, $3e41
    adc h
    ld [hl], e
    xor e
    ld b, b
    ld d, l
    add b
    ld a, [hl+]
    add c
    ld b, b
    sbc a
    nop
    rst $38
    inc c
    ldh a, [$f1]
    nop
    ld a, d
    add c
    inc e
    db $e3
    adc c
    db $76
    rlca
    ld hl, sp+$3c
    ret nz

    ldh [rP1], a
    nop
    nop
    nop
    add b
    add b
    nop
    ld [$f0f0], sp
    rrca
    rst $38
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
    ld b, b
    add b
    adc b
    ld [hl], b
    ld a, [c]
    inc c
    inc e
    inc bc
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
    nop
    nop
    add b
    ld bc, $0402
    inc bc
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $e010
    db $10
    jr nz, jr_001_510f

    jr nz, jr_001_50e4

    ld b, b
    adc a
    ld b, b
    ld e, $81
    add hl, sp
    add [hl]
    db $e4
    jr jr_001_50cb

jr_001_50cb:
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    add b
    ld a, a
    ld h, c
    add b
    nop
    nop
    nop
    nop
    nop

jr_001_50db:
    nop
    nop
    nop
    ret nz

    nop
    cp $00
    ld a, a
    add b

jr_001_50e4:
    add e
    ld a, h
    inc c
    inc bc
    nop
    nop
    ld [bc], a
    ld bc, $0003
    ld bc, $0f00
    nop
    rst $38
    nop
    ld hl, sp+$07
    ld [bc], a
    db $fc
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

    ld b, b
    add b
    add b
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

jr_001_510f:
    inc bc
    nop
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld b, b
    add b
    ret nz

jr_001_511d:
    nop

jr_001_511e:
    add b
    nop
    ldh a, [rP1]
    rst $38
    nop
    rra
    ldh [rLCDC], a
    ccf
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
    cp $01
    pop bc
    ld a, $30
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    rst $38
    nop
    ld bc, $86fe
    ld bc, $0000
    nop
    nop
    ld [$0807], sp
    inc b
    ld a, [bc]
    inc b
    call nz, $f102
    ld [bc], a
    ld a, b
    add c
    sbc h
    ld h, c
    daa
    jr jr_001_50db

    ld b, b
    jr nz, jr_001_511e

    ld b, b
    jr nz, jr_001_5161

jr_001_5161:
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
    ld bc, $0100
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
    ret c

    jr nz, jr_001_511d

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
    dec de
    inc b
    dec b
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
    add b
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
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    ld l, [hl]
    ld l, [hl]
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld a, $3e
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
    ld h, d
    ld h, d
    db $76
    db $76
    ld a, [hl]
    ld a, [hl]
    ld l, d
    ld l, d
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
    inc a
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
    jr jr_001_5216

    jr jr_001_5218

    jr jr_001_521a

    jr jr_001_521c

    jr jr_001_521e

    jr jr_001_5220

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

jr_001_5216:
    ld h, d
    ld h, d

jr_001_5218:
    nop
    nop

jr_001_521a:
    inc a
    inc a

jr_001_521c:
    ld h, d
    ld h, d

jr_001_521e:
    ld h, d
    ld h, d

jr_001_5220:
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
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    jr jr_001_5254

    jr jr_001_5256

    jr jr_001_5258

    jr jr_001_525a

    jr jr_001_525c

    jr jr_001_525e

    jr jr_001_5260

    nop
    nop
    ld h, d
    ld h, d
    ld [hl], d
    ld [hl], d
    ld a, d
    ld a, d
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]

jr_001_5254:
    ld h, d
    ld h, d

jr_001_5256:
    ld h, d
    ld h, d

jr_001_5258:
    nop
    nop

jr_001_525a:
    jr c, jr_001_5294

jr_001_525c:
    ld b, h
    ld b, h

jr_001_525e:
    cp d
    cp d

jr_001_5260:
    and d
    and d
    cp d
    cp d
    ld b, h
    ld b, h
    jr c, jr_001_52a0

    nop
    nop
    jr jr_001_5284

    jr c, jr_001_52a6

    jr jr_001_5288

    jr jr_001_528a

    jr jr_001_528c

    jr jr_001_528e

    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, $3e
    ld b, $06

jr_001_5284:
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a

jr_001_5288:
    nop
    nop

jr_001_528a:
    ld a, [hl]
    ld a, [hl]

jr_001_528c:
    ld h, [hl]
    ld h, [hl]

jr_001_528e:
    ld h, [hl]
    ld h, [hl]
    inc c
    inc c
    inc c
    inc c

jr_001_5294:
    jr jr_001_52ae

    jr jr_001_52b0

    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]

jr_001_52a0:
    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]

jr_001_52a6:
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b

jr_001_52ae:
    ld h, b
    ld h, b

jr_001_52b0:
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
    nop
    ld l, h
    ld h, b
    sbc [hl]
    ld b, b
    cp [hl]
    nop
    cp $00
    ld a, h
    nop
    jr c, jr_001_52d7

jr_001_52d7:
    stop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    jr c, jr_001_530b

    jr z, jr_001_530d

    jr z, @+$2a

    ld l, h
    ld b, h
    ld b, h
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld b, h
    ld b, h
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, h
    ld b, h
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    jr c, jr_001_5338

    ld b, h
    ld b, h
    add d
    add d
    add d
    add d
    add b
    add b
    add b
    add b
    nop

jr_001_530b:
    nop
    nop

jr_001_530d:
    nop
    ld hl, sp-$08
    ld b, h
    ld b, h
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    nop
    nop
    nop
    nop
    cp $fe
    ld b, d
    ld b, d
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, b
    ld c, b
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    rst $20
    rst $20
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d

jr_001_5338:
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    jr c, jr_001_5378

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    inc a
    inc a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    xor $ee
    ld b, h
    ld b, h
    ld b, h
    ld c, h
    ld c, b
    ld c, b
    ld d, b
    ld d, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b

jr_001_5378:
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    add d
    add d
    add $c6
    add $c6
    xor d
    xor $aa
    xor d
    sub d
    cp d
    nop
    nop
    nop
    nop
    ld b, a
    ld b, a
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld d, d
    ld [hl], d
    ld d, d
    ld d, d
    ld c, d
    ld e, d
    nop
    nop
    nop
    nop
    jr c, jr_001_53d8

    ld b, h
    ld b, h
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    nop
    nop
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    ld b, [hl]
    ld b, [hl]
    add d
    add d
    add b
    add b
    ld b, b
    ld b, b
    jr nc, jr_001_53ea

    nop
    nop
    nop
    nop
    cp $fe
    sub d
    sub d
    sub d
    sub d
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    add $c6
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d

jr_001_53d8:
    add d
    add d
    nop
    nop
    nop
    nop
    add $c6
    add d
    add d
    add d
    add d
    add d
    add d
    ld b, h
    add $44
    ld b, h

jr_001_53ea:
    nop
    nop
    nop
    nop
    add $c6
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    sub d
    sub d
    nop
    nop
    nop
    nop
    add $c6
    add d
    add d
    ld b, h
    ld b, h
    ld b, h
    ld l, h
    jr z, jr_001_5430

    db $10
    stop
    nop
    nop
    nop
    add $c6
    add d
    add d
    add d
    add d
    ld b, h
    add $44
    ld b, h
    jr z, jr_001_5486

    nop
    nop
    nop
    nop
    cp $fe
    add h
    add h
    ld [$080c], sp
    ld [$1810], sp
    db $10
    db $10
    ld b, h
    ld b, h
    ld a, h
    cp $82
    add d

jr_001_5430:
    add d
    add d
    add d
    add d
    add d
    add d
    nop
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, h
    ld b, h
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add d
    add d
    add d
    add d
    ld b, h
    ld b, h
    jr c, jr_001_548e

    nop
    nop
    nop
    nop
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, h
    ld b, h
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, d
    ld b, d
    cp $fe
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ldh [$e0], a

jr_001_5486:
    nop
    nop
    nop
    nop
    add b
    add b
    sbc [hl]
    sbc [hl]

jr_001_548e:
    add h
    add h
    add h
    add h
    ld b, h
    ld b, h
    inc a
    inc a
    nop
    nop
    nop
    nop
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    rst $20
    rst $20
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr c, jr_001_54ee

    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$8808], sp
    sbc b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    ld d, b
    ld d, b
    ld c, b
    ld c, b
    ld c, b
    ld c, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    xor $ee
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    cp $fe
    nop
    nop
    nop
    nop
    sub d
    sub d
    add d
    add d

jr_001_54ee:
    add d
    add d
    add d
    add d
    add d
    add d
    add $c6
    nop
    nop
    nop
    nop
    ld c, d
    ld c, d
    ld c, d
    ld c, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, d
    ld b, d
    ld [c], a
    ld [c], a
    nop
    nop
    nop
    nop
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    ld b, h
    ld b, h
    jr c, jr_001_554e

    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ldh [$e0], a
    nop
    nop
    nop
    nop
    add d
    add d
    add d
    add d
    add d
    add d
    cp d
    cp d
    ld b, h
    ld b, h
    jr c, jr_001_556e

    ld b, $06
    nop
    nop
    ld c, b
    ld c, h
    ld b, h
    ld b, h
    ld b, h
    ld b, [hl]
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld [c], a
    ld [c], a
    nop
    nop
    nop
    nop
    ld [$0408], sp
    inc b

jr_001_554e:
    ld [bc], a
    ld [bc], a
    add d
    add d
    call nz, $b8c4
    cp b
    nop
    nop
    nop
    nop
    ld b, h
    ld b, h
    jr z, jr_001_55ca

    jr z, jr_001_5588

    jr z, jr_001_558a

    db $10
    jr c, jr_001_5575

    stop
    nop
    nop
    nop
    sub d
    sub d
    xor d
    cp d

jr_001_556e:
    xor d
    xor d
    xor d
    xor $44
    ld b, h
    ld b, h

jr_001_5575:
    ld b, h
    nop
    nop
    nop
    nop
    jr z, jr_001_55a4

    jr z, jr_001_55a6

    ld b, h
    ld b, h
    ld b, h
    add $82
    add d
    add $c6
    nop
    nop

jr_001_5588:
    nop
    nop

jr_001_558a:
    jr z, jr_001_55b4

    db $10
    jr c, jr_001_559f

    db $10
    db $10
    db $10
    db $10
    db $10
    jr c, jr_001_55ce

    nop
    nop
    nop
    nop
    jr nz, jr_001_55cc

    jr nz, jr_001_55be

    ld b, b

jr_001_559f:
    ld h, b
    ld b, b
    ld b, b
    add d
    add d

jr_001_55a4:
    cp $fe

jr_001_55a6:
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

jr_001_55b4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_55be:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_001_55e2

jr_001_55ca:
    jr jr_001_55e4

jr_001_55cc:
    nop
    nop

jr_001_55ce:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_55e2:
    nop
    nop

jr_001_55e4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
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
    ld [$0a09], sp
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
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_001_5627

jr_001_5627:
    nop
    nop
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_001_565c

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_001_566c

    ld [hl-], a
    inc sp
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_001_567d

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

jr_001_565c:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    nop
    nop
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_001_566c:
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

jr_001_567d:
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
    halt
    nop
    nop
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
    nop
    nop
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
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    nop
    nop
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    sub c
    sub d
    nop
    nop
    nop
    nop
    nop
    nop
    and l
    nop
    sub e
    sub h
    sub l
    sub [hl]
    nop
    sub a
    sbc b
    sub h
    sbc c
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
    nop
    sbc d
    sbc e
    sbc b
    sbc h
    sbc d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc a
    and b
    and b
    and c
    nop
    sub h
    sbc b
    and d
    sub [hl]
    sbc l
    sub h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    sbc a
    and b
    and b
    and c
    nop
    and e
    sub h
    and h
    sub [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and a
    xor b
    or b
    call nc, $aab3
    nop
    nop
    nop
    nop
    nop
    or d
    xor d
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    pop bc
    rst $00
    push de
    call $00c6
    nop
    nop
    nop
    nop
    ret


    jp z, Jump_000_00ca

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor b
    and a
    or l
    nop
    xor a
    xor d
    or [hl]
    xor d
    xor a
    nop
    nop
    or c
    or d
    and a
    or b
    and [hl]
    xor a
    nop
    nop
    nop
    cp l
    jp z, Jump_000_00c9

    add $c6
    adc $c6
    add $00
    nop
    ret z

    ret


    push bc
    rst $00
    cp e
    add $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor b
    or d
    or c
    or h
    and a
    or d
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
    cp l
    ret


    ret z

    jp $c9cc


    add $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor b
    xor d
    or h
    nop
    and [hl]
    nop
    or h
    xor e
    and a
    or d
    or a
    nop
    and a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop bc
    cp a
    jp $bbd3


    nop
    jp $c5c2


    ret


    rst $08
    db $d3
    cp h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    cp b
    xor h
    or h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add $d0
    jp Jump_000_00c3


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_001_58c0

    ld [bc], a
    nop
    nop
    nop
    xor b
    xor d
    or h
    nop
    and a
    nop
    or h
    xor e
    and a
    or d
    or a
    nop
    and [hl]
    nop
    nop
    nop

jr_001_58c0:
    nop
    nop
    nop
    nop
    pop bc
    cp a
    jp $bcd3


    nop
    jp $c5c2


    ret


    rst $08
    db $d3
    cp e
    nop
    nop
    nop
    nop
    jr z, jr_001_58eb

    ld [bc], a
    nop
    nop
    nop
    or h
    xor e
    and a
    or d
    or a
    nop
    and a
    nop
    xor b
    xor d
    or h
    nop
    and [hl]
    nop
    nop

jr_001_58ea:
    nop

jr_001_58eb:
    nop
    nop
    nop
    nop
    jp $c5c2


    ret


    rst $08
    db $d3
    cp h
    nop
    pop bc
    cp a
    jp $bbd3


    nop
    nop
    nop
    nop
    ld b, $03
    ld [bc], a
    or d
    xor d
    xor d
    ret


    jp z, Jump_000_06ca

    inc bc
    ld [bc], a
    or d
    or c
    nop
    ret


    ret z

    nop
    ld [hl], $59
    daa
    ld e, c
    jr @+$5b

    inc c
    ld b, $02
    xor d
    and [hl]
    or e
    cp c
    nop
    nop
    add $bb
    call Call_000_00d1
    nop
    inc c
    ld b, $02
    or c
    or d
    and a
    or b
    and [hl]
    xor a
    ret z

    ret


    push bc
    rst $00
    cp e
    add $0c
    ld b, $02
    xor e
    and [hl]
    and a
    xor c
    nop
    nop
    jp nz, $c5bb

    cp [hl]
    nop
    nop
    nop
    nop
    jr c, jr_001_5949

jr_001_5949:
    ld b, h
    jr c, jr_001_58ea

    ld h, b
    cp [hl]
    ld b, b
    cp [hl]
    ld b, b
    ld a, h
    nop
    jr c, jr_001_5955

jr_001_5955:
    nop
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    nop
    nop
    jr jr_001_5969

jr_001_5969:
    inc c
    jr nc, jr_001_5970

    jr c, jr_001_5972

    jr c, jr_001_5974

jr_001_5970:
    jr c, jr_001_5976

jr_001_5972:
    jr c, jr_001_597c

jr_001_5974:
    stop

jr_001_5976:
    nop
    jr nc, jr_001_5979

jr_001_5979:
    ld h, b
    jr $59bc

jr_001_597c:
    jr c, @+$42

    jr c, @+$42

    jr c, $59c2

    jr c, $59a4

    db $10

Jump_001_5985:
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    xor a
    ldh [rSC], a
    ld sp, $dfff
    call Call_000_03b4
    call Call_000_05e9

copy_menu_tiles_into_vram:
    xor a
    ld [$cf14], a
    ld [$cf2e], a
    ldh [$a0], a
    ld hl, $647d ; source
    ld de, $9000 ; dest
    ld bc, $0800 ; count
    call memcpy  ; copy stuff to vram
    ld hl, $6c7d ; source
    ld de, $8800 ; dest
    ld bc, $0800 ; count
    call memcpy  ; copy stuff to vram
    ld hl, $7598 ; source
    ld de, $8000 ; dest
    ld bc, $0050 ; count
    call memcpy  ; copy stuff to vram
    ld de, $7430
    ld hl, $9800
    call copy_tile_map_20x18
    call Call_000_04e1
    ld hl, $6097
    ld de, $c100
    ld b, $48

jr_001_59d9:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_001_59d9

    xor a
    ldh [$a2], a
    ld [$cf2c], a
    ld a, $03
    ld [$cf2d], a
    ld a, $04
    ld [$c2a4], a
    ld a, [$cf2f]
    and a
    jr z, jr_001_5a03

    ld a, $03
    ld [$c2a4], a
    ld hl, $76a0
    ld de, $99a1
    call Call_000_0683

jr_001_5a03:
    ld a, [$cf2f]
    ld hl, $5aa6
    and a
    call nz, Call_000_0f3a
    ld a, $c3
    call set_pal_and_lcd_control
    ld a, [$cf2f]
    and a
    call z, Call_000_0095
    ld a, $04
    call Call_000_063d

Jump_001_5a1e:
jr_001_5a1e:
    call Call_000_0369
    ld a, [$cf12]
    cp $89
    jp z, Jump_001_5c2e

    call Call_000_055e
    call Call_000_05a1
    call Call_000_047e
    call Call_001_60df
    ldh a, [$a0]
    inc a
    ldh [$a0], a
    and $07
    jr nz, jr_001_5a55

    ld hl, $75d8
    ldh a, [$a0]
    sra a
    sra a
    and $1e
    call Call_000_065e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $98ac
    call Call_000_06a5

jr_001_5a55:
    ldh a, [$8c]
    and $cd
    jr z, jr_001_5a1e

    push af
    and $c4
    call nz, Call_001_6023
    pop af
    and $09
    jr z, jr_001_5a1e

    ld hl, $742d
    ld de, $994b
    call Call_000_06a5
    call Call_000_0369
    ld hl, $7649
    ld de, $988c
    call Call_000_06a5
    ld a, $06
    call Call_000_07ce
    ld b, $32

jr_001_5a82:
    push bc
    call Call_000_0369
    call Call_000_047e
    call Call_001_60df
    pop bc
    dec b
    jr nz, jr_001_5a82

    ld a, [$cf2e]
    add a
    ld hl, $5a9e
    call Call_000_065e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    add $5a
    ld a, d
    ld e, e
    add [hl]
    ld e, h
    xor [hl]
    ld e, e
    ld d, c
    nop
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld bc, $c100
    nop
    nop
    nop
    nop
    nop
    nop
    or c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$cf15]
    and a
    jp nz, Jump_001_5c2e

    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    xor a
    ldh [rSC], a
    call Call_000_03b4
    call Call_000_05e9
    call Call_000_04e1
    ld a, [$cf2f]
    ld hl, $1170
    and a
    call nz, Call_000_0f3a
    xor a
    ld [$cf29], a
    ld [$cf2a], a
    call Call_000_30c3
    ld de, $5b34
    call Call_000_1290
    ld a, [$cf2f]
    ld hl, $5b5a
    and a
    call nz, Call_000_0f3a
    ld a, $c3
    call set_pal_and_lcd_control
    ld b, $6e

jr_001_5b0b:
    push bc
    call Call_000_0369
    call Call_000_055e
    pop bc
    ldh a, [$8c]
    and $09
    jr nz, jr_001_5b1c

    dec b
    jr nz, jr_001_5b0b

jr_001_5b1c:
    call Call_000_03b4
    call Call_000_05e9
    ld a, [$cf2f]
    ld hl, $5b6a
    and a
    call nz, Call_000_0f3a
    ld a, $02
    ld hl, $12d2
    jp switch_bank_and_jump


    add d
    xor d
    add d
    pop af
    add d
    adc $82
    pop bc
    add d
    call nz, Call_001_4081
    add d
    and d
    add d
    pop bc
    add d
    rst $08
    add d
    and d
    inc bc
    add d
    ld [$f182], a
    add d
    or e
    add c
    ld b, b
    add d
    or e
    add d
    cp c
    add d
    call nz, $cb82
    ld [bc], a
    ld d, c
    nop
    nop
    ld b, $00
    nop
    nop
    ld [bc], a
    nop
    call nz, RST_00
    nop
    nop
    nop
    nop
    ld d, c
    nop
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$cf15]
    and a
    jp nz, Jump_001_5c2e

    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    xor a
    ldh [rSC], a
    call Call_000_03b4
    call Call_000_05e9
    call Call_000_04e1
    ld a, [$cf2f]
    ld hl, $1170
    and a
    call nz, Call_000_0f3a
    ld a, $01
    ld [$c2a9], a
    call Call_001_5cba
    ld a, $02
    ld hl, $1927
    jp switch_bank_and_jump


    ld a, [$cf15]
    and a
    jr nz, jr_001_5c2e

    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ld l, $14
    ld a, $89
    ld [$cf13], a

Jump_001_5bc2:
    ldh [rSB], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a

jr_001_5bcc:
    ldh a, [rSC]
    add a
    jr c, jr_001_5bcc

    ldh a, [rSB]
    ld [$cf12], a
    dec l
    jp z, Jump_001_5c7c

    cp $88
    jp nz, Jump_001_5bc2

    ld b, $c8
    call Call_001_5fd8
    ld l, $14
    ld a, $89
    ld [$cf13], a

jr_001_5beb:
    ldh [rSB], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a

jr_001_5bf5:
    ldh a, [rSC]
    add a
    jr c, jr_001_5bf5

    ldh a, [rSB]
    ld [$cf12], a
    dec l
    jp z, Jump_001_5c7c

    cp $88
    jr nz, jr_001_5beb

    ld a, $89
    ld [$cf14], a
    ld a, $10
    ld [$cf13], a

jr_001_5c11:
    ld a, [$cf13]
    ldh [rSB], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a

jr_001_5c1e:
    ldh a, [rSC]
    add a
    jr c, jr_001_5c1e

    ldh a, [rSB]
    ld [$cf12], a
    cp $40
    jr nz, jr_001_5c11

    jr jr_001_5c4d

Jump_001_5c2e:
jr_001_5c2e:
    ld a, $88
    ld [$cf14], a
    ld a, $40
    ld [$cf13], a
    ld de, $07d0
    ld a, [$cf15]
    ld b, a

jr_001_5c3f:
    dec de
    ld a, e
    or d
    jr z, jr_001_5c7c

    ld a, [$cf15]
    cp b
    jr z, jr_001_5c3f

    ld [$cf16], a

jr_001_5c4d:
    xor a
    ldh [$8c], a
    ld [$cf13], a
    ld [$cf12], a
    call Call_000_03b4
    call Call_000_05e9
    call Call_000_04e1
    xor a
    ld [$cf58], a
    ld [$cf59], a
    ld [$cf5a], a
    ld [$cf5b], a
    ld a, $01
    ld [$cf5c], a
    call Call_001_5d84
    ld a, $02
    ld hl, $15de
    jp switch_bank_and_jump


Jump_001_5c7c:
jr_001_5c7c:
    ld a, [$cf2f]
    and a
    call z, Call_000_0095
    jp Jump_001_5a1e


    ld a, [$cf15]
    and a
    jp nz, Jump_001_5c2e

    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    xor a
    ldh [rSC], a
    call Call_000_03b4
    call Call_000_05e9
    call Call_000_04e1
    ld a, [$cf2f]
    ld hl, $1170
    and a
    call nz, Call_000_0f3a
    ld a, $01
    ld [$c2a9], a
    call Call_001_5cba
    ld a, $02
    ld hl, $1841
    jp switch_bank_and_jump


Call_001_5cba:
    xor a
    ld [$cf0b], a
    ld [$cf0c], a
    ld a, $09
    ld hl, $5908
    call switch_bank_and_call
    ld hl, $6292 ; source
    ld de, $8000 ; dest
    ld bc, $0130 ; count
    call memcpy
    ld hl, $c100
    ld b, $30
    xor a

jr_001_5cdb:
    ld [hl], $f0
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_001_5cdb

    ld de, $6102
    ld hl, $9800
    call copy_tile_map_20x18
    xor a
    ldh [$9f], a
    ldh [$a0], a
    ldh [$a2], a
    call Call_001_63c2
    ld a, [$cf2f]
    ld hl, $5d74
    and a
    call nz, Call_000_0f3a
    ld a, $c3
    call set_pal_and_lcd_control

jr_001_5d06:
    call Call_000_055e
    call Call_000_047e
    call Call_000_0369
    ldh a, [$a2]
    inc a
    ldh [$a2], a
    and $07
    jr nz, jr_001_5d28

    ld b, $e4
    ldh a, [$a2]
    and $08
    jr nz, jr_001_5d22

    ld b, $90

jr_001_5d22:
    ld a, b
    ld [$cf1c], a
    ldh [rOBP0], a

jr_001_5d28:
    ldh a, [$8c]
    and $09
    jr nz, jr_001_5d48

    ldh a, [$8c]
    bit 1, a
    jp nz, Jump_001_5985

    and $f0
    jr z, jr_001_5d06

    ldh a, [$8c]
    call Call_001_6418
    call Call_001_63c2
    ld a, $03
    call Call_000_07ce
    jr jr_001_5d06

jr_001_5d48:
    ld a, $06
    call Call_000_07ce
    ld b, $0a

jr_001_5d4f:
    call Call_000_0369
    dec b
    jr nz, jr_001_5d4f

    call Call_000_03b4
    call Call_000_05e9
    call Call_000_04e1
    ldh a, [$a0]
    add a
    add a
    ld b, a
    ldh a, [$9f]
    add b
    ld [$cf2b], a
    ld a, [$cf2f]
    ld hl, $1170
    and a
    call nz, Call_000_0f3a
    ret


    ld d, c
    nop
    nop
    ld b, $00
    ld [bc], a
    nop
    ld bc, $c900
    nop
    nop
    nop
    nop
    nop
    nop

Call_001_5d84:
    xor a
    ld [$cf0b], a
    ld [$cf0c], a
    ld [$cf13], a
    ld [$cf12], a
    ld a, $09
    ld hl, $5908
    call switch_bank_and_call
    ld hl, $6292 ; source
    ld de, $8000 ; dest
    ld bc, $0130 ; count
    call memcpy
    ld de, $6102
    ld hl, $9800
    call copy_tile_map_20x18
    xor a
    ldh [$a5], a
    ldh [$a2], a
    ld hl, $c100
    ld b, $30
    xor a

jr_001_5db9:
    ld [hl], $f0
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_001_5db9

    ld a, [$cf2c]
    ld hl, $5ff7
    call Call_000_065d
    ld a, [hl+]
    ldh [$9f], a
    ld a, [hl]
    ldh [$a0], a
    ld a, [$cf2d]
    ld hl, $5ff7
    call Call_000_065d
    ld a, [hl+]
    ldh [$a3], a
    ld a, [hl]
    ldh [$a4], a
    call Call_001_63c2
    call Call_001_63ea
    ld a, $c3
    call set_pal_and_lcd_control
    ld a, [$cf15]
    ld [$cf16], a
    xor a
    ldh [$8c], a
    ldh [$8b], a
    ld [$cf13], a
    ldh [rSB], a
    ld a, [$cf14]
    bit 0, a
    jp z, Jump_001_5e9a

    ld b, $08

jr_001_5e05:
    db $76
    dec b
    jr nz, jr_001_5e05

Jump_001_5e09:
jr_001_5e09:
    call Call_000_047e
    call Call_000_0369
    call Call_000_055e
    call Call_001_5fde
    ld b, $64
    call Call_001_5fd8
    ldh a, [$a0]
    add a
    add a
    ld b, a
    ldh a, [$9f]
    or b
    inc a
    swap a
    ld b, a
    ldh a, [$8c]
    and $0f
    or $04
    or b
    ld [$cf13], a

jr_001_5e30:
    ldh [rSB], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a

jr_001_5e3a:
    ldh a, [rSC]
    add a
    jr c, jr_001_5e3a

    ldh a, [rSB]
    ld [$cf12], a
    and $04
    jr nz, jr_001_5e30

    ldh a, [$8c]
    bit 1, a
    jp nz, Jump_001_5985

    ldh a, [$a5]
    bit 1, a
    jr nz, jr_001_5e6f

    ldh a, [$8c]
    and $09
    call nz, Call_001_5f18
    ldh a, [$8c]
    and $f0
    jr z, jr_001_5e6f

    ldh a, [$8c]
    call Call_001_6418
    call Call_001_63c2
    ld a, $03
    call Call_000_07ce

jr_001_5e6f:
    ldh a, [$a5]
    bit 0, a
    jr nz, jr_001_5e09

    ld a, [$cf12]
    and $09
    call nz, Call_001_5f42
    ld a, [$cf12]
    and $f0
    jp z, Jump_001_5e09

    swap a
    dec a
    ld hl, $5ff7
    call Call_000_065d
    ld a, [hl+]
    ldh [$a3], a
    ld a, [hl]
    ldh [$a4], a
    call Call_001_63ea
    jp Jump_001_5e09


Jump_001_5e9a:
jr_001_5e9a:
    call Call_000_047e
    call Call_000_0369
    call Call_001_5fde
    call Call_000_055e
    ldh a, [$a4]
    add a
    add a
    ld b, a
    ldh a, [$a3]
    or b
    inc a
    swap a
    ld b, a
    ldh a, [$8c]
    and $0b
    or b
    ld [$cf13], a
    ld a, [$cf16]
    ld b, a

jr_001_5ebe:
    ld a, [$cf15]
    cp b
    jr z, jr_001_5ebe

    ld [$cf16], a
    ld a, [$cf12]
    bit 1, a
    jp nz, Jump_001_5985

    ldh a, [$a5]
    bit 1, a
    jr nz, jr_001_5ef6

    ld a, [$cf12]
    and $09
    call nz, Call_001_5f18
    ld a, [$cf12]
    and $f0
    jr z, jr_001_5ef6

    swap a
    dec a
    ld hl, $5ff7
    call Call_000_065d
    ld a, [hl+]
    ldh [$9f], a
    ld a, [hl]
    ldh [$a0], a
    call Call_001_63c2

jr_001_5ef6:
    ldh a, [$a5]
    bit 0, a
    jr nz, jr_001_5e9a

    ldh a, [$8c]
    and $09
    call nz, Call_001_5f42
    ldh a, [$8c]
    and $f0
    jr z, jr_001_5e9a

    ldh a, [$8c]
    call Call_001_6412
    call Call_001_63ea
    ld a, $03
    call Call_000_07ce
    jr jr_001_5e9a

Call_001_5f18:
    ld a, $06
    call Call_000_07ce
    ldh a, [$a5]
    or $02
    ldh [$a5], a
    cp $03
    jr z, jr_001_5f6c

    ld a, $10
    ld [$c103], a
    ld [$c107], a
    ld [$c10b], a
    ld [$c10f], a
    ld [$c113], a
    ld [$c117], a
    ld [$c11b], a
    ld [$c11f], a
    ret


Call_001_5f42:
    ld a, $06
    call Call_000_07ce
    ldh a, [$a5]
    or $01
    ldh [$a5], a
    cp $03
    jr z, jr_001_5f6c

    ld a, $10
    ld [$c123], a
    ld [$c127], a
    ld [$c12b], a
    ld [$c12f], a
    ld [$c133], a
    ld [$c137], a
    ld [$c13b], a
    ld [$c13f], a
    ret


jr_001_5f6c:
    ld a, [$cf14]
    bit 0, a
    jr z, jr_001_5f9a

    ld b, $08

jr_001_5f75:
    call Call_000_0369
    dec b
    jr nz, jr_001_5f75

    ld a, $89
    ld [$cf13], a
    ldh [rSB], a

jr_001_5f82:
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a

jr_001_5f8a:
    ldh a, [rSC]
    add a
    jr c, jr_001_5f8a

    ldh a, [rSB]
    ld [$cf12], a
    cp $88
    jr nz, jr_001_5f82

    jr jr_001_5fb7

jr_001_5f9a:
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    xor a
    ldh [rSC], a
    call Call_000_0369
    call Call_000_0095
    ld a, [$cf16]
    ld b, a

jr_001_5fae:
    ld a, [$cf15]
    cp b
    jr z, jr_001_5fae

    ld [$cf16], a

jr_001_5fb7:
    call Call_000_03b4
    call Call_000_05e9
    call Call_000_04e1
    ldh a, [$a0]
    add a
    add a
    ld b, a
    ldh a, [$9f]
    add b
    ld [$cf2c], a
    ldh a, [$a4]
    add a
    add a
    ld b, a
    ldh a, [$a3]
    add b
    ld [$cf2d], a
    pop af
    ret


Call_001_5fd8:
jr_001_5fd8:
    push af
    pop af
    dec b
    jr nz, jr_001_5fd8

    ret


Call_001_5fde:
    ldh a, [$a2]
    inc a
    ldh [$a2], a
    and $07
    ret nz

    ld b, $e4
    ldh a, [$a2]
    and $08
    jr nz, jr_001_5ff0

    ld b, $90

jr_001_5ff0:
    ld a, b
    ld [$cf1c], a
    ldh [rOBP0], a
    ret


    nop
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld bc, $0103
    ld [$cf13], a
    ld b, a
    ldh [rSB], a

Jump_001_600d:
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a

jr_001_6015:
    ldh a, [rSC]
    add a
    jr c, jr_001_6015

    ldh a, [rSB]
    ld [$cf12], a
    cp b
    jp nz, Jump_001_600d

Call_001_6023:
    ld a, $03
    call Call_000_07ce
    ld a, [$c2a4]
    ld b, a
    ldh a, [$8c]
    and $84
    jr z, jr_001_6042

    ld a, [$cf2e]
    inc a
    ld [$cf2e], a
    cp b
    jr nz, jr_001_6052

    xor a
    ld [$cf2e], a
    jr jr_001_6052

jr_001_6042:
    ld a, [$cf2e]
    dec a
    ld [$cf2e], a
    cp $ff
    jr nz, jr_001_6052

    ld a, b
    dec a
    ld [$cf2e], a

jr_001_6052:
    ld a, [$cf2e]
    add a
    add a
    add a
    add a
    add a
    add $08
    ld [$c100], a
    ld [$c104], a
    ld [$c108], a
    ld [$c10c], a
    ld [$c110], a
    ld [$c114], a
    ld [$c118], a
    ld [$c11c], a
    add $08
    ld [$c120], a
    ld [$c124], a
    add $08
    ld [$c128], a
    ld [$c12c], a
    ld [$c130], a
    ld [$c134], a
    ld [$c138], a
    ld [$c13c], a
    ld [$c140], a
    ld [$c144], a
    ret


    ld [$0008], sp
    nop
    ld [$0110], sp
    nop
    ld [$0118], sp
    nop
    ld [$0120], sp
    nop
    ld [$0128], sp
    nop
    ld [$0130], sp
    nop
    ld [$0138], sp
    nop
    ld [$0240], sp
    nop
    db $10
    ld [$0003], sp
    db $10
    ld b, b
    inc bc
    jr nz, jr_001_60d8

    ld [$6002], sp
    jr jr_001_60d5

    ld bc, $1840
    jr jr_001_60cb

    ld b, b

jr_001_60cb:
    jr jr_001_60ed

    ld bc, $1840
    jr z, jr_001_60d3

    ld b, b

jr_001_60d3:
    jr jr_001_6105

jr_001_60d5:
    ld bc, $1840

jr_001_60d8:
    jr c, jr_001_60db

    ld b, b

jr_001_60db:
    jr jr_001_611d

    nop
    ld h, b

Call_001_60df:
    ldh a, [$a2]
    inc a
    ldh [$a2], a
    and $07
    ret nz

    ldh a, [$a2]
    sra a
    sra a

jr_001_60ed:
    sra a
    and $03
    ld hl, $60fe
    call Call_000_065e
    ld a, [hl]
    ld [$cf1c], a
    ldh [rOBP0], a
    ret


    db $e4
    sub e
    ld c, [hl]
    add hl, sp
    nop
    nop
    nop

jr_001_6105:
    nop
    ld bc, $0302
    inc b
    nop
    nop
    dec b
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
    dec bc
    inc c
    dec c

jr_001_611d:
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
    jr jr_001_614a

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_001_6139

jr_001_6139:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_001_6172

    ld a, [hl+]

jr_001_614a:
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
    dec l
    ld l, $2f
    jr nc, jr_001_618a

    nop
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_001_619b

    ld a, [hl-]
    dec sp
    nop
    nop
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

jr_001_6172:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld d, b
    ld d, c

jr_001_618a:
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
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d

jr_001_619b:
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
    ld h, d
    nop
    nop
    nop
    ld h, e
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    jp nz, $c4c3

    push bc
    add $00
    nop
    nop
    nop
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $00
    nop
    nop
    nop
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    adc a
    rst $38
    adc b
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp+$1e
    ld e, $32
    ld a, $22
    ld a, $22
    ld a, $32
    ld a, $12
    ld e, $12
    ld e, $12
    ld e, $fe
    cp $83
    rst $38
    add c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    add e
    rst $38
    sbc [hl]
    cp $88
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$08
    ld hl, sp+$00
    nop
    nop
    nop
    ld hl, $213f
    ccf
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
    sub b
    ldh a, [$90]
    ldh a, [$f0]
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
    rra
    rra
    ld de, $111f
    rra
    ld de, $111f
    rra
    ld de, $111f
    rra
    ld de, $111f
    rra
    pop af
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld a, a
    ld h, e
    ld a, a
    ld b, c
    nop
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
    rst $38
    add e
    rst $38
    add c
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$78
    rst $38
    adc a
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    ld a, a
    ld c, c
    ld a, a
    ld a, c
    rra
    ld de, $627e
    ld a, a
    ld b, a
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    ld a, a
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    add e
    cp $9e
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    pop af
    rra
    ld de, $111f
    rra
    ld de, $111f
    rra
    ld de, $111f
    rra
    ld de, $111f
    rra
    rra
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld bc, $01ff
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $ff03
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
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

Call_001_63c2:
    ld de, $c100
    ld hl, $643d
    ldh a, [$9f]
    swap a
    add a
    ld b, a
    ldh a, [$a0]
    swap a
    add a
    ldh [$a1], a
    ld c, $08

jr_001_63d7:
    ldh a, [$a1]
    add [hl]
    inc hl
    ld [de], a
    inc de
    ld a, [hl+]
    add b
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    inc hl
    inc de
    dec c
    jr nz, jr_001_63d7

    ret


Call_001_63ea:
    ld de, $c120
    ld hl, $645d
    ldh a, [$a3]
    swap a
    add a
    ld b, a
    ldh a, [$a4]
    swap a
    add a
    ldh [$a1], a
    ld c, $08

jr_001_63ff:
    ldh a, [$a1]
    add [hl]
    inc hl
    ld [de], a
    inc de
    ld a, [hl+]
    add b
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    inc hl
    inc de
    dec c
    jr nz, jr_001_63ff

    ret


Call_001_6412:
    ld hl, $ffa3
    ld d, a
    jr jr_001_641c

Call_001_6418:
    ld hl, $ff9f
    ld d, a

jr_001_641c:
    and $c0
    jr z, jr_001_6427

    inc l
    ld a, [hl]
    inc a
    and $01
    ld [hl], a
    ret


jr_001_6427:
    ld a, d
    and $20
    jr z, jr_001_6435

    dec [hl]
    ld a, [hl]
    cp $ff
    ret nz

    ld a, $03
    ld [hl], a
    ret


jr_001_6435:
    inc [hl]
    ld a, [hl]
    cp $04
    ret nz

    xor a
    ld [hl], a
    ret


    ld c, b
    stop
    nop
    ld d, b
    db $10
    inc bc
    nop
    ld c, b
    jr jr_001_6449

    nop

jr_001_6449:
    ld d, b
    jr jr_001_6450

    nop
    ld c, b
    jr nz, jr_001_6452

jr_001_6450:
    nop
    ld d, b

jr_001_6452:
    jr nz, jr_001_6459

    nop
    ld e, b
    jr z, jr_001_645e

    nop

jr_001_6459:
    ld h, b
    jr z, jr_001_6463

    nop
    ld e, b

jr_001_645e:
    db $10
    ld [$6000], sp
    db $10

jr_001_6463:
    dec bc
    nop
    ld e, b
    jr jr_001_6471

    nop
    ld h, b
    jr jr_001_6478

    nop
    ld e, b
    jr nz, jr_001_647a

    nop

jr_001_6471:
    ld h, b
    jr nz, jr_001_6481

    nop
    ld c, b
    jr z, jr_001_6486

jr_001_6478:
    nop
    ld d, b

jr_001_647a:
    jr z, jr_001_648b

    nop
    nop
    nop
    nop
    nop

jr_001_6481:
    nop
    nop
    nop
    nop
    nop

jr_001_6486:
    nop
    nop
    nop
    nop
    nop

jr_001_648b:
    nop
    nop
    rrca
    nop
    rrca
    rlca
    jr jr_001_64a2

    jr jr_001_64a4

    jr nc, jr_001_64b6

    jr nc, jr_001_64b8

    ld h, b
    ccf
    ld h, b
    add hl, sp
    rst $38
    nop
    rst $38
    rst $38
    nop

jr_001_64a2:
    rst $38
    nop

jr_001_64a4:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, b
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_001_64b6:
    rst $38
    nop

jr_001_64b8:
    rst $38
    nop
    rst $38
    nop
    db $e3
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
    adc a
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
    ld a, a
    ld b, b
    ld a, a
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
    ld [hl], l
    ld b, l
    ld [hl], l
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
    or l
    inc h
    db $76
    rst $38
    nop
    rst $38
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    adc $0b
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
    ld bc, $0000
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ld b, [hl]
    ld b, [hl]
    xor c
    nop
    add hl, hl
    jr jr_001_655e

    nop
    nop
    ld hl, $521e
    ld hl, $4001
    nop
    add b
    ld h, a
    sbc b
    db $db
    inc a
    jp c, Jump_000_003d

    nop
    nop
    nop
    add b
    nop
    inc b
    ld hl, sp+$0a
    add h
    inc b
    or d
    ld de, $d4ba
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add h
    ld a, b
    ld c, d
    add h
    nop
    add d
    add b
    ld [bc], a
    nop

jr_001_655e:
    nop
    ld de, $200e
    ld de, $2050
    jr nc, jr_001_65b3

    ld l, $5f
    scf
    ld c, a
    ld e, e
    daa
    ld de, $200e
    ld de, $a040
    ld de, $36ee
    rst $08
    or e
    rst $08
    cp l
    jp $83fd


    nop
    nop
    add b
    nop
    nop
    add b
    nop
    ld hl, sp+$00
    ret z

    add l
    call z, $cdb4
    xor h
    db $dd
    nop
    nop
    ld b, d
    inc a
    and l
    ld b, d
    ld b, d
    add c
    nop
    add c
    ld c, c
    cp a
    ld c, [hl]
    cp a
    or $0f
    nop
    nop
    nop
    nop
    nop
    nop
    call nz, $8238
    ld b, h
    nop
    add e
    db $e4
    ld a, [de]
    call c, Call_000_003a
    nop
    nop
    nop
    nop
    nop

jr_001_65b3:
    nop
    nop
    ld b, h
    jr c, jr_001_65b8

jr_001_65b8:
    call nz, $0400
    ld [bc], a
    ld b, $c6
    ld h, d
    call z, $d86f
    ld c, a
    ret nc

    ld e, a
    jp c, $d555

    ld e, d
    ld [$e745], a
    ld b, b
    ld b, a
    ld [hl], a
    ld b, h
    ld [hl], a
    ld b, h
    rst $30
    inc b

jr_001_65d4:
    rst $30
    and b
    ld d, b
    ld d, a
    and a
    and [hl]
    ld d, l
    ld [hl], a
    inc b
    ld b, $77
    inc b
    or a
    inc h
    or a
    ld h, h
    scf
    and $55
    push de
    and [hl]
    and [hl]
    ld d, l
    ei
    nop
    jr @-$22

    ld de, $10df
    rst $18
    db $10
    sbc $9a
    ld d, l
    ld d, l
    sbc d
    sbc d
    ld d, l
    cp a
    stop
    rrca

Call_001_65ff:
    add sp, -$18
    dec bc
    rst $28
    jr jr_001_65d4

    ld [de], a
    ld d, l
    ld sp, $2a9a
    inc sp
    ld e, a
    ld b, d
    ld b, l
    ld a, a
    nop
    jr nc, jr_001_6677

    ld [hl], l
    ld b, b
    ld [hl], b
    ld h, l
    ld d, l
    ld d, b
    ld h, b
    ld l, l
    ld d, l
    ld [hl], b
    ld b, b
    ld b, h
    rst $30
    nop
    ld [hl], b
    ld b, a
    ld b, a
    ld d, h
    db $76
    ld h, [hl]
    ld d, h
    ld d, l
    ld h, h
    db $eb
    pop de
    ld [hl], e
    ld [bc], a
    adc e
    adc $0b
    adc $8b
    adc $0b
    adc $9b
    sbc $df
    sbc d
    sbc e
    ld d, [hl]
    rst $38
    ld [de], a
    nop
    ld bc, $0100
    ld [bc], a
    ld bc, $0102
    ld bc, $0102
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    xor $11
    xor $11
    cp $01
    or [hl]
    ld c, c
    or [hl]
    ld c, c
    add [hl]
    ld a, c
    or [hl]
    ld a, c
    db $76
    ld sp, hl
    ld a, [$ba3d]
    ld a, l
    or [hl]
    ld a, c
    or h
    ld a, e
    xor l
    ld [hl], d
    call $f932
    ld b, $fd
    ld b, $b4
    ld a, e
    or h
    ld a, e
    or h
    ld a, e
    or l
    ld a, d
    or l
    ld a, d

jr_001_6677:
    and l
    ld a, d
    sbc l
    ld h, d
    ld sp, hl
    ld b, $c3
    ccf
    rst $18
    ccf
    rst $20
    rra
    ld a, [$b806]
    ld b, h
    add [hl]
    ld a, [hl]
    cp $7e
    add [hl]
    ld a, [hl]
    rrca
    inc sp
    ld d, $19
    rra
    ld a, h
    ld l, a
    sbc h
    ld l, a
    sbc h
    ld h, e
    sbc h
    cp a
    ld b, b
    ld a, $41
    pop hl
    sbc a
    ld l, a
    sbc a
    ld e, c
    cp a
    ld b, [hl]
    cp c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [$2cc7]
    db $dd
    ld l, h
    sbc l
    ld e, h
    cp l
    ld e, b
    cp c
    ld e, b
    cp c
    ret c

    ccf
    add $39
    cp $01
    ld a, [$d907]
    ld h, $e1
    ld a, $bd

jr_001_66c4:
    ld a, [hl]
    or c
    ld a, [hl]
    adc l
    ld [hl], d
    db $fd
    ld [bc], a
    ei
    ld b, $bd
    ld a, [hl]
    cp l
    ld a, [hl]
    ld [hl], e
    di
    ld [hl], e
    di
    ld h, b
    db $fc
    ld e, b
    db $e4
    sbc d
    ld h, a
    ld a, [$e207]
    ld e, $6e
    sbc [hl]
    ld e, [hl]
    cp [hl]
    ld e, b
    cp b
    ld e, b

jr_001_66e6:
    cp b
    ld e, b
    cp b
    ret c

    jr c, jr_001_66c4

    jr c, jr_001_66e6

    ld c, b
    rst $38
    ld b, e
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld a, a
    rst $38
    nop
    pop hl
    ld b, b
    rst $38
    adc a
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
    nop
    db $fc
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
    rst $38
    rst $38
    nop

jr_001_671d:
    ld a, [hl]
    jr nz, jr_001_671d

    ret nz

    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld d, b
    cp $80
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
    nop
    ld a, l
    ld b, l
    ld a, l
    ld b, c
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ld [$dcc2], a
    ld [$11ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    adc $04
    adc $8c
    db $fc
    sbc b
    db $fc
    ld [$10f8], sp
    ld hl, sp+$10
    ldh a, [$e0]
    ldh a, [rP1]
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc b
    inc bc
    ld bc, $0101
    ld bc, $0000
    ld l, [hl]
    pop af
    ld l, [hl]
    pop af
    ld l, [hl]
    pop af
    ld h, c
    rst $28
    ld l, a
    rst $28
    rst $28
    rst $28
    rst $20
    rst $20
    ret nz

    ret nz

    ld [hl], l
    adc [hl]
    adc l
    cp $fd
    cp $fc
    rst $38
    cp c
    cp c
    add c
    add c
    ld bc, $0001
    nop
    ld sp, hl
    ld b, $f5
    ld c, $ed
    ld e, $1e
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ldh a, [$f0]
    nop
    nop
    ld hl, sp+$04
    ld hl, sp+$04
    or $0e
    or $0e
    ld c, $fe
    cp $fe
    db $fc
    db $fc
    ld a, b
    ld a, b
    dec e
    ld h, e
    inc bc
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    add $ff
    cp $ff
    cp a
    cp a
    sbc [hl]
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $01
    cp $01
    ld a, c
    add a
    add a

jr_001_67e4:
    rst $38
    rst $38
    rst $38
    ld a, a

jr_001_67e8:
    ld a, a
    ld a, $3e
    nop
    nop
    rst $38
    ld b, $8e
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    or $0f
    or $0f
    ld l, [hl]
    sbc a
    sbc [hl]
    rst $38
    cp $ff
    ld a, b
    ld a, b
    jr c, jr_001_6843

    nop
    nop
    ret c

    jr c, jr_001_67e8

    jr c, @-$26

    jr c, jr_001_67e4

    jr nc, jr_001_6846

    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$60]
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
    ldh [$e0], a
    db $fc
    inc e
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_6843:
    nop
    nop
    nop

jr_001_6846:
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
    ld a, b
    ld a, b
    db $fc
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
    rlca
    rlca
    ccf
    jr c, @+$01

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
    ld hl, sp-$08
    cp $06
    rst $38
    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_001_68a1

    ld a, $26
    ld a, a
    ld b, c
    rrca
    nop
    rrca
    rlca
    jr jr_001_68a2

    jr jr_001_68a4

    jr nc, jr_001_68b6

    jr nc, jr_001_68b8

    ld h, b
    add hl, sp
    ld h, e
    daa
    rst $38
    nop
    rst $38
    rst $38

jr_001_68a1:
    nop

jr_001_68a2:
    rst $38
    nop

jr_001_68a4:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ld l, b
    ld l, a
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_001_68b6:
    rst $38
    nop

jr_001_68b8:
    rst $38
    nop
    rst $28
    ld [$ffef], sp
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

jr_001_68c9:
    nop
    ld a, [hl]
    ld b, b
    ld a, a
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
    jr nz, jr_001_68c9

    db $fd
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
    ccf
    and b
    or b
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
    cp a
    nop
    ld bc, $0000
    ld bc, $0201
    inc bc
    dec b
    rlca
    ld c, $0e
    jr jr_001_6921

    ret nc

    ret nc

    cp h
    db $fc
    ld a, a
    ld a, a
    rst $38
    add b
    rst $38
    ld a, a
    add c
    add c
    ld b, $06
    jr jr_001_6931

    ld a, $20
    ld a, l
    ld b, b
    rst $38
    inc bc
    di
    db $ec

jr_001_6921:
    rst $18
    ccf
    ei
    db $fc
    db $fd
    ld [bc], a
    cp a
    nop
    ld [hl], a
    nop
    rlc b
    rrca
    inc c
    cp a
    or b

jr_001_6931:
    rst $38
    db $fc
    ei
    rlca
    adc $31
    sbc d
    ld h, h
    db $fd
    ld [bc], a
    ld l, l
    ld bc, $02fe
    cp $02
    ld e, $e2
    ld a, $c2
    ld a, [c]
    adc [hl]
    ld h, d
    sbc $24
    ld a, h
    inc d
    inc a
    add hl, de
    add hl, de
    rla
    rra
    dec e
    rra
    rrca
    rrca
    inc e
    inc d
    jr c, jr_001_6981

    jr c, jr_001_6993

    nop
    nop
    ld hl, sp+$78
    add b
    add b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    inc de
    daa
    inc a
    rlca
    ld b, $03
    inc bc
    rrca
    rrca
    pop af
    ldh a, [rIF]
    nop
    db $e3
    nop
    ld a, [$fc03]
    call nc, $ccf3
    db $fd
    ld a, [hl]

jr_001_6981:
    jp $feff


    ld h, c
    jp hl


    db $10
    rst $38
    nop
    xor [hl]
    ld bc, $104e
    add b
    add b
    ret nz

    ld b, b
    rst $08
    ld c, a

jr_001_6993:
    rst $38
    ldh a, [$bf]
    ld h, b

jr_001_6997:
    ld e, b
    scf
    jp hl


    ld e, $77
    adc h
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    ld hl, sp+$08
    ret z

    jr c, jr_001_69bc

    ldh a, [$cc]
    ld l, a
    ret nz

    ld h, c
    adc $6e
    ret z

    ld l, a
    ldh [rSTAT], a
    rst $08
    ld l, a
    ld [$e34d], a

jr_001_69bc:
    ld b, b
    ld c, b
    ld l, a
    ld c, b
    ld l, e
    ld b, d
    db $e3
    adc [hl]
    rst $38
    ld [bc], a
    dec b
    ld [hl], l
    or $a6
    dec d
    rst $08
    inc b
    jr jr_001_6997

    inc de
    rst $18
    db $10
    sbc e
    ld d, b
    dec e
    reti


    ld d, l
    ld d, l
    sbc c
    sbc c
    ld d, l
    db $dd
    ld de, $0c00
    ld sp, hl
    rst $38

jr_001_69e1:
    nop
    call c, $df11
    sbc b
    ld d, h
    ld d, l
    sbc e
    cp b
    inc d
    cp l
    ld hl, $1501
    di
    ld sp, hl
    dec b
    jr nc, jr_001_69e1

    rst $20
    jr z, jr_001_6a14

    db $f4
    ld [$112a], a
    xor e
    and d
    daa
    or a
    inc h
    or a
    inc h
    cp h
    ld h, c
    ccf
    ld [$5555], a
    xor b
    xor c
    sub l

jr_001_6a0b:
    cp h
    jr nz, jr_001_6a0b

    db $fd
    ld bc, $01fd
    inc bc
    cp [hl]

jr_001_6a14:
    cp a
    xor d
    dec [hl]
    ld bc, $be82
    ccf
    cp a
    jr nz, jr_001_6a29

    adc $0b
    adc $0b
    adc $0b
    adc $9b
    ld e, [hl]
    ld d, a
    sbc d

jr_001_6a29:
    sbc e
    ld d, [hl]
    rst $38
    ld [de], a
    db $f4
    db $fc
    inc a
    inc a
    ld [hl], c
    ld d, c
    ld [hl], c
    ld d, c
    ld d, c
    ld [hl], c
    ld sp, $0031
    nop
    nop
    nop
    ei
    sub b
    rst $38
    and b
    ld a, a
    push bc
    ld a, a
    ret


    rst $38
    adc d
    rst $38
    sub d
    rst $18
    or d
    sbc d
    rst $30
    rst $10
    ld b, l
    rst $38
    adc c
    rst $38
    ld d, e

jr_001_6a53:
    rst $38
    ld d, e
    rst $38
    and l
    rst $30
    xor l
    cp a
    db $fd
    rst $20
    db $fd
    ld l, $08
    ld c, h
    inc b
    rst $10
    ld [bc], a
    cp $43
    db $dd
    ld h, e
    push de
    ld l, e
    ld c, a
    rst $38
    ld b, c
    rst $38
    sub h
    sbc h
    xor $9a
    ld a, a
    ld c, c
    rst $20
    ld e, h
    ld c, l
    cp $2c
    rst $38
    ld a, $f7
    and [hl]
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
    ret nz

    ld b, b
    ld b, b
    ret nz

    add b
    add b
    cpl
    add hl, sp
    ld e, [hl]
    ld [hl], e
    ld d, [hl]
    ld a, e
    ld h, h
    ld a, a
    dec h
    ccf
    dec h
    ccf
    dec e
    rra
    dec b
    rlca
    ei
    jr z, @+$01

    ld d, c
    cp a
    jp nc, $e2bf

    cpl
    push af
    dec a
    rst $38
    ld h, l
    rst $38
    dec h
    rst $38
    db $eb
    jr nz, jr_001_6a53

    ld l, c
    ld a, b
    ret z

    db $ed
    ret c

    rst $38
    ld e, b
    rst $18
    ld [hl], h
    rst $18
    ld a, a
    call c, Call_001_7e77
    ld b, l
    ld a, [hl-]
    daa
    cp $a3
    db $fd
    sub e
    ld sp, hl
    ld d, a
    pop af
    ld e, [hl]
    ld d, e
    cp $d3
    cp $10
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ret nz

    ld b, b
    ldh [$a0], a
    ldh a, [$90]
    cp b
    ret z

    rst $08
    ld c, [hl]
    rst $28
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld a, a
    rst $38
    nop
    or a
    db $10
    ld a, e
    jr nz, @+$01

    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $18
    ld de, $10d8
    rst $38
    inc de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    cp l
    ld hl, $000c
    rst $38
    ld sp, hl
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    xor e
    ld a, [hl+]
    inc l
    jr z, @+$01

    jp hl


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ei
    ld hl, $0277
    rst $38
    call nz, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ccf
    jr nz, @-$3e

    ld b, b
    rst $38
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
    nop
    adc $04
    adc $0c
    db $fc
    sbc b
    db $fc
    ld [$10f8], sp
    ld hl, sp+$10
    ldh a, [$e0]
    ldh a, [rP1]
    sub d
    rst $38
    ld [hl], c
    ld a, a
    ld [$040f], sp
    rlca
    rlca
    rlca
    inc b
    rlca
    ld c, $09
    rra
    inc d
    ld e, l
    ld sp, hl
    ld l, h
    db $f4
    cp h
    ld hl, sp+$4c
    db $ec
    cp $dc
    ld e, [hl]
    call c, $dc56
    adc b
    call z, $bfee
    rst $30
    rra
    dec sp
    dec hl
    rrca
    cpl
    cpl
    rrca
    add hl, bc
    rrca
    rlca
    ld b, $07
    ld bc, $ff2a
    ld d, e
    rst $38
    cp [hl]
    ld [$a97f], a
    rst $38
    reti


    db $fd
    ld d, c
    db $ed
    or c
    xor [hl]
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
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $8001
    add b
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    and c
    and c
    and e
    and d
    and a
    and [hl]
    cp a
    ei
    ld l, e
    db $fc
    xor [hl]
    db $ec
    cp $dc
    sbc $5c
    sub h
    call c, $cc88
    or h
    jp nz, Jump_000_27fc

    xor a
    rra
    scf
    rra
    dec de
    dec hl
    cpl
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $07
    ld d, d
    rst $38
    call nc, Call_001_65ff
    rst $38
    xor e
    cp $75
    cp [hl]
    ei
    xor h
    cp e
    ld l, h
    di
    ld e, h
    sbc b
    add sp, -$70
    ldh a, [$a0]
    ldh [$c0], a
    ret nz

    add b
    add b
    ld b, b
    ld b, b
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
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    dec b
    ld a, [bc]
    ld a, [bc]
    ccf
    jr z, jr_001_6c9f

    ld e, b
    cp $b3
    sbc $53
    sbc l
    sub a
    cp e
    xor [hl]
    ld a, a
    ld c, l
    ld [hl], a
    ld e, l
    or d
    pop bc
    ld d, c
    ldh [$34], a
    ld hl, sp+$0d
    cp $f3
    rst $38
    pop bc
    ld a, a
    ld [c], a
    ld a, [hl]
    ld [hl], e
    ld e, [hl]
    ld b, $01
    dec c
    jp Jump_000_0f36


    call c, $fe3f
    rst $20
    add hl, sp
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    sbc $e0
    ld e, $e0
    rra
    ldh [$1f], a
    ldh [$0e], a
    ldh a, [$8c]
    ldh a, [rOBP1]
    ld a, [c]
    cpl
    ld a, [c]
    add b

jr_001_6c5e:
    add b
    add b

jr_001_6c60:
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_001_6c89

    jr nz, @+$22

    and b
    jr nz, jr_001_6c72

    inc b
    ld [$0808], sp

jr_001_6c72:
    ld [$0809], sp
    dec bc
    add hl, bc
    dec b
    inc b
    rlca
    rlca
    inc b
    rlca
    cp e
    sbc e
    db $fd
    ld d, l
    rst $38
    ld b, [hl]
    ei
    ld c, e
    rst $38
    adc h
    rst $38
    db $10

jr_001_6c89:
    di
    ldh a, [rNR13]
    ldh a, [$e0]
    ld b, e
    jp hl


    jr nc, jr_001_6c5e

    ld hl, sp-$3b
    ld a, [hl]
    rst $00
    ld a, a
    rst $00
    ld a, h
    call $c97c
    ld hl, sp+$07
    add b

jr_001_6c9f:
    ld c, $81
    dec de
    add a
    call c, $fc3f
    rst $28
    ei
    rrca
    ldh a, [$3f]

jr_001_6cab:
    ret nz

    rst $38
    ld [hl], e
    call c, $bce3
    ld b, e
    db $fc
    inc bc
    cp $07
    ld a, [$f907]
    db $ed
    pop af
    rra
    ld hl, sp-$60
    jr nz, jr_001_6c60

    jr nz, jr_001_6c72

    db $10
    sub b
    db $10
    db $10
    db $10
    ld e, b
    ld [$18d8], sp
    ret c

    sbc b
    rrca
    nop
    rrca
    rlca
    jr jr_001_6ce0

    add hl, de
    dec c
    ld sp, $301d
    inc e
    ld h, e
    dec sp
    ld h, [hl]

jr_001_6cdc:
    scf
    rst $38
    nop
    rst $38

jr_001_6ce0:
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    jr c, jr_001_6cab

    rst $38
    add b
    rst $38
    nop
    rst $28
    rst $38
    nop
    rst $38
    rst $38
    nop
    ei
    ld [bc], a
    ld a, e
    jp nz, $81fa

    ld sp, hl
    ld b, $f7
    ld [$ffef], sp
    nop
    rst $38
    rst $38
    nop
    db $fd
    inc bc
    ei
    ld b, $77
    ret nz

    pop af
    dec c
    db $ed
    add hl, bc
    db $ed
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
    cp a
    jr nz, jr_001_6cdc

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
    rst $38
    nop
    rst $38
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $0a
    ld a, [bc]
    inc e
    inc d
    inc e
    inc d
    add hl, sp
    add hl, hl
    add hl, sp
    add hl, hl
    dec sp
    ld a, [hl+]
    ld a, e
    ld c, d
    ld [hl], e
    ld d, e
    rst $18
    sbc l
    xor a
    cp e
    cp d
    or e
    ld [hl], d
    inc hl
    and $42
    add $84
    adc h
    add h
    adc h
    ld [$2f7b], sp
    inc a
    cpl
    cp a
    sub a
    ld c, l
    bit 3, c
    rst $10
    ccf
    ld e, $6f
    ld [hl+], a
    rst $18
    ld b, d
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ld hl, sp-$10
    pop bc
    ld bc, $7c7d
    ld b, h
    ld a, h
    inc de
    db $fd
    ld a, e
    db $fd
    rst $38
    and l
    ld l, l
    ld b, [hl]
    call $9f86
    ld a, [bc]
    ld [hl-], a
    inc sp
    inc bc
    ld bc, $10d0
    ret nc

    db $10
    ret nc

    db $10
    add sp, -$78
    add sp, -$78
    add sp, -$78
    ld hl, sp+$48
    db $fc
    ld b, h
    rrca
    rrca
    ld [$0808], sp
    ld [$0808], sp
    inc c
    ld [$0c08], sp
    dec b
    ld b, $03
    inc bc
    dec de
    ld hl, sp-$05
    add sp, $1f
    ld [$090f], sp
    rrca
    add hl, bc
    rrca
    ld a, [bc]

jr_001_6db9:
    rra
    rra
    ei
    rst $30
    rst $28
    cp e
    db $fc
    sbc a
    ei
    rst $28
    rst $20
    cp h
    ld [hl], a
    rst $18
    db $fc
    adc b
    db $fd
    add hl, bc
    db $fd
    add hl, bc
    nop
    rst $38
    rra
    rst $38
    db $fc
    add sp, -$07
    jr nc, jr_001_6db9

    pop bc
    rlca
    ld [bc], a
    rst $38
    or $17
    ld a, [c]
    rrca
    ld hl, sp-$03
    cp $f5
    ld h, [hl]
    add $83
    add [hl]
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    call nc, $d494
    sub h
    db $ec
    adc h
    ld [$6a4a], a
    jp z, $ca6a

jr_001_6df9:
    ld l, l
    call $cd6f
    call nz, $c077
    ld a, b
    jp $c07f


    ld a, a
    ld [$d555], a
    ld l, d
    ld [$ff55], a
    ld b, b
    nop
    rst $28
    nop
    jr nc, jr_001_6df9

    rst $38
    nop
    rst $38
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    rst $38
    nop
    ld [$60af], sp
    ld [hl], b
    rst $00
    rst $38
    nop
    xor $aa
    ld b, h
    ld bc, $ed82
    ld l, l
    db $ed
    ld bc, $dd19
    db $10
    ld e, [hl]
    sub b
    rst $38
    nop
    cp a
    xor d
    sub h
    ld d, l
    ld l, c
    ld l, e
    ld d, e
    cp b
    jr nz, jr_001_6e5e

    cp a
    ld h, b
    ld a, a
    ret nz

    rst $38
    nop
    rst $38
    xor d
    ld d, c
    jp nc, $a7aa

    ld d, a
    rst $30
    inc b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor e
    xor d
    ld a, [hl+]
    rrca
    dec bc
    cp d
    or l
    cp a
    jr nz, jr_001_6e5e

jr_001_6e5e:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    dec b
    db $dd
    jp c, Jump_000_35ba

    rlca
    nop
    inc bc
    cp $03
    cp $03
    cp $03
    ld a, $2b
    ld [hl], $37
    ld a, [hl+]
    dec hl
    ld [hl], $7f
    ld h, d
    nop
    nop
    nop
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
    rlca
    ld [hl], e
    ld d, d
    db $76
    ld d, h
    inc [hl]
    inc [hl]
    inc c
    ld [$181c], sp
    and $fc
    inc de
    ld e, $c9
    adc a
    add hl, bc
    ld [$1119], sp
    dec e
    add hl, bc
    ccf
    dec b
    ccf
    ld [bc], a
    ld a, a
    inc bc
    rst $38
    ld b, $ff
    inc e
    sbc $82
    ld [hl-], a
    ld c, [hl]
    adc [hl]
    ld [hl], d
    cp [hl]
    ld c, h
    db $fc
    or b
    ldh a, [$e0]
    rra
    rst $38
    nop
    rst $38
    ld bc, $0301
    ld bc, $0103
    rlca
    ld bc, $010f
    ccf
    rlca
    ld sp, hl
    rst $38
    ld de, $01ff
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
    add c
    nop
    ld a, h
    call nz, $c4fc
    cp h
    call nz, Call_001_44fc
    call c, Call_001_7c64
    inc h
    ld l, h
    inc [hl]
    ld a, h
    inc d
    ld a, d
    ld d, a
    ld a, [hl]
    ld d, a
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, l
    ccf
    ld a, [hl+]
    dec e
    dec de
    rrca
    add hl, bc
    rlca
    rlca
    db $f4
    inc c
    call z, Call_000_3c34
    ret z

    ld hl, sp+$30
    ldh [$c0], a
    ld hl, sp-$08
    rst $00
    cp a
    ret nz

    ccf
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0103
    inc bc
    nop
    rlca
    nop
    ccf
    ld c, $f3
    pop af
    ld [$81f8], sp
    nop
    ldh [rP1], a
    ld hl, sp+$30
    ret nz

    ret nz

    ret nz

    add b
    db $e4
    ldh [$9c], a
    ldh a, [$dd]
    ld [hl], b
    rst $28
    call $cdff
    rst $38
    call Call_001_4afb
    ld a, e
    ld a, [hl+]
    ei
    ld a, [hl+]
    ei
    ld a, [hl+]
    ei
    ld c, d
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
    add b
    add b
    rst $38
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
    ld b, b
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    db $dd
    ld de, $11dd
    db $dd
    ld de, $23b3
    rst $38
    inc h
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    or [hl]
    ld h, $f6
    inc b
    xor $0c
    rst $28
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    sub $84
    push de
    sub l
    push de
    sub l
    ld a, [hl-]
    ld a, [hl-]
    rst $38
    ld h, d
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ld a, $20
    sbc l
    add c
    xor a
    inc hl
    ld a, a
    ld d, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ei
    ld hl, sp-$65
    add d
    ld h, a
    ld h, [hl]
    adc a
    adc h
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ld a, [hl]
    ld b, h
    ld a, [hl]
    ld b, h
    db $fc
    ld c, b
    ld a, h
    ld [$50f8], sp

jr_001_6fc7:
    ld hl, sp+$10
    ldh a, [$e0]
    ldh a, [rP1]
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
    dec c
    rlca
    sbc $86
    ld e, b
    ld e, b
    ld h, e
    ld h, e
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    push af
    db $fc
    add hl, hl
    jr c, jr_001_6fc7

    ldh a, [$2e]
    push hl
    ld e, d
    ret


    cp d
    adc c
    ld d, l
    inc sp
    sub l
    ld [hl], e
    inc bc
    rst $38
    nop

Call_001_7000:
    rst $38
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
    sub b
    ld l, a
    ldh a, [rIE]
    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld bc, $81ff
    ld a, a
    ld h, b
    cp a
    add c
    add b
    pop bc
    add b
    pop hl
    ret nz

    or e
    ldh [$bf], a
    pop af
    rra
    ld sp, hl
    rla
    db $fd
    xor e
    rst $28
    db $f4
    inc e
    ld hl, sp-$58
    ld hl, sp+$68
    sub b
    ldh a, [$39]
    jp hl


    ld a, a
    add $47
    jp $80c1


    nop
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
    ld bc, $0000
    nop
    nop
    dec b
    rlca
    ld c, $0a
    dec a
    inc [hl]
    db $db
    ret


    ld d, [hl]
    ld [hl-], a
    xor [hl]
    ld h, d
    push de
    call z, $9ca5
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    add b
    ld a, a
    add b
    ld a, a
    and b
    ld e, a
    ld h, b
    rst $18
    ld h, d
    db $dd
    ld hl, sp-$08
    ld a, [bc]
    ld hl, sp+$0a
    ld a, [$fa0a]
    dec b
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    inc c
    rst $30
    ld c, a
    ld a, b
    ld l, a
    jr c, jr_001_7111

    inc sp
    xor $3e
    push bc
    ld a, l
    add l
    db $fd
    ld c, c
    ld sp, hl
    ld a, [hl-]
    ei
    ei
    ld c, d
    ei
    xor d
    ei
    xor d
    di
    or d
    ld [hl], a
    push de
    ld [hl], a
    push de
    ld h, a
    push hl
    add [hl]
    add [hl]
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
    dec b
    inc b
    ld [bc], a
    inc bc
    ld bc, $0001

jr_001_70c4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    and $2a
    and $55
    call z, $ccd5
    and h
    sbc l
    ld l, d
    ld a, c
    ld a, [de]
    add hl, de
    ld c, $0f
    sub b
    ld l, a
    sbc b
    ld [hl], a
    db $10
    rst $30
    inc d
    di
    inc c
    ei
    ld a, [bc]
    ld sp, hl
    ld a, [bc]
    ld sp, hl
    dec b
    db $fc
    ld d, b
    sbc a
    ld d, b
    sbc a
    jr z, @-$2f

    jr z, jr_001_70c4

    dec d
    rst $20
    ld d, $e6
    inc c
    db $fc
    db $fc
    db $f4
    ld c, h
    call z, $e020
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
    ld e, h
    ld e, b
    cpl
    daa

jr_001_7111:
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
    nop
    nop
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
    ld c, d
    add hl, sp
    adc d
    ld sp, hl
    ld d, l
    ld [hl], e
    dec [hl]
    inc sp
    add hl, hl
    daa
    ld a, [de]
    ld e, $06
    ld b, $03
    inc bc
    and d
    sbc l
    and e
    sbc [hl]
    ld b, d
    ld a, $42
    ld a, $03
    ld a, [hl]
    add c
    ld a, a
    add c
    ld a, a
    add c
    rst $38
    inc c
    rst $30
    ld a, [bc]
    di
    ld a, [bc]
    di
    ld [bc], a
    ei
    add l
    ld a, c
    dec b
    ld a, c
    ld [bc], a
    ld a, [hl]
    ld a, [hl]
    ld a, $23
    db $e3
    db $10
    ldh a, [$08]
    ld hl, sp+$10
    ldh a, [$60]
    ldh [$80], a
    add b
    nop
    nop
    nop
    nop
    rrca
    nop
    rrca
    rlca
    jr jr_001_7192

    jr jr_001_7194

    jr nc, @+$21

    jr nc, jr_001_71a8

    ld h, b
    ccf
    ld h, b
    ld sp, $00ff
    rst $38
    rst $38
    nop

jr_001_7192:
    rst $38
    nop

jr_001_7194:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld bc, $01fd
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop

jr_001_71a8:
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    cp $04
    ld e, $04
    ld c, $02
    add [hl]
    ld [bc], a
    add a
    add d
    add a
    add c
    jp $fc81


    inc b
    inc e
    inc b
    inc e
    inc b
    inc c
    inc b
    inc c
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $02
    rst $38
    rst $38
    rst $38
    add c
    rst $08
    add c
    rst $00
    add c
    ld b, e
    ld b, c
    ld b, e
    ld b, b
    ld h, e
    ld b, b
    ld h, c
    ld b, b
    cp $c2
    ld c, $02
    ld c, $02
    ld b, $02
    rlca
    ld bc, $8183
    add e
    add c
    add e
    add c
    adc $66
    ret c

    ld c, [hl]
    ret nc

    ld a, [hl]
    pop bc
    ld a, h
    db $eb
    ld d, c
    rst $10
    ld h, d
    xor $45
    sbc $48
    ld bc, $81fd
    db $fd
    add c
    db $fd
    add d
    ld hl, sp-$56
    ld d, d
    ld d, e
    xor d
    and [hl]
    ld d, e
    rst $30
    inc b
    nop
    db $fc
    inc bc
    pop bc
    ld e, $fe
    ld bc, $d5fc
    xor c
    add hl, hl
    ld d, l
    ld d, l
    ld l, c
    cp [hl]
    nop
    nop
    inc c
    ld a, c
    ld a, a
    ret nz

    ld d, a
    sub b
    sub $aa
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    rst $38
    nop
    ld b, e
    ld b, c
    ld b, e
    ld b, c
    ld b, e
    ld b, b
    ld h, c
    ld b, b
    ld hl, $3320
    ld hl, $3e3f
    ld b, c
    ld b, b
    ld [bc], a
    ld [bc], a
    add d
    ld [bc], a
    add e
    add c
    add c
    add c
    pop bc
    add c
    jp $e741


    ld b, d
    rst $38
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
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ld h, c
    ld b, b
    ld hl, $3120
    jr nz, jr_001_7294

    jr nz, jr_001_7296

    jr nz, jr_001_7299

    jr nz, jr_001_72a9

    ccf
    ld h, b
    ld b, b
    pop bc
    add c
    pop bc
    ret nz

    pop hl
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    and c
    and b
    di
    ld h, c
    rst $38
    ld a, [hl]
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
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    pop bc
    ld b, b
    rst $38
    ld e, a
    rst $38
    ld b, b
    rst $38

jr_001_7294:
    ld b, b
    rst $38

jr_001_7296:
    ld b, b
    rst $38
    ld b, b

jr_001_7299:
    rst $38
    ld a, a
    rst $38
    nop
    rst $28
    add h
    sbc a
    ld [$30ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_001_72a9:
    rst $38
    rst $38
    rst $38
    nop
    rst $18
    nop
    rst $28
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ld e, $00
    db $fd
    ld [hl], b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    inc bc
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
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, e
    ld b, b
    ccf
    inc hl
    call c, $eff7
    xor a
    rst $38
    or d
    rst $38
    db $e3
    rst $38
    ld e, [hl]
    pop hl
    and b
    and c
    and b
    ld [hl], c
    ldh [$5f], a
    db $dd
    db $d3
    sbc $ff
    ld a, a
    rst $38
    cp c
    rst $38
    ld a, c
    cp a
    cp $e0
    ld h, b
    and b
    ldh [$60], a
    ldh [$f0], a
    sub b
    ldh a, [$90]
    rst $38
    ld a, a
    rst $38
    xor a
    rst $28
    rst $28
    nop
    nop
    nop

jr_001_7320:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
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
    ldh [$e0], a
    ld h, e
    ld b, b
    ccf

jr_001_7340:
    jr nz, jr_001_7320

    rst $30
    rst $28
    xor a
    rst $38
    or d
    rst $38
    db $e3
    rst $38
    ld e, [hl]
    pop hl
    and b
    pop hl
    ld h, b
    or c
    and b
    ld e, a
    db $dd
    db $d3
    sbc $ff
    ld a, a
    rst $38
    cp c
    rst $38
    ld a, c
    cp a
    cp $e0
    jr nz, jr_001_7340

    ld h, b
    ldh [$e0], a
    ldh a, [$90]
    ldh a, [$90]
    rst $38
    ld a, a
    rst $38
    xor a
    rst $28
    rst $28
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0001
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
    ld a, a
    ld a, a
    rrca
    rrca
    nop
    nop
    rst $38
    cp $fd
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rst $08
    ld c, a
    pop af
    rst $38
    add a
    ld a, a
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
    ccf
    ei
    db $fc
    db $fc
    ei
    rst $38
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rra
    rst $20
    cp a
    rst $00
    rst $38
    adc a
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
    db $fc
    db $fc
    add b
    add b
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld e, l
    ld sp, hl
    ld l, h
    db $f4
    cp h
    ret nz

    ld b, b
    ldh [$f8], a
    db $fc
    ld a, [hl]
    call c, $dc56
    adc b
    call z, $bfe2
    db $fd
    rra
    ld [de], a
    ld bc, $070b
    cpl
    rra
    dec e
    rrca
    rlca
    ld b, $07
    ld bc, $f95d
    ld l, h
    db $f4
    cp h
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, d
    ret nz

    ld b, [hl]
    call nz, $d89c
    ld [c], a
    cp a
    db $fd
    rra
    ld c, $01
    ld bc, $0000
    ld bc, $1019
    rra
    ld c, $07
    ld bc, $0102
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    nop
    inc d
    dec d
    ld d, $17
    jr jr_001_7478

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_001_7488

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    daa
    jr z, jr_001_7499

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_001_74a9

jr_001_7478:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_001_74b9

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_7488:
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    dec sp
    inc a
    dec a
    nop
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h

jr_001_7499:
    ld b, l
    ld b, [hl]
    ld b, a
    ld [$0000], sp
    nop
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    nop
    nop
    nop
    nop

jr_001_74a9:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    nop
    nop
    nop
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_001_74b9:
    ld h, b
    nop
    nop
    nop
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    nop
    nop
    nop
    nop
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
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    nop
    nop
    nop
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc d
    adc e
    nop
    nop
    nop
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
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
    sbc a
    nop
    nop
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    nop
    nop
    nop
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, RST_00

    ret nc

    pop de
    adc d
    adc d
    dec b
    ld b, $07
    ld [$0000], sp
    nop
    nop
    jp nc, $d4d3

    nop
    nop
    nop

jr_001_7547:
    nop
    nop
    rst $10
    ret c

    reti


    jp c, $1918

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    db $db
    call c, $00dd
    nop
    nop
    nop
    pop hl
    ld [c], a
    db $e3
    db $e4
    dec hl
    inc l
    dec l
    ld l, $00
    nop
    nop
    push hl
    and $e7
    add sp, -$17
    ld [$00eb], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    dec bc
    rlca
    inc d
    inc c
    jr jr_001_75aa

    jr z, @+$1a

    ld d, b
    jr nc, jr_001_7547

    ld h, b
    rst $38
    nop

jr_001_75aa:
    nop
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
    rst $38
    nop
    ld bc, $fdfe
    cp $05
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $a0
    ld h, b
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
    and b
    ld h, b
    and b
    ld h, b
    inc de
    db $76
    ld l, $76
    inc de
    db $76
    ld hl, sp+$75
    ld hl, sp+$75
    ld hl, sp+$75
    ld hl, sp+$75
    ld hl, sp+$75
    ld hl, sp+$75
    ld hl, sp+$75
    ld hl, sp+$75
    ld hl, sp+$75
    ld hl, sp+$75
    ld hl, sp+$75
    ld hl, sp+$75
    ld hl, sp+$75
    jr jr_001_7600

    inc b
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_001_7600:
    nop
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    nop
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    jr jr_001_761b

    inc b
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_001_761b:
    nop
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    nop
    ld l, [hl]
    rst $30
    ld hl, sp+$71
    ld [hl], d
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    jr jr_001_7636

    inc b
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_001_7636:
    nop
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    nop
    ld l, [hl]
    ld sp, hl
    ld a, [$7271]
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld d, h
    rlca
    inc c
    nop
    ld a, $3f
    ld b, b
    nop
    nop
    nop
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    nop
    nop
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    nop
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    nop
    ld a, a
    add b
    add c
    add d
    add e
    add h
    nop
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    nop
    nop
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $cbc3

    call z, $cecd
    rst $08
    nop
    nop
    nop
    nop
    push de
    sub $00
    nop
    nop
    nop
    nop
    sbc $df
    ldh [rP1], a
    nop
    push hl
    and $ec
    db $ed
    xor $ea
    db $eb
    ld [$0003], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor a
    ld [$cf0b], a
    ld [$cf0c], a
    ld a, $e4
    ld [$cf1b], a
    ld [$cf1c], a
    ld [$cf1d], a
    ld a, [$cf2f]
    ld hl, $778d
    and a
    call nz, Call_000_0f3a
    ld a, $09
    ld hl, $5908
    call switch_bank_and_call
    ld hl, $6292 ; source
    ld de, $8000 ; dest
    ld bc, $0130 ; count
    call memcpy
    ld a, $0a
    ld hl, $7aa4
    call switch_bank_and_call
    ld de, $77db
    ld hl, $9800
    call copy_tile_map_20x18
    ld a, [$cf29]
    ldh [$a6], a
    ld b, a
    and a
    jr z, jr_001_771d

jr_001_7704:
    push bc
    ld a, b
    dec a
    add a
    add $6b
    ld l, a
    ld a, $79
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $7977
    call Call_000_0683
    pop bc
    dec b
    jr nz, jr_001_7704

jr_001_771d:
    xor a
    ldh [$9f], a
    ldh [$a0], a
    ldh [$a2], a
    call Call_001_7762
    ld a, $c3
    call set_pal_and_lcd_control
    ld b, $64

jr_001_772e:
    push bc
    call Call_000_047e
    call Call_000_0369
    call Call_000_055e
    ldh a, [$a2]
    inc a
    ldh [$a2], a
    and $07
    jr nz, jr_001_7751

    ld b, $e4
    ldh a, [$a2]
    and $08
    jr nz, jr_001_774b

    ld b, $90

jr_001_774b:
    ld a, b
    ld [$cf1c], a
    ldh [rOBP0], a

jr_001_7751:
    pop bc
    ldh a, [$8c]
    and $09
    jr nz, jr_001_775b

    dec b
    jr nz, jr_001_772e

jr_001_775b:
    call Call_000_03b4
    call Call_000_05e9
    ret


Call_001_7762:
    ldh a, [$a6]
    add a
    add $cd
    ld l, a
    ld a, $77
    adc $00
    ld h, a
    ld a, [hl+]
    ldh [$a1], a
    ld b, [hl]
    ld c, $0c
    ld hl, $779d
    ld de, $c100

jr_001_7779:
    ldh a, [$a1]
    add [hl]
    inc hl
    ld [de], a
    inc de
    ld a, [hl+]
    add b
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_001_7779

    ret


    ld d, c
    nop
    nop
    ld b, $00
    ld [bc], a
    nop
    ld bc, $c900
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    db $10
    db $10
    jr nz, jr_001_77ea

    jr @+$13

    nop
    ld c, b
    jr nz, jr_001_77b9

    nop
    ld c, b
    jr z, jr_001_77bc

    nop
    ld d, b
    db $10
    ld [de], a
    nop
    ld d, b
    jr z, jr_001_77c6

    jr nz, @+$5a

    db $10
    ld [de], a
    nop

jr_001_77b9:
    ld e, b
    jr z, jr_001_77ce

jr_001_77bc:
    jr nz, @+$62

    db $10
    db $10
    ld h, b
    ld h, b
    jr jr_001_77d5

    ld b, b
    ld h, b

jr_001_77c6:
    jr nz, jr_001_77d9

    ld b, b
    ld h, b
    jr z, jr_001_77dc

    ld b, b
    nop

jr_001_77ce:
    nop
    nop
    jr nz, jr_001_77d2

jr_001_77d2:
    ld b, b
    nop
    ld h, b

jr_001_77d5:
    jr nz, jr_001_77df

    jr nz, jr_001_7809

jr_001_77d9:
    jr nz, jr_001_7833

    nop

jr_001_77dc:
    nop
    nop
    nop

jr_001_77df:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_77ea:
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
    ld [$0009], sp
    nop
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

jr_001_7809:
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

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
    nop
    dec de
    inc e
    dec e
    ld e, $1f

jr_001_7833:
    jr nz, jr_001_7856

    ld [hl+], a
    inc hl
    inc h
    dec h
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
    nop
    daa
    jr z, jr_001_7873

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_001_7852

jr_001_7852:
    nop
    nop
    nop
    nop

jr_001_7856:
    nop
    nop
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_001_789d

    nop
    nop
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

jr_001_7873:
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    xor a
    or b
    or c
    or d

jr_001_789d:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    nop
    nop
    nop
    ld a, a
    add b
    add c
    add d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    cp a
    ret nz

    pop bc
    jp nz, $8483

    add l
    add [hl]
    nop
    nop
    nop
    nop
    adc a
    sub b
    sub c
    sub d
    adc e
    adc h
    adc l
    adc [hl]
    rst $08
    ret nc

    pop de
    jp nc, $9493

    sub l
    sub [hl]
    nop
    nop
    nop
    nop
    sbc a
    and b
    and c
    and d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    rst $18
    ldh [$e1], a
    ld [c], a
    and e
    and h
    and l
    and [hl]
    nop
    nop
    nop
    nop
    nop
    xor e
    xor h
    xor l
    xor [hl]
    nop
    or e
    or h
    or l
    or [hl]
    nop
    and a
    xor b
    xor c
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    cp e
    cp h
    cp l
    cp [hl]
    nop
    jp $c5c4


    add $00
    or a
    cp b
    cp c
    cp d
    nop
    nop
    nop
    nop
    nop
    nop
    set 1, h
    call $00ce
    db $d3
    call nc, $d6d5
    nop
    rst $00
    ret z

    ret


    jp z, RST_00

    nop
    nop
    nop
    nop
    db $db
    call c, $dedd
    nop
    db $e3
    db $e4
    push hl
    and $00
    rst $10
    ret c

    reti


    jp c, RST_00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc c
    ld h, $99
    ld a, [hl+]
    sbc c
    ld l, $99
    and e
    sbc c
    xor b
    sbc c
    inc b
    inc b
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_001_7c64:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_001_7e77:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
