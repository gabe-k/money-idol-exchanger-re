; Disassembly of "money_idol_exchanger.gb"
; This file was created with:
; mgbdis v2.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    rst $38

Jump_000_0001:
    rst $38

Call_000_0002:
    rst $38

Jump_000_0003:
    rst $38

Jump_000_0004:
    rst $38
    rst $38
    rst $38
    rst $38

RST_08::
    rst $38
    rst $38

Jump_000_000a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_000f:
    rst $38

RST_10::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_18::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_001f:
    rst $38

RST_20::
    rst $38
    rst $38

Call_000_0022:
    rst $38

Call_000_0023:
    rst $38

Jump_000_0024:
    rst $38
    rst $38
    rst $38
    rst $38

RST_28::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_30::
    rst $38
    rst $38

Jump_000_0032:
    rst $38

Jump_000_0033:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_38::
    rst $38
    rst $38

Call_000_003a:
    rst $38
    rst $38

Jump_000_003c:
    rst $38

Jump_000_003d:
    rst $38
    rst $38
    rst $38

VBlankInterrupt::
    push af
    push bc
    push de
    push hl
    jp Jump_000_028c


    rst $38

LCDCInterrupt::
    reti


    rst $38
    rst $38
    rst $38

Call_000_004c:
    rst $38
    rst $38
    rst $38
    rst $38

TimerOverflowInterrupt::
    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SerialTransferCompleteInterrupt::
    push af
    push hl
    ld hl, $cf28
    jp Jump_000_007d


JoypadTransitionInterrupt::
    reti


switch_bank_and_call:
    ldh [$b0], a
    ldh a, [CURRENT_BANK]
    push af
    ldh a, [$b0]
    ldh [CURRENT_BANK], a
    ld [$2000], a
    call jump_to_hl
    pop af
    ldh [CURRENT_BANK], a
    ld [$2000], a
    ret


Jump_000_0077:
    ldh [$af], a
    ld [$2000], a

jump_to_hl:
    jp hl


Jump_000_007d:
    ldh a, [rSB]
    ld [$cf12], a
    ld a, [$cf13]
    ldh [rSB], a

Call_000_0087:
    ld a, $80
    ldh [rSC], a
    ld a, [$cf15]
    inc a
    ld [$cf15], a
    pop hl
    pop af
    reti


Call_000_0095:
    xor a
    ldh [rIF], a
    ld a, $0b
    ldh [rIE], a
    xor a
    ldh [rSC], a
    ld [$cf12], a
    ld [$cf15], a
    ld [$cf16], a
    ld a, $88
    ldh [rSB], a
    ld [$cf13], a
    ld a, $80
    ldh [rSC], a
    ret


    dec b
    jr jr_000_00ba

    ld b, $27
    inc bc

jr_000_00ba:
    jr nc, jr_000_00bc

jr_000_00bc:
    dec b
    jr jr_000_00c2

    dec b
    inc hl
    inc bc

Jump_000_00c2:
jr_000_00c2:
    nop

Jump_000_00c3:
    nop

Call_000_00c4:
    dec b
    jr jr_000_00ca

    inc b
    add hl, de

Jump_000_00c9:
    ld [bc], a

Jump_000_00ca:
jr_000_00ca:
    ld b, b
    nop
    dec b
    jr jr_000_00d2

    inc bc
    dec d

Call_000_00d1:
    ld [bc], a

jr_000_00d2:
    jr nz, jr_000_00d4

jr_000_00d4:
    dec b
    jr jr_000_00da

    ld [bc], a
    ld [de], a
    ld [bc], a

jr_000_00da:
    nop
    nop

DS 36, $FF


Boot::
    nop
    jp start


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "EXCHANGER GB", $00, $00, $00, $00

HeaderNewLicenseeCode::
    db $45, $37

HeaderSGBFlag::
    db $03

HeaderCartridgeType::
    db $01

HeaderROMSize::
    db $03

HeaderRAMSize::
    db $00

HeaderDestinationCode::
    db $00

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $f3

HeaderGlobalChecksum::
    db $07, $25

start:
    ld sp, $dfff            ; set the initial stack pointer
    call Call_000_05ec      ; set up interrupt registers
    call copy_dma_function_to_high_ram
    ld d, $00
    ld hl, $c000
    ld bc, $1f7f
    call memset             ; zero out RAM
    ld d, $00
    ld hl, $ff8a
    ld bc, $007f
    call memset             ; zero out high RAM
    call Call_000_07db
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ldh [$8b], a
    ldh [rTAC], a
    ld a, $01
    ldh [rDIV], a
    xor a
    ldh [rIF], a
    ld a, $03
    ldh [rIE], a
    ldh [$94], a
    xor a
    ldh [rSC], a
    ld a, $40
    ldh [rSTAT], a
    ld a, $5f
    ldh [rLYC], a
    ld a, $80
    ldh [rLCDC], a
    ei

Jump_000_019a:
    ld bc, $2000

jr_000_019d:
    dec bc
    ld a, b
    or c
    jr nz, jr_000_019d

    xor a
    ld [$cf2f], a
    call Call_000_0f70

Jump_000_01a9:
    jp nc, Jump_000_0246

    ld a, $ff
    ld [$cf2f], a
    call Call_000_1022
    ld hl, $1240
    call Call_000_0f3a
    call Call_000_102b
    ld hl, $1050
    call Call_000_0f3a
    call Call_000_102b
    ld hl, $1060
    call Call_000_0f3a
    call Call_000_102b
    ld hl, $1070
    call Call_000_0f3a
    call Call_000_102b
    ld hl, $1080
    call Call_000_0f3a
    call Call_000_102b
    ld hl, $1090
    call Call_000_0f3a
    call Call_000_102b
    ld hl, $10a0
    call Call_000_0f3a
    call Call_000_102b

Call_000_01f3:
    ld hl, $10b0
    call Call_000_0f3a
    call Call_000_102b
    ld hl, $10c0

Jump_000_01ff:
    call Call_000_0f3a
    call Call_000_102b

Call_000_0205:
    ld hl, $1270
    ld de, $1180
    call Call_000_0fe5
    call Call_000_102b
    ld a, $0c
    ld hl, $4000
    call switch_bank_and_call
    ld hl, $1230
    call Call_000_0f3a
    call Call_000_102b
    ld hl, $1170
    call Call_000_0f3a
    ld a, $80
    ldh [rLCDC], a
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a

Call_000_0231:
    ldh [rOBP1], a

Call_000_0233:
    ld bc, $1800
    ld hl, $8000

jr_000_0239:
    ld [hl+], a
    xor a
    dec bc
    ld a, b
    or c

Jump_000_023e:
    jr nz, jr_000_0239

    ld hl, $1260
    call Call_000_0f3a

Jump_000_0246:
    ld a, $07
    ldh [rWX], a
    call Call_000_047e
    xor a
    ldh [$8a], a
    ld a, $ff
    ldh [$c4], a
    ldh [$c5], a
    xor a
    ld [$cf21], a
    ld a, $02
    ldh [$b4], a
    ld a, $01
    ldh [$b5], a
    ld a, $01
    ld [$cf20], a
    ld a, $20
    ld [$cf5d], a
    ld hl, $00b4
    ld de, $cf30
    ld b, $28

jr_000_0274:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_0274

Jump_000_027a:
    ld sp, $dfff
    ld a, $01
    ldh [$af], a

Jump_000_0281:
    ld [$2000], a

Jump_000_0284:
    ld a, $00
    call Call_000_063d
    jp $4000


Jump_000_028c:
    ldh a, [$96]
    or a
    jr z, jr_000_0297

    call DMA_COPY_HIGH_RAM
    xor a
    ldh [$96], a

jr_000_0297:
    ldh a, [$b3]
    and a
    jr nz, jr_000_02af

    ld hl, $d101
    ld a, [hl]
    or a
    jr z, jr_000_02af

    ld c, a
    xor a
    ld [hl+], a

jr_000_02a6:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld [de], a
    dec c
    jr nz, jr_000_02a6

jr_000_02af:
    ldh a, [$95]
    or a
    jr z, jr_000_02d1

    ld a, [$cf01]
    ld l, a
    ld a, [$cf02]
    ld h, a
    ld a, [$cf03]
    ld e, a
    ld a, [$cf04]
    ld d, a
    ld a, [$cf00]
    ld c, a

jr_000_02c8:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_02c8

    xor a
    ldh [$95], a

jr_000_02d1:
    ldh a, [$bd]
    or a
    jr z, jr_000_02ee

    ldh a, [$bf]
    ld l, a
    ldh a, [$c0]
    ld h, a
    ldh a, [$c1]
    ld e, a
    ldh a, [$c2]
    ld d, a
    ldh a, [$c3]
    ld b, a

jr_000_02e5:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_02e5

    xor a
    ldh [$bd], a

jr_000_02ee:
    ldh a, [$be]

Jump_000_02f0:
    or a
    jr z, jr_000_0316

    ld hl, $c790
    ldh a, [$b1]
    ld e, a
    ldh a, [$b2]
    ld d, a
    ld c, $02

Call_000_02fe:
jr_000_02fe:
    ld b, $0e

Jump_000_0300:
jr_000_0300:
    ld a, [hl+]
    ld [de], a
    inc de

Jump_000_0303:
    dec b
    jr nz, jr_000_0300

    inc hl
    inc hl
    ld a, e

Call_000_0309:
    add $12
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec c
    jr nz, jr_000_02fe

    xor a
    ldh [$be], a

jr_000_0316:
    ld a, [$cf1e]
    or a
    jr z, jr_000_0321

    ld a, [$cf1f]
    ldh [rBGP], a

jr_000_0321:
    call Call_000_04a7
    ld a, [$cf0b]
    ldh [rSCY], a
    ld a, [$cf0c]
    ldh [rSCX], a
    ld hl, $cf06
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    ld hl, $ff92
    inc [hl]
    ld a, [$cf05]

Call_000_033f:
    or a
    ld a, $0f
    ld [$2000], a
    call z, Call_000_08ce
    ldh a, [$af]
    ld [$2000], a
    ld a, [$cf0a]
    or a
    jr nz, jr_000_0364

    ld a, [$cf08]
    dec a
    cp $ff
    jr nz, jr_000_0361

    ld hl, $cf09
    dec [hl]
    ld a, $3b

jr_000_0361:
    ld [$cf08], a

jr_000_0364:
    pop hl
    pop de
    pop bc
    pop af
    reti


Call_000_0369:
    xor a
    ldh [$92], a
    push hl
    call Call_000_0396
    ld hl, $c252
    inc [hl]
    inc hl
    dec [hl]
    pop hl
    db $76
    db $76
    ret


    db $76
    db $76
    db $76
    db $76
    db $76
    db $76

Jump_000_0380:
    db $76
    db $76
    ret


Call_000_0383:
jr_000_0383:
    push bc
    call Call_000_0369
    call Call_000_047e
    call Call_000_055e
    ldh a, [$8c]
    pop bc
    and c
    ret nz

    dec b
    jr nz, jr_000_0383

    ret


Call_000_0396:
    ld hl, $cf24
    inc [hl]
    ld a, [hl]
    cp $32
    jr c, jr_000_03b3

    xor a
    ld [hl], a
    inc l
    ld a, [hl]
    add $01
    daa
    ld [hl], a
    cp $60
    jr c, jr_000_03b3

    xor a
    ld [hl], a
    inc l
    ld a, [hl]
    add $01
    daa
    ld [hl], a

jr_000_03b3:
    ret


Call_000_03b4:
    ld d, $05

Jump_000_03b6:
jr_000_03b6:
    call Call_000_0369
    call Call_000_0369
    ldh a, [rBGP]
    ld b, a
    call Call_000_0465
    ld a, b
    ldh [rBGP], a
    ldh a, [rOBP0]
    ld b, a
    call Call_000_0465
    ld a, b
    ldh [rOBP0], a
    ldh a, [rOBP1]
    ld b, a
    call Call_000_0465
    ldh [rOBP1], a
    dec d
    jr nz, jr_000_03b6

    ret


Call_000_03da:
    ldh [rLCDC], a
    ei
    call Call_000_0369
    call Call_000_0369
    ld a, [$cf1b]
    ld b, a
    call Call_000_045f
    ld a, b
    ldh [rBGP], a
    ld a, [$cf1c]
    ld b, a
    call Call_000_045f
    ld a, b
    ldh [rOBP0], a
    ld a, [$cf1d]
    ld b, a
    call Call_000_045f
    ld a, b
    ldh [rOBP1], a
    call Call_000_0369

Call_000_0404:
    call Call_000_0369

Call_000_0407:
    ld a, [$cf1b]
    ld b, a
    call Call_000_0462
    ld a, b
    ldh [rBGP], a
    ld a, [$cf1c]
    ld b, a
    call Call_000_0462
    ld a, b
    ldh [rOBP0], a
    ld a, [$cf1d]
    ld b, a
    call Call_000_0462

Call_000_0422:
Jump_000_0422:
    ld a, b
    ldh [rOBP1], a
    call Call_000_0369
    call Call_000_0369
    ld a, [$cf1b]
    ld b, a
    call Call_000_0465
    ld a, b
    ldh [rBGP], a
    ld a, [$cf1c]
    ld b, a
    call Call_000_0465
    ld a, b
    ldh [rOBP0], a

Jump_000_043f:
    ld a, [$cf1d]
    ld b, a
    call Call_000_0465
    ld a, b
    ldh [rOBP1], a
    call Call_000_0369
    call Call_000_0369
    ld a, [$cf1b]
    ldh [rBGP], a
    ld a, [$cf1c]
    ldh [rOBP0], a
    ld a, [$cf1d]
    ldh [rOBP1], a
    ret


Call_000_045f:
    call Call_000_0465

Call_000_0462:
    call Call_000_0465

Call_000_0465:
    ld c, $04

jr_000_0467:
    ld a, b
    call Call_000_0479
    res 0, b
    res 1, b
    or b
    ld b, a
    rrc b
    rrc b
    dec c
    jr nz, jr_000_0467

    ret


Call_000_0479:
    and $03
    ret z

    dec a
    ret


Call_000_047e:
Jump_000_047e:
    push af
    push bc
    push de
    push hl

Jump_000_0482:
    ld hl, $c100
    ld de, $c000
    ld bc, $f0f8

jr_000_048b:
    ld a, [hl+]

Call_000_048c:
    sub b
    ld [de], a
    inc e
    ld a, [hl+]
    sub c
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, e
    cp $a0
    jr nz, jr_000_048b

    ld a, $01
    ldh [$96], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_04a7:
    push de
    ld a, [$cf0d]
    ld e, a
    ld a, [$cf0e]
    ld d, a
    inc de
    ldh a, [rLY]
    or a
    jr z, jr_000_04c8

    xor a
    sla e
    rl d
    adc e
    ld e, a
    ld a, [$cf06]
    call Call_000_0665
    ldh a, [$8b]
    call Call_000_0665

jr_000_04c8:
    ld a, e
    ld [$cf0d], a
    ld a, d
    ld [$cf0e], a
    ld a, e
    pop de
    ret


memset:
memset_start:
    ld a, d
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, memset_start

    ret


Call_000_04db:
jr_000_04db:
    ld a, d
    ld [hl+], a
    dec c
    jr nz, jr_000_04db

    ret


Call_000_04e1:
    ld d, $00
    ld hl, $fe00
    ld c, $a0
    call Call_000_04db
    ld d, $00
    ld hl, $c000
    ld bc, $00a0

Call_000_04f3:
    call Call_000_04db
    ld d, $f0
    ld hl, $c100

Jump_000_04fb:
    ld bc, $00a0

Call_000_04fe:
    call Call_000_04db
    ret


Call_000_0502:
    ld c, $12

Call_000_0504:
jr_000_0504:
    ld b, $14

jr_000_0506:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_0506

    push de
    ld de, $000c
    add hl, de
    pop de
    dec c
    jr nz, jr_000_0504

    ret


    ldh a, [$95]
    or a
    jr nz, jr_000_0535

    ld a, c
    ld [$cf00], a
    ld a, l
    ld [$cf01], a
    ld a, h
    ld [$cf02], a
    ld a, e
    ld [$cf03], a
    ld a, d
    ld [$cf04], a
    ld a, $01
    ldh [$95], a
    scf
    ret


jr_000_0535:
    or a
    ret


    push hl
    ldh a, [$95]
    or a
    jr nz, jr_000_055b

    ld a, [hl+]
    or a
    jr z, jr_000_0554

    ld [$cf00], a
    ld a, [hl+]
    ld [$cf01], a
    ld a, [hl+]
    ld [$cf02], a
    ld a, [hl+]
    ld [$cf03], a
    ld a, [hl+]
    ld [$cf04], a

jr_000_0554:
    ld a, $01
    ldh [$95], a
    pop hl
    scf
    ret


jr_000_055b:
    pop hl
    or a
    ret


Call_000_055e:
    push af
    push bc
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ld c, a
    ldh a, [$8b]
    xor c
    and c
    ldh [$8c], a
    ld a, c
    ldh [$8b], a
    and $0f
    cp $0f
    jp z, Jump_000_027a

    ld a, [$c252]
    add c
    ld [$c252], a
    ld a, $30
    ldh [rP1], a
    pop bc
    pop af
    ret


Call_000_05a1:
    ld a, [$cf23]
    ld c, a
    ldh a, [$8b]
    ld [$cf23], a
    cp c
    jr z, jr_000_05b2

    xor a
    ld [$cf22], a
    ret


jr_000_05b2:
    ld hl, $cf22
    inc [hl]
    ld a, [hl]
    cp $3c
    jr c, jr_000_05c2

    ld a, $34
    ld [hl], a
    ldh a, [$8b]
    ldh [$8c], a

jr_000_05c2:
    ret


copy_dma_function_to_high_ram:
    ld c, DMA_COPY_HIGH_RAM_LOW ; destination: 0xff80
    ld b, $0a                   ; length: 10 bytes
    ld hl, dma_to_ram           ; source: 0x05d1

copy_dma_function_to_high_ram_loop:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, copy_dma_function_to_high_ram_loop

    ret

dma_to_ram:
    ld a, $c0                   ; RAM base (0xC000)
    ldh [rDMA], a
    ld a, $28                   ; spin for 40 cycles (160 ms)

dma_to_ram_loop:
    dec a
    jr nz, dma_to_ram_loop

    ret


Jump_000_05db:
    add a
    pop hl
    push de
    ld e, a
    ld d, $00
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    push de
    pop hl
    pop de
    jp hl


Call_000_05e9:
    call Call_000_03b4

Call_000_05ec:
    ld a, $01
    ld [$cf05], a
    xor a
    ldh [rIF], a
    ldh a, [rIE]
    ldh [$94], a
    res 0, a
    ldh [rIE], a

jr_000_05fc:
    ldh a, [rLY]
    cp $91
    jr c, jr_000_05fc

    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a
    xor a
    ldh [rIF], a
    ldh a, [$94]
    ldh [rIE], a
    xor a
    ld [$cf05], a
    ret


    ld a, $01
    ld [$cf05], a
    xor a
    ldh [rIF], a
    ldh a, [rIE]
    ldh [$94], a
    res 0, a
    ldh [rIE], a
    ld a, $83
    ldh [rLCDC], a
    xor a
    ldh [rIF], a
    ldh a, [$94]
    ldh [rIE], a
    xor a
    ld [$cf05], a
    ret


; memcpy params:
;     hl: source
;     de: destination
;     bc: count
memcpy:
memcpy_start:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, memcpy_start

    ret


Call_000_063d:
    push af
    ld a, $0f
    ld [$2000], a
    ld a, [$cf18]
    or a
    jr nz, jr_000_0653

    pop af
    call Call_000_085a
    ldh a, [$af]
    ld [$2000], a
    ret


jr_000_0653:
    ldh a, [$af]
    ld [$2000], a
    pop af
    ret


    jp Jump_000_05db


Call_000_065d:
    add a

Call_000_065e:
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ret


Call_000_0665:
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ret


    add a
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ret


Call_000_0674:
    ld b, $00

jr_000_0676:
    sub $0a
    jr c, jr_000_067d

    inc b
    jr jr_000_0676

jr_000_067d:
    add $0a
    swap b
    or b
    ret


Call_000_0683:
Jump_000_0683:
    ld a, [hl+]
    ldh [$97], a
    ld b, a

Call_000_0687:
    ld a, $20
    sub b
    ldh [$98], a
    ld c, [hl]
    inc hl

jr_000_068e:
    ldh a, [$97]
    ld b, a

jr_000_0691:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_0691

    push hl
    ldh a, [$98]
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    pop hl
    dec c
    jr nz, jr_000_068e

    ret


Call_000_06a5:
    ld a, [hl+]
    ldh [$99], a
    ld a, [hl+]
    ldh [$97], a
    ld b, a
    ld a, $20
    sub b
    ldh [$98], a
    ld a, [hl+]
    ld c, a
    push de
    ld de, $d102
    ld a, $ff
    ldh [$b3], a
    ld a, e
    ldh [$9d], a
    ld a, d
    ldh [$9e], a
    pop de

jr_000_06c2:
    ldh a, [$97]
    ld b, a

jr_000_06c5:
    ld a, [hl+]
    push hl
    push af
    ldh a, [$9d]

Jump_000_06ca:
    ld l, a
    ldh a, [$9e]
    ld h, a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    pop af
    ld [hl+], a
    ld a, l
    ldh [$9d], a
    ld a, h
    ldh [$9e], a
    pop hl
    inc de
    dec b
    jr nz, jr_000_06c5

    push hl
    ldh a, [$98]
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    pop hl
    dec c
    jr nz, jr_000_06c2

    ldh a, [$99]
    ld [$d101], a
    xor a
    ldh [$b3], a
    ret


Call_000_06f5:
Jump_000_06f5:
    ld a, c
    ldh [$99], a

Jump_000_06f8:
    ld a, [hl+]
    ldh [$97], a

Call_000_06fb:
    ld b, a
    ld a, $20
    sub b
    ldh [$98], a
    ld a, [hl+]
    ld c, a
    push hl

Jump_000_0704:
    ld a, $ff
    ldh [$b3], a
    ld hl, $d101

Call_000_070b:
    ld a, [hl+]
    ld b, a
    add a
    add b
    add l
    ldh [$9d], a
    ld a, h
    adc $00
    ldh [$9e], a
    pop hl

jr_000_0718:
    ldh a, [$97]
    ld b, a

jr_000_071b:
    ld a, [hl+]
    push hl
    push af
    ldh a, [$9d]
    ld l, a
    ldh a, [$9e]
    ld h, a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    pop af
    ld [hl+], a
    ld a, l
    ldh [$9d], a
    ld a, h
    ldh [$9e], a
    pop hl
    inc de
    dec b
    jr nz, jr_000_071b

    push hl
    ldh a, [$98]
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    pop hl
    dec c
    jr nz, jr_000_0718

    ldh a, [$99]
    ld b, a
    ld a, [$d101]
    add b
    ld [$d101], a
    xor a
    ldh [$b3], a
    ret


Call_000_0750:
    ldh [$99], a
    ld b, a
    push hl
    ld a, $ff
    ldh [$b3], a
    ld hl, $d101
    ld a, [hl+]
    ld c, a
    add a
    add c
    add l
    ldh [$9d], a
    pop hl

jr_000_0763:
    ld c, [hl]
    inc hl
    push hl
    ldh a, [$9d]
    ld l, a
    ld h, $d1
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], c
    inc l
    ld a, l
    ldh [$9d], a
    pop hl
    inc de
    dec b
    jr nz, jr_000_0763

    ldh a, [$99]
    ld b, a
    ld a, [$d101]
    add b
    ld [$d101], a
    xor a
    ldh [$b3], a
    ret


Call_000_0787:
    ldh [$99], a
    ld b, a
    push hl
    ld a, $ff
    ldh [$b3], a
    ld hl, $d101
    ld a, [hl+]
    ld c, a
    add a
    add c
    add l
    ldh [$9d], a
    pop hl

jr_000_079a:
    ld c, [hl]
    inc hl
    push hl
    ldh a, [$9d]
    ld l, a
    ld h, $d1
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], c
    inc l
    ld a, l
    ldh [$9d], a
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h
    pop hl
    dec b
    jr nz, jr_000_079a

    ldh a, [$99]
    ld b, a
    ld a, [$d101]
    add b
    ld [$d101], a
    xor a
    ldh [$b3], a
    ret


Call_000_07c3:
    ld bc, $0400

jr_000_07c6:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_07c6

    ret


Call_000_07ce:
Jump_000_07ce:
    push bc
    ld b, a
    ldh a, [$c5]
    and a
    jr z, jr_000_07d9

    ld a, b
    ld [$de02], a

jr_000_07d9:
    pop bc
    ret


Call_000_07db:
    call Call_000_0846
    xor a
    ld b, $d0
    ld hl, $de02

jr_000_07e4:
    ld [hl+], a
    dec b
    jr nz, jr_000_07e4

    ld hl, $0ddf
    ld de, $dead
    ld b, $0c

jr_000_07f0:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_07f0

    ld a, $40
    ld [$de14], a

Jump_000_07fb:
    call Call_000_0a9e
    ld [$de15], a
    ld [$de0d], a
    ld [$de0e], a
    ld [$de0f], a
    ld a, $77
    ldh [rNR50], a
    ld a, $8f

Jump_000_0810:
    ldh [rNR52], a
    ld a, $80
    ldh [rNR30], a
    xor a
    ld [$de0b], a
    ld [$de11], a
    ld [$de02], a
    ld [$de13], a
    ld [$de0c], a
    ldh [rNR51], a
    ret


Jump_000_0829:
    ld a, [$de0b]
    and $0e
    ld [$de0b], a
    ret


Call_000_0832:
    ld a, $10

Call_000_0834:
    ld [$de0b], a
    ld a, $00
    ldh [rNR51], a
    xor a
    ld [$de11], a
    ld [$de13], a
    ld [$de0c], a
    ret


Call_000_0846:
    xor a
    ldh [rNR30], a
    ld hl, $0e99
    ld bc, $1030

jr_000_084f:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_084f

    ld a, $80
    ldh [rNR30], a
    ret


Call_000_085a:
    ld b, a
    ldh a, [$c4]
    and a
    ret z

    ld a, b
    ld hl, $0ea9
    add l
    ld l, a
    jr nc, jr_000_0868

    inc h

jr_000_0868:
    ld a, [hl+]
    ld [$de00], a
    ld a, [hl]
    ld [$de01], a
    jp Jump_000_0879


    call Call_000_07db
    jp Jump_000_08b0


Jump_000_0879:
    call Call_000_07db
    ld a, $03

jr_000_087e:
    ld [$de09], a
    ld e, a
    ld d, $00
    ld a, $ff
    ld hl, $de62
    add hl, de
    ld [hl], a
    xor a
    ld l, $16
    add hl, de
    ld [hl], a
    ld l, $1e
    add hl, de
    ld [hl], a
    ld l, $3a
    add hl, de
    ld [hl], a
    ld l, $22
    add hl, de
    ld [hl], a
    ld l, $4a
    add hl, de
    xor a
    ld [hl], a
    ld a, [$de09]
    dec a
    bit 7, a
    jr z, jr_000_087e

    xor a
    ld [$de0d], a
    call Call_000_0a6f

Call_000_08b0:
Jump_000_08b0:
    ld a, $ff
    ldh [rNR51], a
    ld [$de0b], a
    call Call_000_0846

jr_000_08ba:
    ret


    ld a, $ff
    ldh [rNR51], a
    ld a, $f0
    ld [$de0b], a
    xor a
    ldh [rNR12], a
    ldh [rNR22], a
    ldh [rNR32], a
    ldh [rNR42], a
    ret


Call_000_08ce:
    ld a, [$de0b]
    and a
    jr z, jr_000_08ba

    call Call_000_0904
    ld a, [$de0b]
    srl a
    jr nc, jr_000_0903

    ld a, [$de14]
    ld b, a
    ld a, [$de15]
    add b
    ld b, a
    and $3f
    ld [$de15], a
    ld a, b
    rl a
    rl a
    rl a
    and $07
    ld [$de12], a
    jr z, jr_000_0903

jr_000_08fa:
    call Call_000_09dc
    ld hl, $de12
    dec [hl]
    jr nz, jr_000_08fa

jr_000_0903:
    ret


Call_000_0904:
    ld a, [$de02]
    and a
    jr z, jr_000_0956

    ld hl, $de13
    cp [hl]
    jr c, jr_000_0952

    ld [hl], a
    add $c3
    ld l, a
    ld a, $0e
    adc $00
    ld h, a
    ld a, [hl+]
    ld b, a
    add $d8
    ld e, a
    ld a, $0d
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, [$de11]
    or c
    ld [$de11], a
    ld a, [$de0c]
    or c
    ld [$de0c], a
    ld a, b
    add a
    add a
    add $8d
    ld e, a
    ld d, $de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, b
    cp $06
    jr z, jr_000_0952

    xor a
    ld [$de3e], a
    ld [$de26], a
    ld [$de2e], a
    ld [$de56], a

jr_000_0952:
    xor a
    ld [$de02], a

jr_000_0956:
    ld a, [$de13]
    and a
    jp z, Jump_000_09db

    xor a
    ld [$de06], a
    ld a, [$de0f]
    push af
    ld a, $88
    ld [$de10], a
    ld a, $07
    ld [$de0a], a

jr_000_096f:
    ld a, [$de10]
    ld c, a
    ld a, [$de11]
    and c
    jr z, jr_000_09cd

    xor a
    ld [$de0f], a
    ld a, [$de0a]
    ld e, a
    and $03
    ld [$de09], a
    add a
    add a
    ld [$de08], a
    ld d, $00
    ld hl, $de3a
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_000_0998

    dec [hl]
    jr nz, jr_000_09cd

jr_000_0998:
    ld a, [$de08]
    add a
    add $8d
    ld l, a
    ld h, $de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_0ac7
    ld a, [$de0f]
    and a
    jr z, jr_000_09cd

    ld a, [$de08]
    srl a
    add $ad
    ld l, a
    ld h, $de
    ld c, [hl]
    xor a
    ld [c], a
    ld a, [$de0f]
    ld b, a
    ld a, [$de11]
    xor b
    ld [$de11], a
    jr nz, jr_000_09cd

    ld [$de13], a
    jp Jump_000_09d7


jr_000_09cd:
    ld hl, $de0a
    dec [hl]
    ld l, $10
    srl [hl]
    jr nc, jr_000_096f

Jump_000_09d7:
    pop af
    ld [$de0f], a

Jump_000_09db:
    ret


Call_000_09dc:
    ld a, [$de0f]

Jump_000_09df:
    ld b, a
    ld a, [$de0e]
    or b
    ld b, a
    ld a, [$de0d]
    or b
    ld [$de07], a
    ld a, $03
    ld [$de09], a
    ld [$de0a], a
    ld a, $88

jr_000_09f6:
    ld [$de10], a
    ld b, a
    ld a, [$de07]
    and b

Jump_000_09fe:
    jr nz, jr_000_0a40

    ld a, [$de11]
    and b
    ld [$de06], a
    ld a, [$de09]
    add a
    add a
    ld [$de08], a
    ld a, [$de09]
    ld e, a
    ld d, $00
    ld hl, $de2a
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_000_0a21

    dec [hl]
    call z, Call_000_0bef

jr_000_0a21:
    ld hl, $de3a
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_000_0a2c

    dec [hl]
    jr nz, jr_000_0a40

jr_000_0a2c:
    ld a, [$de06]
    jr nz, jr_000_0a3d

    ld a, [$de10]
    cpl
    ld b, a
    ld a, [$de0c]
    and b
    ld [$de0c], a

jr_000_0a3d:
    call Call_000_0ab1

jr_000_0a40:
    ld a, [$de10]
    srl a
    ld hl, $de0a
    dec [hl]
    dec hl
    dec [hl]
    bit 7, [hl]
    jr z, jr_000_09f6

    ld a, [$de0d]
    cp $ff
    jp z, Jump_000_0829

    ld b, a
    ld a, [$de0e]
    or b
    cp $ff
    jr z, jr_000_0a6f

    ld b, a
    ld a, [$de0f]
    or b
    cp $ff
    ret nz

    xor a
    ld [$de0f], a
    jp Jump_000_09df


Call_000_0a6f:
jr_000_0a6f:
    ld b, $10
    ld hl, $de32
    xor a

jr_000_0a75:
    ld [hl+], a
    dec b
    jr nz, jr_000_0a75

    ld a, [$de0d]
    ld c, a
    xor a
    ld [$de0e], a
    ld a, [$de00]
    ld l, a
    ld a, [$de01]
    ld h, a
    ld de, $de6d
    ld b, $04

jr_000_0a8e:
    srl c
    jr c, jr_000_0aa9

    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, e
    add $07
    ld e, a

jr_000_0a9b:
    dec b
    jr nz, jr_000_0a8e

Call_000_0a9e:
    xor a
    ld [$de6a], a
    ld [$de6b], a
    ld [$de6c], a
    ret


jr_000_0aa9:
    inc hl
    inc hl
    ld a, e
    add $08
    ld e, a
    jr jr_000_0a9b

Call_000_0ab1:
    ld a, [$de0a]
    ld e, a
    ld d, $00
    ld hl, $de16
    add hl, de
    ld a, [$de08]
    or [hl]
    add a
    ld e, a
    ld l, $6d
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Call_000_0ac7:
jr_000_0ac7:
    ld a, [hl+]
    cp $12
    jr c, jr_000_0ae9

    call Call_000_0bcd
    jr c, jr_000_0ac7

Call_000_0ad1:
    push hl
    ld a, [$de0a]
    ld e, a
    ld d, $00
    ld hl, $de16
    add hl, de
    add a
    add a
    or [hl]
    add a
    ld e, a
    ld l, $6d
    add hl, de
    pop bc
    ld [hl], c
    inc hl
    ld [hl], b
    ret


jr_000_0ae9:
    push af
    call Call_000_0ad1
    ld d, $00
    ld a, [$de0a]
    ld e, a
    ld hl, $de22
    add hl, de
    ld a, [hl]
    ld l, $2a
    add hl, de
    ld [hl], a
    ld l, $32

Jump_000_0afe:
    add hl, de
    ld a, [hl]
    ld l, $3a
    add hl, de
    ld [hl], a
    ld [$de03], a
    pop bc
    ld a, [$de06]
    and a
    ret nz

    ld a, [$de10]
    bit 7, a
    jr nz, jr_000_0b80

    ld a, e
    cp $04
    jr nc, jr_000_0b20

    ld hl, $de6a
    add hl, de
    ld a, b
    add [hl]
    ld b, a

jr_000_0b20:
    ld a, b
    add a
    ld c, a
    ld b, d
    ld hl, $0df3
    add hl, bc
    push hl
    ld hl, $de42
    add hl, de
    ld c, [hl]
    ld hl, $0deb
    add hl, bc
    ld c, [hl]
    pop hl
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [$de10]
    bit 6, a
    jr nz, jr_000_0b9b

    ld a, [$de09]
    add $b1
    ld l, a
    ld h, $de
    ld a, c
    ld c, [hl]
    ld [c], a
    ld a, [$de0a]
    add $62
    ld l, a
    ld h, $de
    ld a, [$de09]
    ld e, a
    ld a, [hl]
    ld hl, $0ddf
    add hl, de
    ld c, [hl]
    ld [c], a
    ld a, [$de09]
    and a
    jr nz, jr_000_0b72

    ld hl, $de52
    ld a, [$de0a]
    and a
    jp z, Jump_000_0b6f

    ld l, $56

Jump_000_0b6f:
    ld a, [hl]
    ldh [rNR10], a

jr_000_0b72:
    ld a, [$de09]
    add $b5
    ld l, a
    ld h, $de
    ld c, [hl]
    ld a, b
    set 7, a
    ld [c], a
    ret


jr_000_0b80:
    ld a, b
    add a
    add a
    add a
    add a
    ldh [rNR43], a
    ld a, [$de0a]
    add $4a
    ld l, a
    ld h, $de
    ld a, [hl]
    ldh [rNR42], a
    ld a, $01
    ldh [rNR41], a
    ld a, $c0
    ldh [rNR44], a
    ret


jr_000_0b9b:
    ld a, $8b
    ldh [rNR52], a
    ld a, c
    ldh [rNR33], a
    ld hl, $de4a
    add hl, de
    ld a, [hl]
    add a
    ldh [rNR31], a
    xor a
    ldh [rNR32], a
    ld a, b
    or $80
    ldh [rNR34], a
    ld a, $20
    ldh [rNR32], a
    ld a, $8f
    ldh [rNR52], a
    ret


jr_000_0bbb:
    sub $28
    ld c, a
    push hl
    ld hl, $de32
    ld a, [$de0a]
    ld e, a
    ld d, $00
    add hl, de
    ld [hl], c
    pop hl
    scf
    ret


Call_000_0bcd:
    cp $28
    jr nc, jr_000_0bbb

    push hl
    add a
    add $88
    ld l, a
    ld a, $0d
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, [$de0a]
    ld e, a
    ld d, $00
    ld hl, $de32
    add hl, de
    ld a, [hl]
    ld hl, $de3a
    add hl, de
    ld [hl], a

Call_000_0bef:
    ld d, $00
    ld a, [$de06]
    and a
    jr nz, jr_000_0c25

    ld a, [$de09]
    add $ad
    ld l, a
    ld h, $de
    ld c, [hl]

Jump_000_0c00:
    ld a, $00
    ld [c], a
    ld a, [$de09]
    cp $02

Call_000_0c08:
    jr z, jr_000_0c16

    ld e, a
    ld hl, $deb5
    add hl, de
    ld c, [hl]
    ld a, $80
    ld [c], a
    pop hl
    and a
    ret


jr_000_0c16:
    ld a, $8b
    ldh [rNR52], a
    xor a
    ldh [rNR32], a
    ld a, $80
    ldh [rNR34], a
    ld a, $8f
    ldh [rNR52], a

jr_000_0c25:
    pop hl
    and a
    ret


    pop hl
    ld a, [hl+]
    ld [$de14], a
    xor a
    ld [$de15], a
    scf
    ret


    ld a, [$de0a]
    ld c, a
    add $4a
    ld e, a
    ld d, $de
    ld a, c
    cp $02

Call_000_0c3f:
Jump_000_0c3f:
    pop hl
    ld a, [hl+]
    jr c, jr_000_0c46

    ld [de], a
    scf
    ret


jr_000_0c46:
    push hl
    bit 0, c
    ld hl, $ff11
    jr z, jr_000_0c50

    ld l, $16

jr_000_0c50:
    ld [hl], a
    pop hl
    scf
    ret


    ld a, [$de0a]
    add $52
    ld e, a
    ld d, $de
    ld a, [$de10]
    pop hl
    ld a, [hl+]
    ld [de], a
    scf
    ret


    pop hl
    ld a, [hl+]
    ldh [rNR51], a
    scf
    ret


    ld a, [$de0a]
    add $42
    ld e, a
    ld d, $de
    pop hl
    ld a, [hl+]
    ld [de], a
    scf
    ret


    ld a, [$de0a]
    add $42
    ld l, a
    ld h, $de
    inc [hl]
    pop hl
    scf
    ret


    ld a, [$de0a]

Call_000_0c86:
    add $42
    ld l, a
    ld h, $de
    dec [hl]
    pop hl
    scf
    ret


    pop hl
    ld a, [$de0a]
    add $62
    ld e, a
    ld d, $de
    ld a, [hl+]
    ld [de], a
    scf
    ret


    ld a, [$de09]
    add $16
    ld l, a
    ld h, $de
    ld b, [hl]
    inc [hl]
    ld a, [$de08]
    add b
    add a
    add $6d
    ld e, a
    ld d, $de
    pop hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld l, c
    ld h, b
    scf
    ret


    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$de09]
    cp $02
    jr nz, jr_000_0cce

    push hl
    call Call_000_0846
    pop hl

jr_000_0cce:
    scf
    ret


    pop hl
    ld a, [$de09]
    add $16
    ld l, a
    ld h, $de
    dec [hl]
    ld a, [$de08]
    add [hl]
    add a
    ld e, a
    ld d, $00
    ld hl, $de6d
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    scf
    ret


    ld a, [$de09]
    add $1e
    ld e, a
    ld d, $de
    pop hl

Call_000_0cf4:
    ld a, [hl+]
    ld [de], a
    push hl
    ld a, [$de09]
    add $16
    ld l, a
    ld h, $de

Jump_000_0cff:
    ld b, [hl]
    inc [hl]
    ld a, [$de08]
    add b
    add a
    add $6d
    ld e, a
    ld d, $de
    pop hl
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    scf
    ret


    ld a, [$de09]
    add $1e
    ld l, a
    ld h, $de
    dec [hl]
    jr z, jr_000_0d38

    ld a, [$de09]
    add $16
    ld l, a
    ld h, $de
    ld b, [hl]
    dec b
    ld a, [$de08]
    add b
    add a
    add $6d
    ld l, a
    ld h, $de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    scf
    ret


jr_000_0d38:
    ld a, [$de09]
    add $16
    ld l, a
    ld h, $de
    dec [hl]
    pop hl
    scf
    ret


    ld a, [$de09]
    add $ad
    ld l, a
    ld h, $de
    ld c, [hl]
    xor a
    ld [c], a
    pop hl
    ld a, [$de10]
    ld b, a
    ld a, [$de0d]
    or b
    ld [$de0d], a
    and a
    ret


    ld a, [$de10]
    ld b, a
    ld a, [$de0e]
    or b
    ld [$de0e], a
    pop hl
    and a
    ret


    ld a, [$de10]
    ld b, a
    ld a, [$de0f]
    or b
    ld [$de0f], a
    pop hl
    and a
    ret


    pop hl
    ld a, [hl+]
    ld [de], a
    scf
    ret


    ld a, [$de0a]
    add $22
    ld e, a

Call_000_0d84:
    ld d, $de
    pop hl
    ld a, [hl+]
    ld [de], a
    scf
    ret


    ld a, [$de09]
    add $6a
    ld e, a
    ld d, $de
    pop hl
    ld a, [hl+]
    ld [de], a
    scf
    ret


    pop hl
    inc hl
    inc hl
    scf
    ret


    pop hl
    inc hl
    scf
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
    rst $18
    dec bc
    ld l, d
    inc c
    ld [hl], a
    inc c
    add e
    inc c
    sbc h
    inc c
    ret nc

    inc c
    db $eb
    inc c
    inc de
    dec c
    ld l, e
    dec c
    ld e, l
    dec c
    ld b, h
    dec c
    inc sp
    inc c
    ld d, h
    inc c
    adc a
    inc c
    jr z, jr_000_0dd6

    ld a, c
    dec c
    sbc l
    dec c
    ld a, [hl]
    dec c
    adc e
    dec c
    cp [hl]
    inc c
    ld h, h
    inc c

jr_000_0dd6:
    sbc b
    dec c
    ld de, $2200
    nop
    ld b, h
    nop
    adc b
    ld [de], a
    rla
    inc e
    ld hl, $1813
    dec e
    ld [hl+], a
    inc d
    add hl, de
    ld e, $23
    nop
    jr jr_000_0e1e

    ld c, b
    ld h, b
    ld a, b
    sub b
    xor b
    inc l
    nop
    sbc l
    nop
    rlca
    ld bc, $016b
    ret


    ld bc, $0223
    ld [hl], a
    ld [bc], a
    rst $00
    ld [bc], a
    ld [de], a
    inc bc
    ld e, b
    inc bc
    sbc e
    inc bc
    jp c, Jump_000_1603

    inc b
    ld c, [hl]
    inc b
    add e
    inc b
    or l
    inc b
    push hl
    inc b
    ld de, $3b05
    dec b
    ld h, e
    dec b
    adc c
    dec b
    xor h

jr_000_0e1e:
    dec b
    adc $05
    db $ed
    dec b
    dec bc
    ld b, $27
    ld b, $42
    ld b, $5b
    ld b, $72
    ld b, $89
    ld b, $9e
    ld b, $b2
    ld b, $c4
    ld b, $d6
    ld b, $e7
    ld b, $f7
    ld b, $06
    rlca
    inc d
    rlca
    ld hl, $2d07
    rlca
    add hl, sp
    rlca
    ld b, h
    rlca
    ld c, a
    rlca
    ld e, c
    rlca
    ld h, d
    rlca
    ld l, e
    rlca
    ld [hl], e
    rlca
    ld a, e
    rlca
    add e
    rlca
    adc d
    rlca
    sub b
    rlca
    sub a
    rlca
    sbc l
    rlca
    and d
    rlca
    and a
    rlca
    xor h
    rlca
    or c
    rlca
    or [hl]
    rlca
    cp d
    rlca
    cp [hl]
    rlca
    pop bc
    rlca
    push bc
    rlca
    ret z

    rlca
    rlc a
    adc $07
    pop de
    rlca
    call nc, $d607
    rlca
    reti


    rlca
    db $db
    rlca
    db $dd
    rlca
    rst $18
    rlca
    pop hl
    rlca
    ld [c], a
    rlca
    db $e4
    rlca
    and $07
    rst $20
    rlca
    jp hl


    rlca
    ld [$eb07], a
    rlca
    db $ec
    rlca
    db $ed
    rlca
    xor $07
    nop
    ld de, $3322
    ld b, h
    ld d, l
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, h
    ld sp, $bd10
    ld c, $a1
    ld e, d
    xor a
    ld e, l
    ld b, e
    ld h, b
    xor e
    ld h, b
    ld l, [hl]
    ld h, a
    ld a, e
    ld l, l
    ld a, a
    ld [hl], h
    push de
    ld a, e
    or c
    ld a, a
    push bc
    ld c, $c5
    ld c, $c5
    ld c, $c5
    ld c, $1c
    nop
    sbc $0e
    nop
    rst $20
    ld c, $06
    or $0e
    nop
    db $fd
    ld c, $00
    dec bc
    rrca
    nop
    jr jr_000_0ee7

    ld b, $23
    rrca
    nop
    ld a, [hl+]
    rrca
    rra
    rst $38
    dec e
    add b
    inc de
    inc b
    dec hl
    dec bc
    ld a, [de]

jr_000_0ee7:
    rra
    rst $38
    dec e
    add b
    ld e, $00
    inc de
    inc bc
    inc l
    nop
    inc d
    inc b
    rlca
    dec bc
    ld a, [de]
    dec e
    pop af
    ld a, [hl+]
    add hl, bc
    ld [bc], a
    ld [de], a
    ld a, [de]
    rra
    rst $38
    dec e
    nop
    ld e, $ab
    inc de
    dec b
    ld a, [hl+]
    rlca
    add hl, hl
    dec bc
    ld [de], a
    ld a, [de]
    rra
    rst $38
    dec e
    add b
    ld e, $ad
    inc de
    inc bc
    ld [hl-], a
    dec bc
    ld e, $00
    ld a, [de]
    rra
    rst $38
    dec e
    add b
    ld e, $a5
    inc de
    ld [bc], a
    inc a
    ld [bc], a
    ld a, [de]
    dec e
    pop af
    ld a, [hl+]
    inc bc
    ld bc, $1a12
    rra
    rst $38
    dec e
    add b
    ld e, $9d
    inc de
    inc bc
    jr nc, jr_000_0f3f

    dec bc
    dec bc

Jump_000_0f36:
    dec bc
    ld e, $00
    ld a, [de]

Call_000_0f3a:
    ld a, [hl]
    and $07
    ret z

    ld b, a

jr_000_0f3f:
    ld c, $00

jr_000_0f41:
    push bc
    ld a, $00
    ld [c], a
    ld a, $30
    ld [c], a
    ld b, $10

jr_000_0f4a:
    ld e, $08
    ld a, [hl+]
    ld d, a

jr_000_0f4e:
    bit 0, d
    ld a, $10
    jr nz, jr_000_0f56

    ld a, $20

jr_000_0f56:
    ld [c], a
    ld a, $30
    ld [c], a
    rr d
    dec e
    jr nz, jr_000_0f4e

    dec b
    jr nz, jr_000_0f4a

    ld a, $20
    ld [c], a
    ld a, $30
    ld [c], a
    pop bc
    dec b
    ret z

    call Call_000_102b
    jr jr_000_0f41

Call_000_0f70:
    ld hl, $0fd5
    call Call_000_0f3a
    call Call_000_102b
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_000_0fba

    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, $30
    ldh [rP1], a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, $30
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_000_0fba

    ld hl, $0fc5
    call Call_000_0f3a
    call Call_000_102b
    sub a
    ret


jr_000_0fba:
    ld hl, $0fc5
    call Call_000_0f3a
    call Call_000_102b
    scf
    ret


    adc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
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

Call_000_0fe5:
    di
    push de
    call Call_000_1037
    ld a, $e4
    ldh [rBGP], a
    ld de, $8800
    ld bc, $1000
    call memcpy
    ld hl, $9800
    ld de, $000c
    ld a, $80
    ld c, $0d

jr_000_1001:
    ld b, $14

jr_000_1003:
    ld [hl+], a

Jump_000_1004:
    inc a
    dec b
    jr nz, jr_000_1003

    add hl, de
    dec c
    jr nz, jr_000_1001

    ld a, $81
    ldh [rLCDC], a
    call Call_000_102b
    call Call_000_102b
    pop hl
    call Call_000_0f3a
    call Call_000_102b
    call Call_000_102b
    ei
    ret


Call_000_1022:
    ld b, $1e

jr_000_1024:
    call Call_000_102b
    dec b
    jr nz, jr_000_1024

    ret


Call_000_102b:
    ld de, $1b58

jr_000_102e:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_000_102e

    ret


Call_000_1037:
    ldh a, [rIE]
    ldh [$94], a

Jump_000_103b:
    res 0, a
    ldh [rIE], a

jr_000_103f:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_103f

    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a
    ldh a, [$94]
    ldh [rIE], a
    ret


    ld a, c
    ld e, l
    ld [$0b00], sp
    adc h
    ret nc

    db $f4
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld d, d
    ld [$0b00], sp
    xor c
    rst $20
    sbc a
    ld bc, $7ec0
    add sp, -$18
    add sp, -$18
    ldh [$79], a
    ld b, a
    ld [$0b00], sp
    call nz, $16d0
    and l
    set 1, c
    dec b
    ret nc

    db $10
    and d
    jr z, @+$7b

    inc a
    ld [$0b00], sp
    ldh a, [rNR12]
    and l
    ret


    ret


    ret z

    ret nc

    inc e
    and l
    jp z, $79c9

    ld sp, $0008
    dec bc
    inc c
    and l
    jp z, $7ec9

    ret nc

    ld b, $a5
    set 1, c
    ld a, [hl]
    ld a, c
    ld h, $08
    nop
    dec bc
    add hl, sp
    call $0c48
    ret nc

    inc [hl]
    and l
    ret


    ret


    add b
    ret nc

    ld a, c
    dec de
    ld [$0b00], sp
    ld [$eaea], a
    ld [$a9ea], a
    ld bc, $4fcd
    inc c
    ret nc

    ld a, c
    db $10
    ld [$0b00], sp
    ld c, h
    jr nz, @+$0a

    ld [$eaea], a
    ld [$60ea], a
    ld [$01ea], a
    ld [$e04f], a
    inc bc
    ld h, b
    ld [bc], a
    jr nz, jr_000_10da

    ccf

jr_000_10da:
    ld bc, $001f
    dec bc
    nop
    nop
    add hl, bc
    ld [$004f], a
    ld a, h
    nop
    ld e, h
    nop
    jr z, jr_000_1129

    dec b
    add hl, sp
    ld a, [hl-]
    db $dd
    ld c, [hl]
    nop
    ld de, $7fff
    jp c, $945a

    ld sp, $14bf
    ldh [rSB], a
    cp a
    ld [bc], a
    nop
    nop
    nop
    add hl, de
    jr c, jr_000_116e

    ld d, b
    ld d, [hl]
    adc b
    dec a
    and b
    jr z, @+$4a

    nop
    add hl, sp
    ld a, [hl-]
    db $dd
    ld c, [hl]
    nop
    ld hl, $0302
    add hl, bc
    ld bc, $0501
    dec b
    ld [bc], a
    ld b, $07
    rlca
    ld c, $0e
    nop
    nop
    add hl, hl
    ld [bc], a
    xor a
    ld b, d
    nop
    nop
    nop
    nop
    nop

jr_000_1129:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $0627
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_1139:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    nop
    nop
    jr z, jr_000_1145

jr_000_1145:
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
    ld b, c
    ld bc, $0300
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_116e:
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
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    add b
    ld a, [hl]
    dec bc
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    add c
    nop
    add b
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
    adc c
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
    sub c
    nop
    add b
    ld a, a
    nop
    adc b
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

Jump_000_1200:
    sbc c
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
    cp c
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
    cp c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $18
    ld l, a
    ld a, a
    ccf
    jp c, Jump_000_0001

    nop
    rst $18
    ld l, a
    or b
    ld a, [hl+]
    add hl, bc
    ld [bc], a
    nop
    nop
    rst $18
    ld l, a
    jr @+$7d

    ret nc

    ld [hl], b
    nop
    nop
    rst $18
    ld l, a
    ld e, a
    ld d, a
    ccf
    ld b, [hl]
    nop
    nop

Call_000_1290:
    call Call_000_12a5
    ld hl, $da30
    ld de, $8c30
    ld bc, $0380

jr_000_129c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_129c

    ret


Call_000_12a5:
    ld c, $40
    ld hl, $c4c0

jr_000_12aa:
    ld a, [de]
    ld [hl+], a
    inc de
    cp $02
    jr z, jr_000_12b4

    dec c
    jr nz, jr_000_12aa

jr_000_12b4:
    ld bc, $0400
    ld hl, $da00

jr_000_12ba:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_12ba

    ld a, $c3
    ld [$c25b], a
    ld de, $c4c0
    ld a, $0e
    ld hl, $5b6c
    call switch_bank_and_call
    ret


Jump_000_12d2:
    ld a, $03
    ld [$cf5e], a
    xor a
    ld [$cf2b], a

Jump_000_12db:
    ld a, $01
    ld hl, $76ba
    call switch_bank_and_call
    ld a, [$cf29]
    inc a
    ld b, a
    add a
    push af
    add b
    call Call_000_30c3
    ld a, [$cf29]
    add a
    add $c6
    ld l, a
    ld a, $48
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    call Call_000_1290
    call Call_000_04e1
    call Call_000_047e
    ld a, [$cf2f]
    ld hl, $15c6
    and a
    call nz, Call_000_0f3a
    ld a, $c3
    call Call_000_03da
    call Call_000_13cd
    call Call_000_03b4
    call Call_000_05e9
    ld a, [$cf2f]
    ld hl, $15b6
    and a
    call nz, Call_000_0f3a
    call Call_000_13e7
    ld a, [$cf29]
    inc a
    ld b, a
    add a
    add b
    ld b, a
    ld a, [$cf2a]
    inc b
    and a
    jr nz, jr_000_133b

    inc b

jr_000_133b:
    ld a, b
    call Call_000_30c3
    ld hl, $48d4
    ld a, [$cf2a]
    and a
    jr nz, jr_000_134b

    ld hl, $48e2

jr_000_134b:
    ld a, [$cf29]
    add a
    call Call_000_065e
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    call Call_000_1290
    call Call_000_04e1
    call Call_000_047e
    xor a
    ld [$cf0b], a
    ld [$cf0c], a
    ld a, [$cf2f]
    ld hl, $15c6
    and a
    call nz, Call_000_0f3a
    ld a, $c3
    call Call_000_03da
    call Call_000_13cd
    call Call_000_03b4
    call Call_000_05e9
    ld a, [$cf2f]
    ld hl, $15b6
    and a
    call nz, Call_000_0f3a
    ld a, [$cf2a]
    and a
    jp nz, Jump_000_13a2

    ld a, [$cf29]
    inc a
    ld [$cf29], a
    cp $07
    jp nz, Jump_000_12d2

    ld a, $0a
    ld hl, $5e88
    jp Jump_000_0077


Jump_000_13a2:
    ld a, [$cf5e]
    and a
    jr z, jr_000_13b9

    ld a, $0e
    ld hl, $653f
    call switch_bank_and_call
    ld hl, $cf5e
    dec [hl]
    ld a, b
    and a
    jp nz, Jump_000_12db

jr_000_13b9:
    ld a, $e4
    ldh [rLCDC], a
    ld a, $0a
    ld hl, $4000
    call switch_bank_and_call
    ld a, $01
    ld hl, $40a9
    jp Jump_000_0077


Call_000_13cd:
    call Call_000_04e1
    call Call_000_047e
    ld b, $96

jr_000_13d5:
    push bc
    call Call_000_0369
    call Call_000_055e
    pop bc
    ldh a, [$8c]
    and $09
    jr nz, jr_000_13e6

    dec b
    jr nz, jr_000_13d5

jr_000_13e6:
    ret


Call_000_13e7:
    call $4cb4
    call Call_000_2670
    ld a, $0b
    ld hl, $4030
    call switch_bank_and_call
    call $4c0e
    ld a, [$cf29]
    inc a
    ld hl, $4000
    call Call_000_065e
    ld a, [hl]
    call Call_000_063d
    ld a, $64
    ld [$c29e], a
    xor a
    ld [$c29f], a
    dec a
    ld [$c2a0], a
    ld a, [$cf2f]
    ld hl, $15a6
    and a
    call nz, Call_000_0f3a
    call Call_000_2807
    ld a, [$cf20]
    ld hl, $2a3e
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cf29]
    call Call_000_065e
    ld a, [hl]
    add b
    ld [$c2cb], a
    xor a
    ld [$c2cc], a
    ld a, $e7
    ei
    call Call_000_03da
    ld b, $03

jr_000_1443:
    push bc
    call Call_000_0369
    call Call_000_047e
    call $42cb
    call $4dfe
    call $5578
    call $5590
    call $5527
    ld a, [$c2cb]
    ld e, a
    ld a, [$c2cc]
    ld d, a
    ld a, [$c2ce]

Call_000_1464:
    cpl

Call_000_1465:
    ld l, a
    ld a, [$c2cf]
    cpl
    ld h, a
    inc hl
    add hl, de
    ld a, l
    or h
    call nz, Call_000_29b2
    pop bc
    ld a, [$c269]
    and a
    jr nz, jr_000_1443

    push bc
    call $4084
    pop bc
    dec b
    jr nz, jr_000_1443

jr_000_1481:
    call Call_000_0369
    call Call_000_047e
    call $4dfe
    call $5578
    call $5590
    call $5527
    ld a, [$c2cb]
    ld e, a
    ld a, [$c2cc]
    ld d, a
    ld a, [$c2ce]
    cpl
    ld l, a
    ld a, [$c2cf]
    cpl
    ld h, a
    inc hl
    add hl, de
    ld a, l
    or h
    jr z, jr_000_14b0

    call Call_000_29b2
    jr jr_000_1481

Jump_000_14b0:
jr_000_14b0:
    call Call_000_0369
    call Call_000_055e
    call Call_000_1d26
    call Call_000_047e
    call Call_000_2195
    ld a, [$c2a1]
    and a
    call nz, Call_000_307c
    ld a, [$c2a1]
    and a
    call z, $4021
    call $42cb
    call $4472
    call $4dc9
    call $4dfe
    ldh a, [$b4]
    ld b, a
    ldh a, [$8b]
    and b
    call nz, $4f66
    ldh a, [$b5]
    ld b, a
    ldh a, [$8c]
    and b
    call nz, $5265
    ld a, [$c28f]
    ld b, a
    ld a, [$c290]
    or b
    jr nz, jr_000_153b

    call Call_000_2a59
    call Call_000_21a9
    jr nz, jr_000_1549

    ldh a, [$b6]

Call_000_14ff:
Jump_000_14ff:
    ld b, a
    ldh a, [$b7]
    cp b
    jr nz, jr_000_150c

    xor a
    ld [$c2a6], a
    call Call_000_302c

jr_000_150c:
    ldh a, [$bb]
    and a
    ld a, $04
    ld hl, $4000
    call nz, switch_bank_and_call
    ldh a, [$bb]
    and a
    jr nz, jr_000_1534

    ldh a, [$ba]
    and a
    jr z, jr_000_1534

    call Call_000_281f
    call Call_000_2de0
    call Call_000_29ef
    ld a, [$c2ce]
    ld b, a
    ld a, [$c2cf]
    or b
    jr z, jr_000_1586

jr_000_1534:
    ld a, [$c268]
    and a
    call Call_000_1d00

jr_000_153b:
    ld a, [$c28f]
    and a
    call nz, Call_000_1a77
    ld a, [$c290]
    and a
    call nz, Call_000_1add

jr_000_1549:
    ld a, [$c273]
    and a
    call nz, $5230
    call Call_000_1cd9
    ld a, [$c274]
    and a
    call nz, $52fa
    ldh a, [$ba]
    and a
    call nz, Call_000_1f1e
    call $5578
    call $5590
    call $5527
    call Call_000_28e6
    call Call_000_27e5
    call Call_000_25de
    jr nz, jr_000_1577

    jp Jump_000_14b0


jr_000_1577:
    call Call_000_2eb8
    ld a, $ff
    ld [$cf2a], a
    ld a, $a0
    call Call_000_2f3b
    jr jr_000_1595

jr_000_1586:
    call Call_000_2eb8
    xor a
    ld [$cf2a], a
    ld a, $a8
    call Call_000_2f3b
    call $4cea

jr_000_1595:
    call Call_000_03b4
    call Call_000_05e9
    ld a, [$cf2f]
    ld hl, $15b6
    and a
    call nz, Call_000_0f3a
    ret


    ld d, c
    nop
    nop
    inc b
    nop
    dec b
    nop
    ld a, [bc]
    nop
    jp nz, RST_00

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
    nop
    ld [bc], a
    ld bc, $0703
    dec b
    inc b
    ld b, $af
    ld [$cf12], a
    ld [$cf13], a
    ldh [rSB], a

Jump_000_15e7:
    ld a, [$cf14]
    bit 0, a
    ld a, [$cf2d]
    ld b, a
    ld a, [$cf2c]
    jr z, jr_000_15fc

    ld a, [$cf2c]
    ld b, a
    ld a, [$cf2d]

jr_000_15fc:
    ld hl, $15d6
    call Call_000_065e
    ld a, [hl]

Jump_000_1603:
    ld [$cf29], a
    ld a, b
    ld [$cf2b], a
    ld a, $0d
    ld hl, $4000
    call switch_bank_and_call
    call $4cb4
    call Call_000_266b
    ld a, $0b
    ld hl, $40af
    call switch_bank_and_call
    call $4c0e
    call Call_000_2ee7
    call Call_000_2807
    ld a, [$cf14]
    bit 0, a
    jr nz, jr_000_1639

    ld hl, $27dd
    ld de, $9c00
    call Call_000_0683

jr_000_1639:
    ld a, $e7
    ei
    call Call_000_03da
    xor a
    ld [$cf13], a
    ldh [rSB], a
    call $4cc2

Jump_000_1648:
    call Call_000_047e
    ld a, [$cf14]
    bit 0, a
    jr z, jr_000_1688

    call Call_000_0369
    call Call_000_055e
    call Call_000_1dba
    ldh a, [$8c]
    and $08
    add a
    ld b, a
    ld a, [$c29c]
    or b
    ld b, a
    ld a, [$c29d]
    or b
    or $80
    ld [$cf13], a
    ldh [rSB], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a

jr_000_1679:
    ldh a, [rSC]
    add a
    jr c, jr_000_1679

    ldh a, [rSB]
    ld [$cf12], a
    call Call_000_1dba
    jr jr_000_16b5

jr_000_1688:
    ldh a, [$8c]
    and $08
    add a
    ld b, a
    ld a, [$c29c]
    or b
    ld b, a
    ld a, [$c29d]
    or b
    and $7f
    ld [$cf13], a
    call Call_000_0369
    call Call_000_055e
    call Call_000_1dba
    ld a, [$cf16]
    ld b, a

jr_000_16a9:
    ld a, [$cf15]
    cp b
    jr z, jr_000_16a9

    ld [$cf16], a
    call Call_000_1dba

jr_000_16b5:
    ld a, [$cf12]
    and $40
    cp $40
    jp z, Jump_000_17cd

    xor a
    ld [$c29d], a
    call Call_000_2195
    call $40a4
    call $42cb
    call $4472
    call $4dc9
    call $4dfe
    ldh a, [$b4]
    ld b, a
    ldh a, [$8b]
    and b
    call nz, $4f66
    ldh a, [$b5]
    ld b, a
    ldh a, [$8c]
    and b
    call nz, $5265
    ld a, [$c28f]
    ld b, a
    ld a, [$c290]
    or b
    jr nz, jr_000_172f

    call Call_000_21a9
    jr nz, jr_000_173d

    ldh a, [$b6]
    ld b, a
    ldh a, [$b7]
    cp b
    jr nz, jr_000_170d

    xor a
    ld [$c2a6], a
    ld [$c29c], a
    call Call_000_302c
    ld a, $64
    ld [$c2c1], a

jr_000_170d:
    ldh a, [$bb]
    and a
    ld a, $04
    ld hl, $4000
    call nz, switch_bank_and_call
    ldh a, [$bb]
    and a
    jr nz, jr_000_1728

    ldh a, [$ba]
    and a
    jr z, jr_000_1728

    call Call_000_281f
    call Call_000_1bcf

jr_000_1728:
    ld a, [$c268]
    and a
    call Call_000_1d00

jr_000_172f:
    ld a, [$c28f]
    and a
    call nz, Call_000_1a77
    ld a, [$c290]
    and a
    call nz, Call_000_1add

jr_000_173d:
    call Call_000_1c0c
    ld a, [$c273]
    and a
    call nz, $5230
    call Call_000_1cd9
    ld a, [$c274]
    and a
    call nz, $52fa
    ldh a, [$ba]
    and a
    call nz, Call_000_1f1e
    call $5578
    call $5590
    call $5527
    call Call_000_296e
    call Call_000_27e5
    call Call_000_25de
    jr nz, jr_000_176e

    jp Jump_000_1648


jr_000_176e:
    call Call_000_2eb8
    ld a, $ff
    ld [$cf2a], a
    ld a, $40
    ld [$cf13], a
    ld a, [$cf14]
    bit 0, a
    jr z, jr_000_17a7

jr_000_1782:
    ld a, $c0
    ld [$cf13], a
    ldh [rSB], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a

jr_000_1791:
    ldh a, [rSC]
    add a
    jr c, jr_000_1791

    ldh a, [rSB]
    ld [$cf12], a
    add a
    jr c, jr_000_1782

    ld a, [$cf12]
    and $40
    cp $40
    jr z, jr_000_17cd

jr_000_17a7:
    call Call_000_0369
    call Call_000_0369
    call Call_000_0369
    ld a, $a0
    call Call_000_2f3b
    ld hl, $cf58
    ld a, [$cf14]
    bit 0, a
    jr z, jr_000_17c1

    inc hl
    inc hl

jr_000_17c1:
    ld a, [hl]
    add $01
    daa
    ld [hl+], a
    ld a, [hl]
    adc $00
    daa
    ld [hl], a
    jr jr_000_17ef

Jump_000_17cd:
jr_000_17cd:
    call Call_000_2eb8
    xor a
    ld [$cf2a], a
    ld a, $a8
    call Call_000_2f3b
    ld hl, $cf58
    ld a, [$cf14]
    bit 0, a
    jr nz, jr_000_17e5

    inc hl
    inc hl

jr_000_17e5:
    ld a, [hl]
    add $01
    daa
    ld [hl+], a
    ld a, [hl]
    adc $00
    daa
    ld [hl], a

jr_000_17ef:
    ld a, $06
    call Call_000_07ce
    call Call_000_2ee7
    ld bc, $5009
    call Call_000_0383
    call Call_000_03b4
    call Call_000_05e9
    ld a, [$cf2f]
    ld hl, $15b6
    and a
    call nz, Call_000_0f3a
    call Call_000_04e1
    ld a, $04
    call Call_000_063d
    ld a, $01
    ld hl, $5d84
    call switch_bank_and_call
    ld a, [$cf5c]
    add $01
    daa
    ld [$cf5c], a
    jp Jump_000_15e7


    ld d, c
    nop
    nop
    inc b
    nop
    dec b
    nop
    ld b, $00
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_1839:
    push af

jr_000_183a:
    push af
    pop af
    dec b
    jr nz, jr_000_183a

    pop af
    ret


    ld sp, $dfff
    ld a, $0b
    ld hl, $4000
    call switch_bank_and_call
    call $4c0e
    call Call_000_2675
    ld a, [$cf2f]
    ld hl, $1a67
    and a
    call nz, Call_000_0f3a
    xor a
    ld [$c2bf], a
    inc a
    ld [$c2c0], a
    ld a, $e7
    ei
    call Call_000_03da
    call $4cc2

Jump_000_186d:
    call Call_000_0369
    call Call_000_055e
    call Call_000_1d26
    call Call_000_047e
    call Call_000_2195
    call new_line_something_1
    call $42cb
    call $4472
    call $4dc9
    call $4dfe
    ldh a, [$b4]
    ld b, a
    ldh a, [$8b]
    and b
    call nz, $4f66
    ldh a, [$b5]
    ld b, a
    ldh a, [$8c]
    and b
    call nz, $5265
    ld a, [$c28f]
    ld b, a
    ld a, [$c290]
    or b
    jr nz, jr_000_18dd

    call Call_000_21a9
    jr nz, jr_000_18eb

    ldh a, [$b6]
    ld b, a

Call_000_18af:
    ldh a, [$b7]
    cp b
    jr nz, jr_000_18bb

    xor a
    ld [$c2a6], a
    call Call_000_302c

jr_000_18bb:
    ldh a, [$bb]
    and a
    ld a, $04
    ld hl, $4000
    call nz, switch_bank_and_call
    ldh a, [$bb]
    and a
    jr nz, jr_000_18d6

    ldh a, [$ba]
    and a
    jr z, jr_000_18d6

    call Call_000_2846
    call Call_000_2e4c

jr_000_18d6:
    ld a, [$c268]
    and a
    call Call_000_1d00

jr_000_18dd:
    ld a, [$c28f]
    and a
    call nz, Call_000_1a77

Call_000_18e4:
    ld a, [$c290]
    and a
    call nz, Call_000_1add

jr_000_18eb:
    ld a, [$c273]
    and a
    call nz, $5230
    call Call_000_1cd9
    ld a, [$c274]
    and a
    call nz, $52fa
    ldh a, [$ba]
    and a
    call nz, Call_000_1f1e
    call $5578
    call $5590
    call $5527
    call Call_000_2d9d
    call Call_000_292a
    call Call_000_25de
    jp z, Jump_000_186d

    ld a, $0a
    ld hl, $4000
    call switch_bank_and_call
    ld a, $01
    ld hl, $40a9
    jp Jump_000_0077


    ld sp, $dfff
    ld a, $0b
    ld hl, $4000
    call switch_bank_and_call ; calls copy_stuff_into_vram_0b
    call $4c0e
    call Call_000_2675
    ld a, [$cf2f]
    ld hl, $1a67
    and a
    call nz, Call_000_0f3a
    xor a
    ld [$c2bf], a
    inc a
    ld [$c2c0], a
    ld a, $e7
    ei
    call Call_000_03da
    call $4cc2

Jump_000_1953:
    call Call_000_0369
    call Call_000_055e
    call Call_000_1d26
    call Call_000_047e
    call Call_000_2195
    call new_line_something_1
    call $42cb
    call $4472
    call $4dc9
    call $4dfe
    ldh a, [$b4]
    ld b, a
    ldh a, [$8b]
    and b
    call nz, $4f66
    ldh a, [$b5]
    ld b, a
    ldh a, [$8c]
    and b
    call nz, $5265
    ld a, [$c28f]
    ld b, a
    ld a, [$c290]
    or b
    jr nz, jr_000_19c3

    call Call_000_21a9
    jr nz, jr_000_19d1

    ldh a, [$b6]
    ld b, a
    ldh a, [$b7]
    cp b
    jr nz, jr_000_19a1

    xor a
    ld [$c2a6], a
    call Call_000_302c

jr_000_19a1:
    ldh a, [$bb]
    and a
    ld a, $04
    ld hl, $4000
    call nz, switch_bank_and_call
    ldh a, [$bb]
    and a
    jr nz, jr_000_19bc

    ldh a, [$ba]
    and a
    jr z, jr_000_19bc

    call Call_000_2846
    call Call_000_2e4c

jr_000_19bc:
    ld a, [$c268]
    and a
    call Call_000_1d00

jr_000_19c3:
    ld a, [$c28f]
    and a
    call nz, Call_000_1a77
    ld a, [$c290]
    and a
    call nz, Call_000_1add

jr_000_19d1:
    ld a, [$c273]
    and a
    call nz, $5230
    call Call_000_1cd9
    ld a, [$c274]
    and a
    call nz, $52fa
    ldh a, [$ba]
    and a
    call nz, Call_000_1f1e
    call $5578
    call $5590
    call $5527
    call Call_000_2d9d
    call Call_000_292a
    call Call_000_2589
    call Call_000_25de
    jp z, Jump_000_1953

    ld a, [$cf26]
    ld [$c2c8], a
    ld a, [$cf25]
    ld [$c2c9], a
    call Call_000_2eb8
    call $4cea
    ld a, $0a
    ld hl, $4b26
    call switch_bank_and_call
    call $5578
    ld a, $0a
    ld hl, $4bdc
    call switch_bank_and_call

Jump_000_1a25:
    ld a, $0a
    ld hl, $4a8a
    call switch_bank_and_call
    ld a, [$cf54]
    ld b, a
    ld a, [$c2c7]
    cp b

Call_000_1a35:
    jr c, jr_000_1a4f

    ld a, $0f
    ld hl, $4000
    call switch_bank_and_call
    ld a, $0a
    ld hl, $4000
    call switch_bank_and_call
    ld a, $01
    ld hl, $40a9
    jp Jump_000_0077


jr_000_1a4f:
    ld a, $0a
    ld hl, $4000
    call switch_bank_and_call
    ld a, $0f
    ld hl, $428a
    call switch_bank_and_call
    ld a, $01
    ld hl, $40a9
    jp Jump_000_0077


    ld d, c
    nop
    nop
    inc b
    nop
    dec b
    nop
    ld b, $00
    add $00
    nop
    nop
    nop
    nop
    nop

Call_000_1a77:
    ld b, a
    ldh a, [$ba]
    and a
    ret nz

    ld a, [$c269]
    and a
    ret nz

    bit 7, b
    jp z, Jump_000_1ad2

    ld a, $7f
    ld [$c28f], a
    ld hl, GAME_BOARD
    ld de, $c600
    ld b, $86

jr_000_1a93:
    ld a, [hl+]
    swap a
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1a93

    ld a, [$c291]
    ldh [$9f], a
    ld e, $06

jr_000_1aa2:
    ldh a, [$9f]
    add a
    ldh [$9f], a
    bit 6, a
    jr z, jr_000_1aba

    ld d, e
    swap d
    ld hl, $c600
    ld c, $10

jr_000_1ab3:
    ld b, $07

jr_000_1ab5:
    ld a, [hl]
    cp d
    jr nz, jr_000_1aba

    inc [hl]

jr_000_1aba:
    inc l
    dec b
    jr nz, jr_000_1ab5

    inc l
    dec c
    jr nz, jr_000_1ab3

    dec e
    jr nz, jr_000_1aa2

    xor a
    ld [$c28e], a
    inc a
    inc a
    ldh [$ba], a
    ld a, $12
    jp Jump_000_07ce


Jump_000_1ad2:
    ldh a, [$ba]
    and a
    ret nz

    xor a
    ld [$c28f], a
    jp $727f


Call_000_1add:
    ld b, a
    ldh a, [$ba]
    and a
    ret nz

    ld a, [$c269]
    and a
    ret nz

    bit 7, b
    jp z, Jump_000_1b38

    ld a, $7f
    ld [$c290], a
    ld hl, GAME_BOARD
    ld de, $c600
    ld b, $86

jr_000_1af9:
    ld a, [hl+]
    swap a
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1af9

    ld a, [$c292]
    ldh [$9f], a
    ld e, $06

jr_000_1b08:
    ldh a, [$9f]
    add a
    ldh [$9f], a
    bit 6, a
    jr z, jr_000_1b20

    ld d, e
    swap d
    ld hl, $c600
    ld c, $10

jr_000_1b19:
    ld b, $07

jr_000_1b1b:
    ld a, [hl]
    cp d
    jr nz, jr_000_1b20

    inc [hl]

jr_000_1b20:
    inc l
    dec b
    jr nz, jr_000_1b1b

    inc l
    dec c
    jr nz, jr_000_1b19

    dec e
    jr nz, jr_000_1b08

    xor a
    ld [$c28e], a
    inc a
    inc a
    ldh [$ba], a
    ld a, $12
    jp Jump_000_07ce


Jump_000_1b38:
    bit 6, b
    jr z, jr_000_1b4b

    ldh a, [$ba]
    and a
    ret nz

    ld a, $3f
    ld [$c290], a
    ld a, $05
    ld [$c293], a
    ret


jr_000_1b4b:
    ld a, [$c293]
    dec a
    ld [$c293], a
    ret nz

    ld hl, GAME_BOARD
    ld c, $09

jr_000_1b58:
    ld b, $07

jr_000_1b5a:
    ld a, [hl+]
    cp $07
    jr nz, jr_000_1ba1

    push hl
    push bc
    ld a, $09
    sub c
    ld c, a
    ld a, [$c27a]
    add c
    and $0f
    swap a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld a, $07
    sub b
    ld b, a
    add a
    add e
    ld e, a
    ld hl, $9800
    add hl, de
    ld e, l
    ld d, h
    ld a, c
    add a
    add a
    add a
    add b
    ld l, a
    ld h, $c4
    ld [hl], $00
    ld hl, $c27b
    ld c, $04

jr_000_1b94:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_1b94

    call Call_000_06f5
    pop bc
    pop hl

jr_000_1ba1:
    dec b
    jr nz, jr_000_1b5a

    inc hl
    dec c
    jr nz, jr_000_1b58

    xor a
    ld [$c290], a
    ld hl, $c600
    ld b, $56

jr_000_1bb1:
    ld a, [hl]
    and $0f
    cp $01
    jr nz, jr_000_1bc4

    push bc
    ldh a, [$b6]
    ld e, a
    inc a
    ldh [$b6], a
    ld d, $c9
    ld a, l
    ld [de], a
    pop bc

jr_000_1bc4:
    inc l
    dec b
    jr nz, jr_000_1bb1

    ld a, $02
    ldh [$bb], a
    jp $727f


Call_000_1bcf:
    ld a, [$c2a6]
    cp $02
    ret c

    ld hl, $c298
    ld de, $9cc2
    ld a, [$cf14]
    bit 0, a
    jr z, jr_000_1be6

    inc l
    ld de, $9cc4

jr_000_1be6:
    ld a, [hl]
    inc a
    cp $08
    jr nz, jr_000_1bee

    ld a, $07

jr_000_1bee:
    ld [hl], a
    ld [$c29c], a
    add a
    add $4d
    ld hl, $c2aa
    ld [hl+], a
    inc a
    ld [hl], a
    dec hl
    ld c, $02

jr_000_1bfe:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_1bfe

    ld a, $02
    call Call_000_0787
    ret


Call_000_1c0c:
    ld a, [$cf12]
    and $20
    jr nz, jr_000_1c38

    ld a, [$c2c1]
    dec a
    ld [$c2c1], a
    jr nz, jr_000_1c68

    ld a, $64
    ld [$c2c1], a
    ld hl, $c298
    ld a, [$cf14]
    bit 0, a
    jr z, jr_000_1c2c

    inc hl

jr_000_1c2c:
    ld a, [hl]
    and a
    jr z, jr_000_1c68

    ld a, [$cf12]
    or $20
    ld [$cf12], a

jr_000_1c38:
    ld hl, $c298
    ld de, $9cc2
    ld a, [$cf14]
    bit 0, a
    jr z, jr_000_1c49

    inc hl
    ld de, $9cc4

jr_000_1c49:
    ld a, [hl]
    and a
    jr z, jr_000_1c68

    dec [hl]
    ld a, [hl]
    add a
    add $4d
    ld hl, $c2aa
    ld [hl+], a
    inc a
    ld [hl], a
    dec hl
    ld c, $02

jr_000_1c5b:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_1c5b

    ld a, $02
    call Call_000_0787

jr_000_1c68:
    ld a, [$cf12]
    and $07
    jr z, jr_000_1cca

    ld b, a
    ld a, [$c29a]
    cp b
    ret z

    ld a, b
    ld [$c29a], a
    ld a, $06
    call Call_000_07ce
    ld hl, $c298
    ld de, $9cc2
    ld a, [$cf14]
    bit 0, a
    jr nz, jr_000_1c8f

    inc l
    ld de, $9cc4

jr_000_1c8f:
    ld a, [hl]
    inc a
    cp $08
    jr nz, jr_000_1c97

    ld a, $07

jr_000_1c97:
    ld [hl], a
    add a
    add $4d
    ld hl, $c2aa
    ld [hl+], a
    inc a
    ld [hl], a
    dec hl
    ld c, $02

jr_000_1ca4:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_1ca4

    ld a, $02
    call Call_000_0787
    ld hl, $c298
    ld a, [$cf14]
    bit 0, a
    jr nz, jr_000_1cbc

    inc l

jr_000_1cbc:
    ld a, $08
    sub [hl]
    swap a
    ld [$c296], a
    ld a, $64
    ld [$c2c1], a
    ret


jr_000_1cca:
    ld a, [$c29a]
    and a
    ret z

    xor a
    ld [$c29a], a
    ld a, $ff
    ld [$c29b], a
    ret


Call_000_1cd9:
    ld hl, $c26a
    ldh a, [$8c]
    add a
    jr nc, jr_000_1cfa

    ld a, [hl]
    and a
    jr z, jr_000_1cf7

    ld hl, $c269
    ld a, [hl]
    and a
    ret nz

    ldh a, [$ba]
    ld b, a
    ldh a, [$bc]
    or b
    jp z, $418a

    ld hl, $c26a

jr_000_1cf7:
    ld [hl], $14
    ret


jr_000_1cfa:
    ld a, [hl]
    and a
    jr z, jr_000_1cff

    dec [hl]

jr_000_1cff:
    ret


Call_000_1d00:
    ldh a, [$ba]
    ld b, a
    ldh a, [$bc]
    or b
    ret nz

    ld hl, $c269
    ld a, [hl]
    and a
    ret nz

    xor a
    ld [$c268], a
    ld hl, $c410
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    jp z, $418a

    ret


Call_000_1d26:
    ldh a, [$8c]
    and $08
    ret z

    call Call_000_0832
    ld hl, $cf24
    ld b, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    push de
    push bc
    ld a, $ef
    ldh [rLCDC], a
    ld a, $40
    ld [$cf0c], a
    ldh [rSCX], a
    ld hl, $c100
    ld de, $d300
    ld b, $a0

jr_000_1d4d:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1d4d

    ld hl, $c108
    ld b, $24
    ld a, $f0

jr_000_1d5a:
    ld [hl+], a
    dec b
    jr nz, jr_000_1d5a

    ld hl, $c138
    ld b, $68
    ld a, $f0

jr_000_1d65:
    ld [hl+], a
    dec b
    jr nz, jr_000_1d65

    ld b, $0c
    ld hl, $1f12
    ld de, $c108

jr_000_1d71:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1d71

    call Call_000_047e

jr_000_1d7a:
    call Call_000_0369
    call Call_000_055e
    call $5590
    call $5527
    ldh a, [$8c]
    and $08
    jr z, jr_000_1d7a

    ld a, $e7
    ldh [rLCDC], a
    xor a
    ld [$cf0c], a
    ldh [rSCX], a
    ld hl, $d300
    ld de, $c100
    ld b, $a0

jr_000_1d9e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1d9e

    call Call_000_047e
    call Call_000_08b0
    call Call_000_0369
    pop bc
    pop de
    ld hl, $cf24
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld [hl], d
    inc hl
    ld [hl], e
    ret


Call_000_1dba:
    ld a, [$cf12]
    and $10
    jr nz, jr_000_1dc6

    ldh a, [$8c]
    and $08
    ret z

jr_000_1dc6:
    call Call_000_0832
    ld hl, $cf24
    ld b, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    push de
    push bc
    ld a, $ef
    ldh [rLCDC], a
    ld a, $40
    ld [$cf0c], a
    ldh [rSCX], a
    ld hl, $c100
    ld de, $d300
    ld b, $a0

jr_000_1de8:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1de8

    ld hl, $c108
    ld b, $24
    ld a, $f0

jr_000_1df5:
    ld [hl+], a
    dec b
    jr nz, jr_000_1df5

    ld hl, $c138
    ld b, $68
    ld a, $f0

jr_000_1e00:
    ld [hl+], a
    dec b
    jr nz, jr_000_1e00

    ld b, $0c
    ld hl, $1f12
    ld de, $c108

jr_000_1e0c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1e0c

Call_000_1e12:
    call Call_000_047e
    xor a
    ldh [$8c], a
    ld a, [$cf14]
    bit 0, a
    jp z, Jump_000_1e70

    ld a, $90
    ld [$cf13], a
    ld a, [$cf12]
    and $10
    jr nz, jr_000_1e3b

jr_000_1e2c:
    call Call_000_1ee9
    ld b, $64
    call Call_000_1839
    ld a, [$cf12]
    and $10
    jr z, jr_000_1e2c

jr_000_1e3b:
    call Call_000_0369
    call Call_000_055e
    ldh a, [$8c]
    and $08
    jr z, jr_000_1e4c

    ld a, $80
    ld [$cf13], a

jr_000_1e4c:
    call Call_000_1ee9
    ld a, [$cf13]
    and $10
    jr nz, jr_000_1e67

jr_000_1e56:
    call Call_000_1ee9
    ld b, $64
    call Call_000_1839
    ld a, [$cf12]
    and $10
    jr nz, jr_000_1e56

    jr jr_000_1eb0

jr_000_1e67:
    ld a, [$cf12]
    and $10
    jr nz, jr_000_1e3b

    jr jr_000_1eb0

Jump_000_1e70:
    ld a, $10
    ld [$cf13], a
    ld a, [$cf12]
    and $10
    jr nz, jr_000_1e86

jr_000_1e7c:
    call Call_000_1f04
    ld a, [$cf12]
    and $10
    jr z, jr_000_1e7c

jr_000_1e86:
    call Call_000_0369
    call Call_000_055e
    ldh a, [$8c]
    and $08
    jr z, jr_000_1e96

    xor a
    ld [$cf13], a

jr_000_1e96:
    call Call_000_1f04
    ld a, [$cf12]
    and $10
    jr z, jr_000_1eb0

    ld a, [$cf13]
    and a
    jr nz, jr_000_1e86

jr_000_1ea6:
    call Call_000_1f04
    ld a, [$cf12]
    and $10
    jr nz, jr_000_1ea6

jr_000_1eb0:
    xor a
    ld [$cf12], a
    ld [$cf13], a
    ldh [$8c], a
    ldh [rSB], a
    ld a, $e7
    ldh [rLCDC], a
    xor a
    ld [$cf0c], a
    ldh [rSCX], a
    ld hl, $d300
    ld de, $c100
    ld b, $a0

jr_000_1ecd:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1ecd

    call Call_000_047e
    call Call_000_08b0
    call Call_000_0369
    pop bc
    pop de
    ld hl, $cf24
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld [hl], d
    inc hl
    ld [hl], e
    ret


Call_000_1ee9:
jr_000_1ee9:
    ld a, [$cf13]
    ldh [rSB], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a

jr_000_1ef6:
    ldh a, [rSC]
    add a
    jr c, jr_000_1ef6

    ldh a, [rSB]
    ld [$cf12], a
    add a
    jr c, jr_000_1ee9

    ret


Call_000_1f04:
    ld a, [$cf15]
    ld b, a

jr_000_1f08:
    ld a, [$cf15]
    cp b
    jr z, jr_000_1f08

    ld [$cf16], a
    ret


    jr nc, jr_000_1f40

    cp [hl]
    nop
    jr z, jr_000_1f4c

    jp nz, $3000

    inc a
    ret nz

    nop

Call_000_1f1e:
    ld a, [$c290]
    cp $7f
    jp z, Jump_000_2054

    ld a, [$c28e]
    inc a
    ld [$c28e], a
    ld c, a
    ld a, [$c28e]
    and $03
    ret nz

    ld a, c
    add a
    and $18
    ldh [$a3], a
    add $86

Jump_000_1f3c:
    ldh [$9f], a
    ld a, $45

jr_000_1f40:
    adc $00
    ldh [$a0], a
    ld hl, $c600
    ld c, $09

jr_000_1f49:
    ld b, $07

jr_000_1f4b:
    ld a, [hl+]

jr_000_1f4c:
    ld d, a
    and $0f
    cp $01
    jr nz, jr_000_1f93

    push hl
    push bc
    ld a, d
    and $f0
    cp $80
    jp nc, Jump_000_2018

    ld a, $09
    sub c
    ld c, a
    ld a, [$c27a]
    add c
    and $0f
    swap a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld a, $07
    sub b
    add a
    add e
    ld e, a
    ld a, d
    add $98
    ld d, a
    ldh a, [$9f]
    ld l, a
    ldh a, [$a0]
    ld h, a
    ld c, $04

Jump_000_1f86:
jr_000_1f86:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_1f86

    call Call_000_06f5
    pop bc
    pop hl

jr_000_1f93:
    dec b
    jr nz, jr_000_1f4b

    inc hl
    dec c
    jr nz, jr_000_1f49

    ld a, [$c28e]
    cp $20
    ret nz

    ld hl, $c600
    ld c, $09

jr_000_1fa5:
    ld b, $07

jr_000_1fa7:
    ld a, [hl+]
    and $0f
    cp $01
    jr nz, jr_000_1ff0

    push hl
    push bc
    ld a, $09
    sub c
    ld c, a
    ld a, [$c27a]
    add c
    and $0f
    swap a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld a, $07
    sub b
    ld b, a
    add a
    add e
    ld e, a
    ld hl, $9800
    add hl, de
    ld e, l
    ld d, h
    ld a, c
    add a
    add a
    add a
    add b
    ld l, a
    ld h, $c4
    xor a
    ld [hl], a
    ld hl, $c27b
    ld c, $04

jr_000_1fe3:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_1fe3

    call Call_000_06f5
    pop bc
    pop hl

jr_000_1ff0:
    dec b
    jr nz, jr_000_1fa7

    inc hl
    dec c
    jr nz, jr_000_1fa5

    ld hl, $c648
    ld c, $07

jr_000_1ffc:
    ld b, $07

jr_000_1ffe:
    ld a, [hl+]

Jump_000_1fff:
    and $0f
    cp $01
    jr nz, jr_000_200d

    ld h, $c4
    dec l
    ld [hl], $00
    inc l
    ld h, $c6

jr_000_200d:
    dec b
    jr nz, jr_000_1ffe

    inc hl
    dec c
    jr nz, jr_000_1ffc

    xor a
    ldh [$ba], a
    ret


Jump_000_2018:
    ld a, $09
    sub c
    ld c, a
    ld a, [$c27a]
    add c
    and $0f
    swap a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld a, $07
    sub b
    add a
    add e
    ld e, a
    ld a, d
    add $98
    ld d, a
    dec hl
    ld a, [hl]
    ld hl, $45e6
    and $f0
    cp $80
    jr z, jr_000_2047

    ld hl, $45c6

jr_000_2047:
    ldh a, [$a3]
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld c, $04
    jp Jump_000_1f86


Jump_000_2054:
    ld a, [$c28e]
    inc a
    ld [$c28e], a
    ld c, a
    ld a, [$c28e]
    and $03
    ret nz

    ld a, c
    add a
    and $18
    ldh [$a3], a

Jump_000_2068:
    add $86
    ldh [$9f], a
    ld a, $45
    adc $00
    ldh [$a0], a
    ld hl, $c600
    ld c, $09

jr_000_2077:
    ld b, $07

jr_000_2079:
    ld a, [hl+]
    ld d, a
    and $0f
    cp $01
    jr nz, jr_000_20c1

    push hl
    push bc
    ld a, d
    and $f0
    cp $80
    jp nc, Jump_000_2159

    ld a, $09
    sub c
    ld c, a
    ld a, [$c27a]
    add c
    and $0f
    swap a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld a, $07
    sub b
    add a
    add e
    ld e, a
    ld a, d
    add $98
    ld d, a
    ldh a, [$9f]
    ld l, a
    ldh a, [$a0]
    ld h, a
    ld c, $04

Jump_000_20b4:
jr_000_20b4:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_20b4

    call Call_000_06f5
    pop bc
    pop hl

jr_000_20c1:
    dec b

Jump_000_20c2:
    jr nz, jr_000_2079

    inc hl
    dec c
    jr nz, jr_000_2077

    ld a, [$c28e]
    cp $20
    ret nz

    ld hl, $c600
    ld c, $09

jr_000_20d3:
    ld b, $07

jr_000_20d5:
    ld a, [hl+]
    and $0f
    cp $01
    jr nz, jr_000_2132

    push hl
    push bc
    ld a, $09
    sub c
    ld c, a
    ld a, [$c27a]
    add c
    and $0f
    swap a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld a, $07
    sub b
    ld b, a
    add a
    add e
    ld e, a

Call_000_20fc:
    ld hl, $9800
    add hl, de

Jump_000_2100:
    ld e, l
    ld d, h
    ld a, c
    add a
    add a
    add a
    add b

Jump_000_2107:
    ld l, a
    ld h, $c4
    inc [hl]
    ld a, [hl]
    dec a
    add a
    add a
    add $dc
    ld [$c283], a
    inc a
    ld [$c285], a
    inc a
    ld [$c284], a
    inc a
    ld [$c286], a
    ld hl, $c281
    ld c, $04

jr_000_2125:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_2125

    call Call_000_06f5
    pop bc
    pop hl

jr_000_2132:
    dec b
    jr nz, jr_000_20d5

    inc hl
    dec c
    jr nz, jr_000_20d3

    ld hl, $c648
    ld c, $07

jr_000_213e:
    ld b, $07

jr_000_2140:
    ld a, [hl+]
    and $0f
    cp $01
    jr nz, jr_000_214e

    ld h, $c4
    dec l
    inc [hl]
    inc l
    ld h, $c6

jr_000_214e:
    dec b
    jr nz, jr_000_2140

    inc hl
    dec c
    jr nz, jr_000_213e

    xor a
    ldh [$ba], a
    ret


Jump_000_2159:
    ld a, $09
    sub c
    ld c, a
    ld a, [$c27a]
    add c
    and $0f
    swap a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld a, $07
    sub b
    add a
    add e
    ld e, a
    ld a, d
    add $98
    ld d, a
    dec hl
    ld a, [hl]
    ld hl, $45e6
    and $f0
    cp $80
    jr z, jr_000_2188

    ld hl, $45c6

jr_000_2188:
    ldh a, [$a3]
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld c, $04
    jp Jump_000_20b4


Call_000_2195:
    ld bc, $2000
    ld hl, $cb00
    ld de, $0010

jr_000_219e:
    ld a, [hl]
    or c
    ld c, a
    add hl, de
    dec b
    jr nz, jr_000_219e

    ld a, c
    ldh [$bc], a
    ret


Call_000_21a9:
    ld bc, $2000
    ld hl, $cb00

jr_000_21af:
    ld a, [hl]
    or c
    ld c, a
    ld a, [hl]
    push bc
    push hl
    and a
    call nz, Call_000_21da
    pop hl
    ld bc, $0010
    add hl, bc
    pop bc
    dec b
    jr nz, jr_000_21af

    ldh a, [$ba]
    and a
    ret nz

    ld a, [$c2a3]
    and a
    jr z, jr_000_21d5

    push bc
    call $727f
    xor a
    ld [$c2a3], a
    pop bc

jr_000_21d5:
    ld a, c
    ldh [$bc], a
    and a
    ret


Call_000_21da:
    bit 6, [hl]
    jp z, Jump_000_2468

    bit 0, [hl]
    jp z, Jump_000_22d2

    ld a, [$c28e]
    ld c, a
    and $03
    ret nz

    ld a, c
    add a
    and $18
    add $a6
    ld e, a
    ld a, $45
    adc $00
    ld d, a
    push de
    inc hl
    ld a, [hl]
    and $f8
    ld e, a
    ld a, [$c27a]
    add a
    add a
    add a
    add e
    and $78
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    ld a, [hl]
    and $07
    add a
    add e
    ld e, a
    ld a, d
    add $98
    ld d, a
    pop bc
    push hl
    inc hl
    inc hl

Jump_000_2223:
    ld [hl], e
    inc hl
    ld [hl], d
    ld h, b
    ld l, c
    ld c, $04

jr_000_222a:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_222a

    call Call_000_06f5
    pop hl
    ld a, [$c28e]
    cp $20
    ret nz

    dec hl
    dec [hl]
    ld a, l
    ldh [$a1], a
    ld a, h
    ldh [$a2], a
    inc hl
    ld e, [hl]
    ld d, $c4
    inc hl
    ld a, [hl]
    or $80
    ld [de], a
    dec a
    add a
    add a
    add $dc
    push de
    ld [$c283], a
    inc a
    ld [$c285], a
    inc a
    ld [$c284], a
    inc a
    ld [$c286], a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c281
    ld c, $04

jr_000_226b:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_226b

    call Call_000_06f5
    pop de
    ld a, [de]
    ld c, a
    ld a, e
    and $f8
    jr z, jr_000_228b

jr_000_227e:
    ld a, e
    sub $08
    ld e, a
    ld a, [de]
    and a
    jr z, jr_000_22c1

    ld a, e
    and $f8
    jr nz, jr_000_227e

jr_000_228b:
    ld a, c
    cp $87
    jr nz, jr_000_229d

    ldh a, [$a1]
    ld l, a
    ldh a, [$a2]
    ld h, a
    ld [hl], $fe

Jump_000_2298:
    ld hl, $c2a3
    dec [hl]
    ret


jr_000_229d:
    ldh a, [$a1]
    ld l, a
    ldh a, [$a2]
    ld h, a
    xor a
    ld [hl+], a
    ld e, [hl]
    ld d, $c4
    ld a, [de]
    and $0f
    ld [de], a
    ld hl, $ffb6
    ld c, [hl]
    ld b, $c9
    inc [hl]
    ld a, e
    ld [bc], a
    ld a, $02
    ldh [$bb], a
    ld [$c268], a
    ld hl, $c2a3
    dec [hl]
    ret


jr_000_22c1:
    ldh a, [$a1]
    ld l, a
    ldh a, [$a2]
    ld h, a

Jump_000_22c7:
    xor a
    ld [hl], a
    dec a
    ld [$c268], a
    ld hl, $c2a3
    dec [hl]
    ret


Jump_000_22d2:
    ld a, l
    ldh [$a1], a
    ld a, h
    ldh [$a2], a
    bit 7, [hl]
    jp z, Jump_000_239d

    ld a, [hl]
    sub $02

Jump_000_22e0:
    ld [hl], a
    and $06
    ret nz

    res 7, [hl]
    inc hl
    ld e, [hl]
    ld d, $c4
    ld a, [de]
    cp $87
    jp z, Jump_000_2342

jr_000_22f0:
    ld a, [de]
    push de
    call Call_000_253b
    pop de
    ld a, e
    add $08
    ld e, a
    cp $50
    ret nc

    ld a, [de]
    and a
    jr nz, jr_000_22f0

    ld a, e
    sub $08
    ld e, a
    ld a, e
    add a
    and $0e
    ld b, a
    ld a, e
    srl a
    srl a
    srl a
    ld c, a
    ld a, [$c27a]
    add c
    and $0f
    add a
    inc a
    add a
    add a
    add a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld a, e
    add b
    ld e, a
    ld a, d
    add $98
    ld d, a
    ld hl, $c27d
    ld c, $02

jr_000_2334:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_2334

    ld a, $02
    call Call_000_0750
    ret


Jump_000_2342:
    dec hl
    bit 4, [hl]
    jr z, jr_000_2350

    ld [hl], $e2
    ld a, l
    add $05
    ld l, a
    ld [hl], $0a
    ret


jr_000_2350:
    ld [hl], $e2
    push hl
    ld a, l
    add $05
    ld l, a
    dec [hl]
    pop hl
    ret nz

    ld a, [de]
    cp $87
    push af
    xor a
    ld [hl], a
    ld [de], a
    ld a, e
    add a
    and $0e
    ld c, a
    ld a, e
    and $f8
    ld b, a
    ld a, [$c27a]
    add a
    add a
    add a
    add b
    and $78
    add a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld a, e
    add c
    ld e, a
    ld a, d
    add $98
    ld d, a
    ld hl, $c27b
    ld c, $04

jr_000_238b:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_238b

    call Call_000_06f5
    pop af
    ret nz

    ld hl, $c2a3
    dec [hl]
    ret


Jump_000_239d:
    ld a, [hl]
    sub $02
    ld [hl], a
    and $02
    ret nz

    inc hl
    ld e, [hl]
    ld d, $c4
    ld a, e

jr_000_23a9:
    ld a, [de]
    push de
    ld b, a
    ld a, e
    sub $08
    ld e, a
    cp $50
    ld a, b
    ld [de], a
    jr nc, jr_000_23ba

    and a
    call nz, Call_000_24fb

jr_000_23ba:
    pop de
    ld a, e
    add $08
    ld e, a
    ld a, [de]
    and a
    jr nz, jr_000_23a9

    ld a, e
    sub $08
    ld e, a
    xor a
    ld [de], a
    ld a, e
    cp $50
    jr nc, jr_000_2422

    add a
    and $0e
    ld b, a
    ld a, e
    srl a
    srl a
    srl a
    ld c, a
    ld a, [$c27a]
    add c
    and $0f
    swap a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld a, e
    add b
    ld e, a
    ld a, d
    add $98
    ld d, a
    ld hl, $c27d
    ld c, $02

jr_000_23f9:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_23f9

    ld a, $02

Call_000_2403:
    push de
    call Call_000_0750
    pop de
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld hl, $c27d
    ld c, $02

jr_000_2415:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_2415

    ld a, $02
    call Call_000_0750

jr_000_2422:
    ldh a, [$a1]
    ld l, a
    ldh a, [$a2]
    ld h, a
    ld a, $fe
    ld [hl+], a
    ld a, [hl]
    sub $08
    ld [hl-], a
    ld c, a
    and $f8
    jr z, jr_000_243d

    ld a, c
    sub $08
    ld e, a
    ld d, $c4
    ld a, [de]
    and a
    ret z

jr_000_243d:
    xor a
    ld [hl], a
    ld hl, $ffb6
    ld e, [hl]
    ld d, $c9
    inc [hl]
    ld a, c
    ld [de], a
    ld b, $c4

jr_000_244a:
    ld a, c
    add $08
    ld c, a
    ld a, [bc]
    and a
    jr z, jr_000_2458

    ld e, [hl]
    inc [hl]
    ld a, c
    ld [de], a
    jr jr_000_244a

jr_000_2458:
    ld l, c
    ld h, $c4
    ld a, [hl]
    and $3f
    ld [hl], a
    ld a, $02
    ldh [$bb], a
    ld hl, $c2a3
    dec [hl]
    ret


Jump_000_2468:
    bit 0, [hl]
    jr z, jr_000_24d3

    ld a, [$c28e]
    ld c, a
    and $03
    ret nz

    ld a, c
    add a
    and $18
    ld b, a
    inc hl
    inc hl
    ld a, [hl]
    ld de, $45e6
    and a
    jr z, jr_000_2484

    ld de, $45c6

jr_000_2484:
    ld a, b
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    push de
    dec hl
    ld a, [hl]
    and $f8
    ld e, a
    ld a, [$c27a]
    add a
    add a
    add a
    add e
    and $78
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    ld a, [hl]
    and $07
    add a
    add e
    ld e, a
    ld a, d
    add $98
    ld d, a
    pop bc
    push hl
    inc hl
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    ld h, b
    ld l, c
    ld c, $04

jr_000_24be:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_24be

    call Call_000_06f5
    pop hl
    ld a, [$c28e]
    cp $20
    ret nz

    dec hl
    dec [hl]
    ret


jr_000_24d3:
    xor a
    ld [hl+], a
    ld e, [hl]
    ld d, $c4
    xor a
    ld [de], a
    inc hl
    ld a, [hl]
    and a
    ld de, $c28f
    jr z, jr_000_24e3

    inc de

jr_000_24e3:
    ld a, $ff
    ld [de], a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c27b
    ld c, $04

jr_000_24ef:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_24ef

    call Call_000_06f5
    ret


Call_000_24fb:
    dec a

Call_000_24fc:
    add a

Jump_000_24fd:
    add a
    add a
    add $1e
    ld l, a
    ld a, $44
    adc $00
    ld h, a
    push hl
    ld a, e
    add a
    and $0e
    ld c, a
    ld a, e
    and $f8
    ld b, a
    ld a, [$c27a]
    add a
    add a
    add a
    and $78
    add b
    add a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld a, e
    add c
    ld e, a
    ld a, d
    add $98
    ld d, a
    pop hl
    ld c, $04

jr_000_2530:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_2530

    jp Jump_000_06f5


Call_000_253b:
    dec a
    add a
    add a
    add a
    add $20
    ld l, a
    ld a, $44
    adc $00
    ld h, a
    push hl
    ld a, e
    add a
    and $0e
    ld c, a
    ld a, e
    and $f8
    ld b, a
    ld a, [$c27a]
    add a
    add a
    add a
    add b
    and $78
    sub $04
    add a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld a, e
    add c
    ld e, a
    ld a, d
    add $98
    ld d, a
    pop hl
    ld a, $02
    push de
    call Call_000_0750
    pop de
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    and $fb
    ld d, a
    ld a, $02
    push de
    call Call_000_0750
    pop de
    ret


Call_000_2589:
    ld a, [$cf24]
    and a
    ret nz

    ld a, [$c2c0]
    dec a
    ld [$c2c0], a
    ret nz

    ld a, $14
    ld [$c2c0], a
    ld a, [$c2bf]
    inc a
    cp $64
    jr nz, jr_000_25a5

    ld a, $63

jr_000_25a5:
    ld [$c2bf], a
    ld bc, $000a

jr_000_25ab:
    inc b
    sub c
    jr nc, jr_000_25ab

    dec b
    add c
    ld c, a
    ld d, $00
    ld a, b
    and $0f
    jr z, jr_000_25bc

    add $19
    ld d, a

jr_000_25bc:
    ld a, d
    ld [$c2aa], a
    ld a, c
    and $0f
    add $19
    ld [$c2ab], a
    ld hl, $c2aa
    ld de, $9cc3
    ld c, $02

jr_000_25d0:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_25d0

    ld a, $02
    call Call_000_0750
    ret


Call_000_25de:
    ld hl, $c480
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    ret nz

    ldh a, [$bb]
    ld b, a
    ldh a, [$ba]
    or b
    ld b, a
    ld a, [$c2a6]
    or b
    ld b, a

Call_000_25fa:
    ldh a, [$bc]
    or b
    jr nz, jr_000_2669

    ld hl, $c448
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    ret


jr_000_2669:
    xor a
    ret


Call_000_266b:
    ld hl, $276f
    jr jr_000_2678

Call_000_2670:
    ld hl, $2701
    jr jr_000_2678

Call_000_2675:
    ld hl, $2693

jr_000_2678:
    push hl
    xor a
    ldh [rWY], a
    ld a, $77
    ldh [rWX], a
    ld hl, $9800
    call Call_000_07c3
    ld hl, $9c00
    call Call_000_07c3
    pop hl
    ld de, $9c00
    jp Jump_000_0683


    ld b, $12
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    dec b
    ld b, $07
    ld [$0209], sp
    nop
    nop
    nop
    nop
    add hl, de
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    db $10
    add hl, bc
    ld de, $1009
    inc bc
    nop
    nop
    nop
    ld a, [de]
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc de
    inc d
    dec d
    ld e, b
    ld e, c
    ld [bc], a
    nop
    nop
    nop
    add hl, de
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, $17
    inc de
    inc d
    dec d
    inc bc
    nop
    nop
    nop
    add hl, de
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc c
    dec c
    ld c, $09
    nop
    ld [bc], a
    add hl, de
    add hl, de
    jr jr_000_270d

    ld a, [de]
    inc bc
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc b
    inc de
    inc d
    dec d
    nop
    nop
    ld b, $12
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop

jr_000_270d:
    nop
    nop
    inc bc
    dec b
    ld h, c
    ld h, d
    ld h, e
    add hl, bc
    ld [bc], a
    nop
    nop
    nop
    nop
    or b
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld b, $07
    ld [$0309], sp
    nop
    dec sp
    inc a
    dec a
    nop
    ld [bc], a
    nop
    ld a, $3f
    ld b, b
    nop
    inc bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $02
    nop
    rla
    ld c, l
    ld c, c
    nop
    inc bc
    nop
    rra
    ld c, [hl]
    ld c, d
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    cp d
    cp e
    cp h
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld c, e
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $ff04
    rst $38
    rst $38
    rst $38
    ld [de], a
    ld b, $12
    ld bc, $000f
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    dec sp
    inc a
    ccf
    ld b, b
    nop
    ld [bc], a
    dec a
    ld a, $41
    ld b, d
    ld h, e
    inc bc

Call_000_278a:
Jump_000_278a:
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $02
    nop
    rrca
    nop
    stop
    inc bc
    rla
    ld c, l
    jr @+$4f

    ld e, $02
    rra
    ld c, [hl]
    ld h, h
    ld c, [hl]
    ld h, l
    inc bc
    cp d
    cp e
    cp h
    nop
    nop
    ld [bc], a
    inc de
    inc d
    dec d
    dec d
    ld d, $03
    ld b, e
    nop
    nop
    nop
    ld b, a
    ld [bc], a
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    inc bc
    ld c, b
    nop
    nop
    nop
    ld c, h
    ld [bc], a
    jr nz, jr_000_27e3

    ld hl, $2221
    inc bc
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    nop
    ld [bc], a
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    nop
    inc bc
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    nop
    inc b
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    nop
    ld b, $01
    ld bc, $0010
    nop

jr_000_27e3:
    nop
    nop

Call_000_27e5:
    ld hl, $c297
    inc [hl]
    ld a, [hl]
    and $07
    ret nz

    ld a, [hl]
    and $08
    ld c, a
    ld a, [$c296]
    ld d, a
    inc d
    ld a, c
    ld b, $07
    ld hl, $c138

Jump_000_27fc:
jr_000_27fc:
    ld [hl], d
    inc l
    ld [hl+], a
    add $10
    inc l
    inc l
    dec b
    jr nz, jr_000_27fc

    ret


Call_000_2807:
    ld a, $80
    ld [$c296], a
    xor a
    ld [$c297], a
    ld hl, $c13a
    ld bc, $07c2

jr_000_2816:
    ld [hl], c
    inc l
    ld [hl+], a
    inc l
    inc l
    dec b
    jr nz, jr_000_2816

    ret


Call_000_281f:
    ld hl, $c2a6
    ld a, [hl]
    add $01
    daa
    ld [hl], a
    cp $02

Jump_000_2829:
    jr c, jr_000_2839

    inc hl
    ld a, [hl]
    add $01
    daa
    ld [hl], a
    jr nc, jr_000_2839

    inc hl
    ld a, [hl]
    add $01
    daa
    ld [hl], a

jr_000_2839:
    ld a, [$c2a9]
    ld b, a
    ld a, [$c2a6]
    cp b
    ret c

    ld [$c2a9], a
    ret


Call_000_2846:
    ld hl, $c2a6
    ld a, [hl]
    add $01
    daa
    ld [hl], a
    cp $02
    jr c, jr_000_285f

    inc hl
    ld a, [hl]
    add $01
    daa
    ld [hl+], a
    jr nc, jr_000_285f

    ld a, [hl]
    add $01
    daa
    ld [hl], a

jr_000_285f:
    ld hl, $c2a8
    ld bc, $0000
    ld a, [hl]
    swap a
    and $0f
    jr z, jr_000_2870

    add $19
    ld b, a
    dec c

jr_000_2870:
    ld a, b
    ld [$c2aa], a
    ld b, $00
    ld a, [hl]
    bit 7, c
    jr nz, jr_000_287f

    and $0f
    jr z, jr_000_2886

jr_000_287f:
    ld a, [hl]
    and $0f
    add $19
    ld b, a
    dec c

jr_000_2886:
    ld a, b
    ld [$c2ab], a
    dec hl
    ld b, $00
    ld a, [hl]
    bit 7, c
    jr nz, jr_000_2896

    and $f0
    jr z, jr_000_289f

jr_000_2896:
    ld a, [hl]
    swap a
    and $0f
    add $19
    ld b, a
    dec c

jr_000_289f:
    ld a, b
    ld [$c2ac], a
    ld a, [hl]
    and $0f
    add $19
    ld [$c2ad], a
    ld hl, $c2aa
    ld de, $9d21
    ld a, $04
    call Call_000_0750
    ld a, [$c2a9]
    ld b, a
    ld a, [$c2a6]
    cp b
    ret c

    ld [$c2a9], a
    ld b, $00
    ld c, a
    swap a
    and $0f
    jr z, jr_000_28ce

    add $19
    ld b, a

jr_000_28ce:
    ld a, b
    ld [$c2ac], a
    ld a, c
    and $0f
    add $19
    ld [$c2ad], a
    ld hl, $c2ac
    ld de, $9d83
    ld a, $02
    call Call_000_0750
    ret


Call_000_28e6:
    ld a, [$c2a5]
    ld c, a
    ld a, [$c2a6]
    ld [$c2a5], a
    cp c
    ret z

    dec a
    bit 7, a
    jr z, jr_000_28f8

    xor a

jr_000_28f8:
    ld bc, $0000
    ld d, a
    swap a
    and $0f
    jr z, jr_000_2906

    add $b0
    ld b, a
    dec c

jr_000_2906:
    ld a, b
    ld [$c2aa], a
    ld b, $00
    ld a, d
    bit 7, c
    jr nz, jr_000_2915

    and $0f
    jr z, jr_000_291a

jr_000_2915:
    and $0f
    add $b0
    ld b, a

jr_000_291a:
    ld a, b
    ld [$c2ab], a
    ld hl, $c2aa
    ld de, $9d84
    ld a, $02
    call Call_000_0750
    ret


Call_000_292a:
    ld a, [$c2a5]
    ld c, a
    ld a, [$c2a6]
    ld [$c2a5], a
    cp c
    ret z

    dec a
    bit 7, a
    jr z, jr_000_293c

    xor a

jr_000_293c:
    ld bc, $0000
    ld d, a
    swap a
    and $0f
    jr z, jr_000_294a

    add $19
    ld b, a
    dec c

jr_000_294a:
    ld a, b
    ld [$c2aa], a
    ld b, $00
    ld a, d
    bit 7, c
    jr nz, jr_000_2959

    and $0f
    jr z, jr_000_295e

jr_000_2959:
    and $0f
    add $19
    ld b, a

jr_000_295e:
    ld a, b
    ld [$c2ab], a
    ld hl, $c2aa
    ld de, $9e24
    ld a, $02
    call Call_000_0750
    ret


Call_000_296e:
    ld a, [$c2a5]
    ld c, a
    ld a, [$c2a6]
    ld [$c2a5], a
    cp c
    ret z

    dec a
    bit 7, a
    jr z, jr_000_2980

    xor a

jr_000_2980:
    ld bc, $0000
    ld d, a
    swap a
    and $0f
    jr z, jr_000_298e

    add $b0
    ld b, a
    dec c

jr_000_298e:
    ld a, b
    ld [$c2aa], a
    ld b, $00
    ld a, d
    bit 7, c
    jr nz, jr_000_299d

    and $0f
    jr z, jr_000_29a2

jr_000_299d:
    and $0f
    add $b0
    ld b, a

jr_000_29a2:
    ld a, b
    ld [$c2ab], a
    ld hl, $c2aa
    ld de, $9d04
    ld a, $02
    call Call_000_0750
    ret


Call_000_29b2:
    ld hl, $c2ce
    ld e, [hl]
    inc hl
    ld d, [hl]
    srl d
    rr e
    srl d
    rr e
    ld a, e
    ld [$c2cd], a
    ld de, $0b05
    ld b, $f0
    bit 5, a
    jr z, jr_000_29d2

    ld de, $b050
    ld b, $0f

jr_000_29d2:
    call Call_000_2a10
    ld hl, $c2ce
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    inc de
    inc de
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    srl d
    rr e
    srl d
    rr e
    ld a, e
    ld [$c2cd], a
    ret


Call_000_29ef:
    ld hl, $c2ce
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec de
    ld [hl], d
    dec hl
    ld [hl], e
    srl d
    rr e
    srl d
    rr e
    ld a, e
    ld [$c2cd], a
    ld de, $0000
    ld b, $f0
    bit 5, a
    jr z, jr_000_2a10

    ld b, $0f

Call_000_2a10:
jr_000_2a10:
    and $1f
    add a
    ld c, a
    add $d0
    ld l, a
    ld a, $c2
    adc $00
    ld h, a
    ld a, [hl]
    and b
    or d
    ld [hl+], a
    ld a, [hl]
    and b
    or e
    ld [hl-], a
    ld de, $90f0
    ld a, c
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld c, $02

jr_000_2a30:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_2a30

    ld a, $02
    call Call_000_0750
    ret


    ld d, d
    ld a, [hl+]
    ld b, h
    ld a, [hl+]
    ld c, e
    ld a, [hl+]
    jr nz, jr_000_2a86

    ld d, b
    ld h, b
    ld a, b
    adc h
    sbc h
    inc d
    jr nz, jr_000_2a86

    inc a
    ld b, h
    ld c, h
    ld d, b
    jr z, jr_000_2a9c

    ld e, h
    ld l, h
    add h
    and b
    cp b

Call_000_2a59:
    ld a, [$c29e]
    ld l, a
    ld a, [$c29f]
    ld h, a
    dec hl
    ld a, l
    ld [$c29e], a
    ld a, h
    ld [$c29f], a
    or l
    ret nz

    ld a, [$cf29]
    ld hl, $2aef
    call Call_000_065d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c2a0]
    inc a
    cp $20
    jr c, jr_000_2a82

    ld a, $20

jr_000_2a82:
    ld [$c2a0], a
    ld b, a

jr_000_2a86:
    add a
    add b
    call Call_000_065e
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [$cf5d]
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    srl e
    rl d

jr_000_2a9c:
    ld a, e
    ld [$c29e], a
    ld a, d
    ld [$c29f], a
    ld a, [hl]
    ld [$c2a1], a
    ld hl, $c322
    ld de, $9dc1
    ld c, $10

jr_000_2ab0:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_2ab0

    call Call_000_06f5
    ld a, $32
    ld [$c2a2], a
    ld a, $06
    call Call_000_07ce
    ld a, [$c2a1]

Call_000_2ac8:
    push af
    add a
    add $4d
    ld hl, $c2aa
    ld [hl+], a
    inc a
    ld [hl], a
    dec hl
    ld de, $9d23
    ld c, $02

jr_000_2ad8:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_2ad8

    ld a, $02
    call Call_000_0787
    ld a, $08
    pop bc
    sub b
    swap a
    ld [$c296], a
    ret


    db $fd
    ld a, [hl+]
    ld e, l
    dec hl
    cp l
    dec hl
    dec e
    inc l
    ld a, l
    inc l
    db $dd
    inc l
    dec a
    dec l
    ret nc

    rlca
    ld bc, $07d0
    ld [bc], a
    db $f4
    ld bc, $dc02
    dec b
    ld [bc], a
    add sp, $03
    ld bc, $05dc
    ld [bc], a
    ret nc

    rlca
    ld bc, $07d0
    ld bc, $01f4
    ld bc, $01f4
    ld bc, $00fa
    ld bc, $00fa
    ld bc, $05dc
    ld bc, $05dc
    ld [bc], a
    ret nc

    rlca
    ld bc, $07d0
    ld bc, $09c4
    ld bc, $09c4
    ld [bc], a
    call nz, $0209
    call nz, $0209
    call nz, $0109
    call nz, $0209
    call nz, $0209
    call nz, $0209
    call nz, $0109
    call nz, $0209
    call nz, $0209
    call nz, $0209
    call nz, $0109
    cp b
    dec bc
    ld [bc], a
    call c, Call_000_0205
    sub b
    ld bc, $e801
    inc bc
    ld [bc], a
    call c, $0105
    ret nc

    rlca
    ld bc, $07d0
    inc bc
    call nz, $0109
    call c, Call_000_0205
    add sp, $03
    ld bc, $07d0
    ld [bc], a
    ret nc

    rlca
    ld bc, $03e8
    ld [bc], a
    add sp, $03
    ld bc, $01f4
    ld bc, $05dc
    ld bc, $01f4
    ld [bc], a
    cp b
    dec bc
    ld bc, $1194
    ld bc, $09c4
    ld bc, $09c4
    ld [bc], a
    call nz, $0209
    ret nc

    rlca
    inc bc
    ret nc

    rlca
    ld bc, $07d0
    ld [bc], a
    call nz, $0209
    call nz, Call_000_0309
    call nz, $0109
    call c, Call_000_0205
    call c, Call_000_0205
    call nz, Call_000_0309
    cp b
    dec bc
    ld bc, $0bb8
    ld [bc], a
    call c, Call_000_0205
    sub b
    ld bc, $f401
    ld bc, $ee02
    ld [bc], a
    ld bc, $03e8
    ld bc, $03e8
    ld [bc], a
    add sp, $03
    ld bc, $03e8
    ld [bc], a
    ld [c], a
    inc b
    ld bc, $03e8
    ld [bc], a
    add sp, $03
    ld bc, $03e8
    ld [bc], a
    ld [c], a
    inc b
    ld bc, $05dc

Call_000_2be0:
    ld bc, $03e8
    ld bc, $01f4
    ld [bc], a
    db $f4
    ld bc, $f401
    ld bc, $e801
    inc bc
    ld bc, $03e8
    ld [bc], a
    add sp, $03
    ld [bc], a
    add sp, $03
    inc bc
    add sp, $03
    ld bc, $03e8
    ld [bc], a
    add sp, $03
    ld [bc], a
    add sp, $03
    inc bc
    add sp, $03
    ld bc, $03e8
    ld [bc], a
    add sp, $03
    ld [bc], a
    add sp, $03
    inc bc
    add sp, $03
    ld bc, $03e8
    ld [bc], a
    db $f4
    ld bc, $9002
    ld bc, $f401
    ld bc, $e802
    inc bc
    ld bc, $01f4
    ld bc, $03e8
    ld [bc], a
    db $f4
    ld bc, $e801
    inc bc
    ld [bc], a
    call c, $0105
    db $f4
    ld bc, $f402
    ld bc, $f401
    ld bc, $f402
    ld bc, $e801
    inc bc
    ld bc, $01f4
    ld bc, $01f4
    ld [bc], a
    db $f4
    ld bc, $f401
    ld bc, $e801
    inc bc
    ld bc, $03e8
    ld [bc], a
    add sp, $03
    ld [bc], a
    db $f4
    ld bc, $f403
    ld bc, $e801
    inc bc
    ld [bc], a
    add sp, $03
    ld [bc], a
    db $f4
    ld bc, $f403
    ld bc, $f401
    ld bc, $f402
    ld bc, $e802
    inc bc
    inc bc
    db $f4
    ld bc, $f401
    ld bc, $f402
    ld bc, $9002
    ld bc, $f401
    ld bc, $dc02
    dec b
    ld bc, $07d0
    ld bc, $07d0
    ld [bc], a
    cp b
    dec bc
    ld bc, $07d0
    ld [bc], a
    cp b
    dec bc
    ld bc, $09c4
    ld [bc], a
    cp b
    dec bc
    ld bc, $0bb8
    ld [bc], a
    add sp, $03
    ld bc, $03e8
    ld bc, $01f4
    ld bc, $01f4
    ld [bc], a
    cp b
    dec bc
    ld bc, $1194
    ld bc, $07d0
    ld bc, $07d0
    ld [bc], a
    ret nc

    rlca
    ld [bc], a
    ret nc

    rlca
    inc bc
    sub h
    ld de, $9401
    ld de, $d002
    rlca
    ld [bc], a
    ret nc

Call_000_2cc3:
    rlca
    inc bc
    add sp, $03
    ld bc, $05dc
    ld [bc], a
    add sp, $03
    ld [bc], a
    db $f4
    ld bc, $dc03
    dec b
    ld bc, $03e8
    ld [bc], a
    call c, Call_000_0205
    sub b
    ld bc, $f401
    ld bc, $dc02
    dec b
    ld bc, $07d0
    ld bc, $07d0
    ld [bc], a
    cp b
    dec bc
    ld bc, $07d0
    ld [bc], a
    cp b
    dec bc
    ld bc, $05dc
    ld [bc], a
    cp b
    dec bc
    ld bc, $0bb8
    ld [bc], a
    add sp, $03
    ld bc, $03e8
    ld bc, $01f4
    ld bc, $01f4
    ld [bc], a
    cp b
    dec bc
    ld bc, $03e8
    ld bc, $1194
    ld bc, $05dc
    ld [bc], a
    call c, Call_000_0205
    sub h
    ld de, $dc04
    dec b
    ld bc, $05dc
    ld bc, $1194
    inc b
    sub h
    ld de, $dc02
    dec b
    ld bc, $05dc
    ld [bc], a
    call c, Call_000_0205
    sub h
    ld de, $dc03
    dec b
    ld bc, $03e8
    ld [bc], a
    xor $02
    ld [bc], a
    sub b
    ld bc, $e801
    inc bc
    ld bc, $03e8
    ld bc, $03e8
    ld bc, $01f4
    ld bc, $01f4
    ld [bc], a
    db $f4
    ld bc, $dc01
    dec b
    ld bc, $05dc
    ld [bc], a
    call c, $0105
    call c, Call_000_0205
    call nz, $0109
    call nz, $0109
    call c, $0105
    add sp, $03
    ld [bc], a
    add sp, $03
    ld bc, $01f4
    ld bc, $09c4
    ld bc, $09c4
    ld [bc], a
    add sp, $03
    ld bc, $03e8
    inc bc
    cp b
    dec bc
    inc b
    sub h
    ld de, $9404
    ld de, $9404
    ld de, $9404
    ld de, $d001
    rlca
    ld bc, $07d0
    ld bc, $05dc
    ld bc, $00fa
    ld bc, $00fa
    ld bc, $01f4
    ld [bc], a
    ld a, [$0100]

Call_000_2d9d:
    ld a, [$cf24]
    and a
    ret nz

    ld a, [$cf26]
    ld c, a
    swap a
    and $0f
    add $19
    ld [$c289], a
    ld a, c
    and $0f
    add $19
    ld [$c28a], a
    ld a, [$cf25]
    ld c, a
    swap a
    and $0f
    add $19
    ld [$c28c], a
    ld a, c
    and $0f
    add $19
    ld [$c28d], a
    ld a, [$d101]
    add $05
    cp $44
    ret nc

    ld hl, $c289
    ld de, $9de1
    ld a, $05
    call Call_000_0750
    ret


Call_000_2de0:
    ld hl, $c2ba
    ld e, $00
    ld bc, $0000
    ld a, [hl]
    and $0f
    jr z, jr_000_2df1

    add $b0
    ld b, a
    dec c

jr_000_2df1:
    ld a, b
    ld [$c2aa], a
    dec hl
    ld b, e
    ld a, [hl]
    bit 7, c
    jr nz, jr_000_2e00

    and $f0
    jr z, jr_000_2e09

jr_000_2e00:
    ld a, [hl]
    swap a
    and $0f
    add $b0
    ld b, a
    dec c

jr_000_2e09:
    ld a, b
    ld [$c2ab], a
    ld b, e
    ld a, [hl]
    bit 7, c
    jr nz, jr_000_2e17

    and $0f
    jr z, jr_000_2e1d

jr_000_2e17:
    and $0f
    add $b0
    ld b, a
    dec c

jr_000_2e1d:
    ld a, b
    ld [$c2ac], a
    dec hl
    ld b, e
    ld a, [hl]
    bit 7, c
    jr nz, jr_000_2e2c

    and $f0
    jr z, jr_000_2e34

jr_000_2e2c:
    ld a, [hl]
    swap a
    and $0f
    add $b0
    ld b, a

jr_000_2e34:
    ld a, b
    ld [$c2ad], a
    ld a, [hl]
    and $0f
    add $b0
    ld [$c2ae], a
    ld hl, $c2aa
    ld de, $9c61
    ld a, $05
    call Call_000_0750
    ret


Call_000_2e4c:
    ld hl, $c2ba
    ld e, $00
    ld bc, $0000
    ld a, [hl]
    and $0f
    jr z, jr_000_2e5d

    add $19
    ld b, a
    dec c

jr_000_2e5d:
    ld a, b
    ld [$c2aa], a
    dec hl
    ld b, e
    ld a, [hl]
    bit 7, c
    jr nz, jr_000_2e6c

    and $f0
    jr z, jr_000_2e75

jr_000_2e6c:
    ld a, [hl]
    swap a
    and $0f
    add $19
    ld b, a
    dec c

jr_000_2e75:
    ld a, b
    ld [$c2ab], a
    ld b, e
    ld a, [hl]
    bit 7, c
    jr nz, jr_000_2e83

    and $0f
    jr z, jr_000_2e89

jr_000_2e83:
    and $0f
    add $19
    ld b, a
    dec c

jr_000_2e89:
    ld a, b
    ld [$c2ac], a
    dec hl
    ld b, e
    ld a, [hl]
    bit 7, c
    jr nz, jr_000_2e98

    and $f0
    jr z, jr_000_2ea0

jr_000_2e98:
    ld a, [hl]
    swap a
    and $0f
    add $19
    ld b, a

jr_000_2ea0:
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


Call_000_2eb8:
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
    jp Jump_000_047e


Call_000_2ee7:
    ld hl, $cf59
    call Call_000_2f0a
    ld hl, $c2aa
    ld de, $9d42
    ld a, $03
    call Call_000_0750
    ld hl, $cf5b
    call Call_000_2f0a
    ld hl, $c2aa
    ld de, $9d82
    ld a, $03
    call Call_000_0750
    ret


Call_000_2f0a:
    ld bc, $0000
    ld a, [hl-]
    and $0f
    jr z, jr_000_2f16

    add $b0
    dec c
    ld b, a

jr_000_2f16:
    ld a, b
    ld [$c2aa], a
    ld b, $00
    ld a, [hl]
    bit 7, c
    jr nz, jr_000_2f25

    and $f0
    jr z, jr_000_2f2e

jr_000_2f25:
    ld a, [hl]
    swap a
    and $0f
    add $b0
    dec c
    ld b, a

jr_000_2f2e:
    ld a, b
    ld [$c2ab], a
    ld a, [hl]
    and $0f
    add $b0
    ld [$c2ac], a
    ret


Call_000_2f3b:
    push af
    ld a, $f0
    ld [$c148], a
    ld [$c14c], a
    ld [$c150], a
    xor a
    ld [$c294], a

Call_000_2f4b:
    ld [$c295], a
    call $5578
    ld a, $ef
    ldh [rLCDC], a

Call_000_2f55:
    ld a, $40
    ld [$cf0c], a

Call_000_2f5a:
    ldh [rSCX], a
    pop af
    ld b, a

jr_000_2f5e:
    push bc

Call_000_2f5f:
    call Call_000_0369
    call Call_000_047e
    call $4dfe
    ld a, [$c294]
    ld hl, $2fcc
    call Call_000_065e
    ld a, [$c295]
    add [hl]
    ld [$c295], a
    pop bc
    push bc
    ld c, a
    ld hl, $c138
    ld a, $28
    ld [hl], c
    inc l
    ld [hl+], a
    add $08
    ld [hl], b
    inc l
    inc b
    inc b
    ld [hl], $00
    inc l
    ld [hl], c
    inc l
    ld [hl+], a
    add $08
    ld [hl], b
    inc l
    inc b
    inc b
    ld [hl], $00
    inc l
    ld [hl], c
    inc l
    ld [hl+], a
    add $08
    ld [hl], b
    inc l
    inc b
    inc b
    ld [hl], $00
    inc l
    ld [hl], c
    inc l
    ld [hl+], a
    add $08
    ld [hl], b
    inc l
    inc b
    inc b
    ld [hl], $00
    ld a, [$c294]
    inc a
    ld [$c294], a
    pop bc
    cp $60
    jr nz, jr_000_2f5e

    ld a, $32

jr_000_2fbd:
    push af
    call Call_000_0369
    call Call_000_047e
    call $4dfe
    pop af
    dec a
    jr nz, jr_000_2fbd

    ret


    inc b
    add hl, bc
    add hl, bc
    ld [$0708], sp
    rlca
    ld b, $06
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    cp $fd
    db $fd
    db $fc
    db $fc
    ei
    ld a, [$faf9]
    ei
    db $fc
    db $fc
    db $fd
    db $fd
    cp $ff
    rst $38
    ld bc, $0201
    inc bc
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    ld b, $05
    inc b
    inc b
    inc bc

Call_000_3004:
    inc bc
    ld [bc], a
    ld bc, $feff
    db $fd
    db $fc
    ei
    db $fc
    db $fd
    cp $ff
    ld bc, $0302
    inc b
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $feff
    db $fd
    cp $ff
    rst $38
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop

Call_000_302c:
    ld b, $86
    ld hl, GAME_BOARD

jr_000_3031:
    ld a, [hl]
    and $0f
    cp $07
    jr nz, jr_000_3077

    push bc
    push hl
    ld a, l
    and $78
    ld c, a
    ld a, [$c27a]
    add a
    add a
    add a
    add c
    and $78
    add a
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    ld a, l
    and $07
    add a
    add e
    ld e, a
    ld hl, $9800
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c27b
    ld c, $04

jr_000_3064:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_3064

    call Call_000_06f5
    pop hl
    pop bc
    ld a, $ff
    ld [$c2a3], a
    xor a

jr_000_3077:
    ld [hl+], a
    dec b
    jr nz, jr_000_3031

    ret


Call_000_307c:
    ld a, [$c269]
    and a
    ret nz

    ld a, [$c2a2]
    dec a
    ld [$c2a2], a
    ret nz

    ldh a, [$ba]
    ld b, a
    ldh a, [$bc]
    or b
    ld b, a
    ld a, [$c2a6]
    or b
    ld b, a
    ldh a, [$bb]
    or b
    jr z, jr_000_30a0

    ld a, $02

Jump_000_309c:
    ld [$c2a2], a
    ret


jr_000_30a0:
    ld a, $01
    ld [$c2a2], a
    ld hl, $c2a1
    dec [hl]
    ld a, [hl]
    call Call_000_2ac8
    ld hl, $c310
    ld de, $9dc1
    ld c, $10

jr_000_30b5:
    ld a, [$d101]
    add c
    cp $44
    jr nc, jr_000_30b5

    call Call_000_06f5
    jp $4041


Call_000_30c3:
    add a
    ldh [$9f], a
    add a
    ld hl, $3147
    call Call_000_065d
    ld a, [hl+]
    ld [$2000], a
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9010
    call memcpy
    pop bc
    ld a, b
    or c
    jr z, jr_000_30ef

    ld de, $8800
    call memcpy

jr_000_30ef:
    ldh a, [$9f]
    ld hl, $3207
    call Call_000_065e
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $9800
    ld c, $0d
    call Call_000_0504
    ld hl, $3237
    ld bc, $0050
    ld de, $8fb0
    call memcpy
    ld de, $3287
    ld hl, $99a0
    ld c, $05
    call Call_000_0504
    xor a
    ld hl, $9000
    ld b, $10

jr_000_311f:
    ld [hl+], a
    dec b
    jr nz, jr_000_311f

    ld hl, $8c30
    ld bc, $0380

jr_000_3129:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_3129

    call Call_000_3139
    ldh a, [$af]
    ld [$2000], a
    ret


Call_000_3139:
    ld bc, $0400
    ld hl, $da00

jr_000_313f:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_313f

    ret


    dec b
    nop
    add b
    ld [bc], a
    ldh a, [rTAC]
    inc c
    ld b, d
    dec b
    nop
    or b
    inc bc
    ldh a, [rTAC]
    add b
    ld c, l
    dec b
    nop
    jr nz, jr_000_315f

    ldh a, [rTAC]
    inc h
    ld e, d

jr_000_315f:
    ld b, $00
    nop
    ld bc, $07f0
    db $e4
    ld c, e
    ld b, $00
    ldh [rSC], a
    ldh a, [rTAC]
    ret c

    ld d, l
    ld b, $00
    ld d, b
    nop
    ldh a, [rTAC]
    xor h
    ld h, c
    rlca
    nop
    nop
    inc bc
    ldh a, [rTAC]
    ld h, b
    ld h, l
    rlca
    nop
    or b
    ld bc, $07f0
    ld d, h
    ld [hl], c
    ld [$a000], sp
    ld [bc], a
    ldh a, [rTAC]
    nop
    ld b, b
    ld b, $00
    or b
    nop
    ldh a, [rTAC]
    ldh a, [rOCPS]
    ld b, $00
    ldh [rSB], a
    ldh a, [rTAC]
    sub h
    ld [hl], h
    rlca
    nop
    ldh [rSB], a
    ldh a, [rTAC]
    nop
    ld b, b
    dec b
    nop
    and b
    ld bc, $07f0
    jr c, jr_000_3216

    dec b
    nop
    and b
    ld [bc], a
    ldh a, [rTAC]
    call z, $0671
    nop
    ldh a, [rSC]
    ldh a, [rTAC]
    nop
    ld b, b
    rlca
    nop
    nop
    nop
    jr nz, @+$09

    call nc, $074a
    nop
    jr nc, jr_000_31cb

jr_000_31cb:
    ldh a, [rTAC]
    ld hl, sp+$52

Call_000_31cf:
    rlca
    nop
    ld d, b
    nop
    ldh a, [rTAC]
    inc e
    ld e, h
    ld [$1000], sp
    ld [bc], a
    ldh a, [rTAC]
    sub h
    ld c, e
    ld [$9000], sp
    ld bc, $07f0
    sbc b
    ld d, [hl]
    ld [$2000], sp
    inc b
    ldh a, [rTAC]
    inc e
    ld h, c
    ld [$3000], sp
    inc b
    ldh a, [rTAC]
    jr nc, jr_000_3265

    add hl, bc
    nop
    ldh a, [rSC]
    ldh a, [rTAC]
    nop

Jump_000_31fe:
    ld b, b

Call_000_31ff:
    add hl, bc
    nop
    jr nc, jr_000_3207

    ldh a, [rTAC]
    db $e4
    ld c, e

jr_000_3207:
    ld a, h
    ld c, h
    jr nz, jr_000_3264

    inc [hl]
    ld h, [hl]
    call nc, $a854
    ld h, b
    db $ec
    ld l, c
    ld d, b
    ld [hl], b
    db $f4

jr_000_3216:
    ld a, d
    sub b
    ld c, d
    sub b
    ld [hl], e
    ld h, h
    ld a, [hl]
    ret nc

    ld c, c
    ret z

    ld [hl], b
    ld e, h
    ld a, h

Call_000_3223:
    ldh [rWY], a
    db $f4
    ld d, c
    jr jr_000_3284

    ld e, h
    ld h, h
    sub h
    ld d, l
    jr jr_000_328f

    inc l
    ld l, l
    ld d, b
    ld a, d
    ldh [rWY], a
    inc b
    ld e, b
    nop
    nop
    jr nc, jr_000_3247

    ld c, b
    ld b, $4c
    ld b, $3c
    ld c, [hl]
    jr jr_000_32c1

    nop
    inc a
    nop
    nop

jr_000_3247:
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

jr_000_3264:
    ld c, h

jr_000_3265:
    inc d
    ld c, h
    jr z, jr_000_329b

    jr z, jr_000_329d

    jr z, @+$34

    jr z, jr_000_32a1

    jr z, jr_000_32a3

    jr z, jr_000_32a5

    jr z, jr_000_32a7

    jr z, jr_000_32a9

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

jr_000_3284:
    rst $38
    nop
    nop
    ei
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc

jr_000_328f:
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
    ei

jr_000_329b:
    db $fd
    nop

jr_000_329d:
    jp $c7c5


    ret


jr_000_32a1:
    set 1, l

jr_000_32a3:
    rst $08
    pop de

jr_000_32a5:
    db $d3
    push de

jr_000_32a7:
    rst $10
    reti


jr_000_32a9:
    db $db
    db $dd
    rst $18
    nop
    nop
    cp $fd
    nop
    call nz, $c8c6
    jp z, $cecc

    ret nc

    jp nc, $d6d4

    ret c

    jp c, $dedc

    ldh [rP1], a

jr_000_32c1:
    nop
    cp $fd
    nop
    pop hl
    db $e3
    push hl
    rst $20
    jp hl


    db $eb
    db $ed

Call_000_32cc:
    rst $28

Jump_000_32cd:
    pop af
    di
    push af
    rst $30
    ld sp, hl
    nop
    nop
    nop
    nop
    cp $fd
    nop
    ld [c], a
    db $e4
    and $e8
    ld [$eeec], a
    ldh a, [$f2]
    db $f4
    or $f8
    ld a, [$0000]
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_33cc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_33ff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3409:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_35ba:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_35e7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3605:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3632:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3738:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_37cf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3800:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3880:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_38c8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_38d8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_38ff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_39c2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_39ff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3ac4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3ad0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3be0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3c0f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3c23:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3c34:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3c3c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3c42:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3c74:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3cdc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3cee:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3cfc:
    rst $38
    rst $38
    rst $38

Jump_000_3cff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3ede:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3ee3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3f23:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3f7f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3fdb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3fe2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3ff3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3ffe:
    rst $38

Jump_000_3fff:
    rst $38
