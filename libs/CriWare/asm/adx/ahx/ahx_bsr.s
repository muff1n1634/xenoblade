.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn AHXBSR_Create, global
/* 8038D300 003568C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038D304 003568C4  7C 08 02 A6 */	mflr r0
/* 8038D308 003568C8  28 05 00 34 */	cmplwi r5, 0x34
/* 8038D30C 003568CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038D310 003568D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038D314 003568D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8038D318 003568D8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8038D31C 003568DC  93 81 00 10 */	stw r28, 0x10(r1)
/* 8038D320 003568E0  7C 7C 1B 78 */	mr r28, r3
/* 8038D324 003568E4  40 80 00 0C */	bge .L_8038D330
/* 8038D328 003568E8  38 60 00 00 */	li r3, 0
/* 8038D32C 003568EC  48 00 00 8C */	b .L_8038D3B8
.L_8038D330:
/* 8038D330 003568F0  38 04 00 07 */	addi r0, r4, 7
/* 8038D334 003568F4  38 80 00 00 */	li r4, 0
/* 8038D338 003568F8  54 1D 00 38 */	rlwinm r29, r0, 0, 0, 0x1c
/* 8038D33C 003568FC  38 A0 00 2C */	li r5, 0x2c
/* 8038D340 00356900  7F A3 EB 78 */	mr r3, r29
/* 8038D344 00356904  4B C7 70 0D */	bl memset
/* 8038D348 00356908  93 9D 00 04 */	stw r28, 4(r29)
/* 8038D34C 0035690C  3B C0 00 00 */	li r30, 0
/* 8038D350 00356910  7F 83 E3 78 */	mr r3, r28
/* 8038D354 00356914  38 80 00 00 */	li r4, 0
/* 8038D358 00356918  93 DD 00 10 */	stw r30, 0x10(r29)
/* 8038D35C 0035691C  80 BC 00 00 */	lwz r5, 0(r28)
/* 8038D360 00356920  81 85 00 24 */	lwz r12, 0x24(r5)
/* 8038D364 00356924  7D 89 03 A6 */	mtctr r12
/* 8038D368 00356928  4E 80 04 21 */	bctrl 
/* 8038D36C 0035692C  80 BC 00 00 */	lwz r5, 0(r28)
/* 8038D370 00356930  7C 7F 1B 78 */	mr r31, r3
/* 8038D374 00356934  7F 83 E3 78 */	mr r3, r28
/* 8038D378 00356938  38 80 00 01 */	li r4, 1
/* 8038D37C 0035693C  81 85 00 24 */	lwz r12, 0x24(r5)
/* 8038D380 00356940  7D 89 03 A6 */	mtctr r12
/* 8038D384 00356944  4E 80 04 21 */	bctrl 
/* 8038D388 00356948  7C 83 FA 14 */	add r4, r3, r31
/* 8038D38C 0035694C  38 00 00 01 */	li r0, 1
/* 8038D390 00356950  7C 83 16 70 */	srawi r3, r4, 2
/* 8038D394 00356954  90 9D 00 14 */	stw r4, 0x14(r29)
/* 8038D398 00356958  7C 63 01 94 */	addze r3, r3
/* 8038D39C 0035695C  90 7D 00 18 */	stw r3, 0x18(r29)
/* 8038D3A0 00356960  7F A3 EB 78 */	mr r3, r29
/* 8038D3A4 00356964  93 DD 00 24 */	stw r30, 0x24(r29)
/* 8038D3A8 00356968  93 DD 00 1C */	stw r30, 0x1c(r29)
/* 8038D3AC 0035696C  93 DD 00 20 */	stw r30, 0x20(r29)
/* 8038D3B0 00356970  93 DD 00 28 */	stw r30, 0x28(r29)
/* 8038D3B4 00356974  90 1D 00 00 */	stw r0, 0(r29)
.L_8038D3B8:
/* 8038D3B8 00356978  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038D3BC 0035697C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038D3C0 00356980  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8038D3C4 00356984  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8038D3C8 00356988  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8038D3CC 0035698C  7C 08 03 A6 */	mtlr r0
/* 8038D3D0 00356990  38 21 00 20 */	addi r1, r1, 0x20
/* 8038D3D4 00356994  4E 80 00 20 */	blr 
.endfn AHXBSR_Create

.fn AHXBSR_Destroy, global
/* 8038D3D8 00356998  2C 03 00 00 */	cmpwi r3, 0
/* 8038D3DC 0035699C  4D 82 00 20 */	beqlr 
/* 8038D3E0 003569A0  38 80 00 00 */	li r4, 0
/* 8038D3E4 003569A4  38 A0 00 2C */	li r5, 0x2c
/* 8038D3E8 003569A8  4B C7 6F 68 */	b memset
/* 8038D3EC 003569AC  4E 80 00 20 */	blr 
.endfn AHXBSR_Destroy

.fn AHXBSR_Restruct, global
/* 8038D3F0 003569B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038D3F4 003569B4  7C 08 02 A6 */	mflr r0
/* 8038D3F8 003569B8  2C 03 00 00 */	cmpwi r3, 0
/* 8038D3FC 003569BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038D400 003569C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038D404 003569C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8038D408 003569C8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8038D40C 003569CC  7C 9D 23 78 */	mr r29, r4
/* 8038D410 003569D0  93 81 00 10 */	stw r28, 0x10(r1)
/* 8038D414 003569D4  7C 7C 1B 78 */	mr r28, r3
/* 8038D418 003569D8  41 82 00 7C */	beq .L_8038D494
/* 8038D41C 003569DC  38 80 00 00 */	li r4, 0
/* 8038D420 003569E0  38 A0 00 2C */	li r5, 0x2c
/* 8038D424 003569E4  4B C7 6F 2D */	bl memset
/* 8038D428 003569E8  3B C0 00 00 */	li r30, 0
/* 8038D42C 003569EC  93 BC 00 04 */	stw r29, 4(r28)
/* 8038D430 003569F0  7F A3 EB 78 */	mr r3, r29
/* 8038D434 003569F4  38 80 00 00 */	li r4, 0
/* 8038D438 003569F8  93 DC 00 10 */	stw r30, 0x10(r28)
/* 8038D43C 003569FC  80 BD 00 00 */	lwz r5, 0(r29)
/* 8038D440 00356A00  81 85 00 24 */	lwz r12, 0x24(r5)
/* 8038D444 00356A04  7D 89 03 A6 */	mtctr r12
/* 8038D448 00356A08  4E 80 04 21 */	bctrl 
/* 8038D44C 00356A0C  80 BD 00 00 */	lwz r5, 0(r29)
/* 8038D450 00356A10  7C 7F 1B 78 */	mr r31, r3
/* 8038D454 00356A14  7F A3 EB 78 */	mr r3, r29
/* 8038D458 00356A18  38 80 00 01 */	li r4, 1
/* 8038D45C 00356A1C  81 85 00 24 */	lwz r12, 0x24(r5)
/* 8038D460 00356A20  7D 89 03 A6 */	mtctr r12
/* 8038D464 00356A24  4E 80 04 21 */	bctrl 
/* 8038D468 00356A28  7C 83 FA 14 */	add r4, r3, r31
/* 8038D46C 00356A2C  38 00 00 01 */	li r0, 1
/* 8038D470 00356A30  7C 83 16 70 */	srawi r3, r4, 2
/* 8038D474 00356A34  90 9C 00 14 */	stw r4, 0x14(r28)
/* 8038D478 00356A38  7C 63 01 94 */	addze r3, r3
/* 8038D47C 00356A3C  90 7C 00 18 */	stw r3, 0x18(r28)
/* 8038D480 00356A40  93 DC 00 24 */	stw r30, 0x24(r28)
/* 8038D484 00356A44  93 DC 00 1C */	stw r30, 0x1c(r28)
/* 8038D488 00356A48  93 DC 00 20 */	stw r30, 0x20(r28)
/* 8038D48C 00356A4C  93 DC 00 28 */	stw r30, 0x28(r28)
/* 8038D490 00356A50  90 1C 00 00 */	stw r0, 0(r28)
.L_8038D494:
/* 8038D494 00356A54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038D498 00356A58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038D49C 00356A5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8038D4A0 00356A60  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8038D4A4 00356A64  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8038D4A8 00356A68  7C 08 03 A6 */	mtlr r0
/* 8038D4AC 00356A6C  38 21 00 20 */	addi r1, r1, 0x20
/* 8038D4B0 00356A70  4E 80 00 20 */	blr 
.endfn AHXBSR_Restruct

.fn ahxbsr_get_data, local
/* 8038D4B4 00356A74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038D4B8 00356A78  7C 08 02 A6 */	mflr r0
/* 8038D4BC 00356A7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038D4C0 00356A80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038D4C4 00356A84  7C 7F 1B 78 */	mr r31, r3
/* 8038D4C8 00356A88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8038D4CC 00356A8C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8038D4D0 00356A90  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8038D4D4 00356A94  20 84 00 20 */	subfic r4, r4, 0x20
/* 8038D4D8 00356A98  7C 84 1E 70 */	srawi r4, r4, 3
/* 8038D4DC 00356A9C  2C 00 00 04 */	cmpwi r0, 4
/* 8038D4E0 00356AA0  7F C4 01 94 */	addze r30, r4
/* 8038D4E4 00356AA4  40 80 00 C4 */	bge .L_8038D5A8
/* 8038D4E8 00356AA8  80 83 00 20 */	lwz r4, 0x20(r3)
/* 8038D4EC 00356AAC  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8038D4F0 00356AB0  2C 04 00 00 */	cmpwi r4, 0
/* 8038D4F4 00356AB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8038D4F8 00356AB8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8038D4FC 00356ABC  41 82 00 7C */	beq .L_8038D578
/* 8038D500 00356AC0  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8038D504 00356AC4  7C 00 20 50 */	subf r0, r0, r4
/* 8038D508 00356AC8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8038D50C 00356ACC  7C 04 00 00 */	cmpw r4, r0
/* 8038D510 00356AD0  40 81 00 08 */	ble .L_8038D518
/* 8038D514 00356AD4  90 01 00 14 */	stw r0, 0x14(r1)
.L_8038D518:
/* 8038D518 00356AD8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8038D51C 00356ADC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8038D520 00356AE0  7C 04 00 51 */	subf. r0, r4, r0
/* 8038D524 00356AE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8038D528 00356AE8  40 82 00 0C */	bne .L_8038D534
/* 8038D52C 00356AEC  38 00 00 00 */	li r0, 0
/* 8038D530 00356AF0  48 00 00 0C */	b .L_8038D53C
.L_8038D534:
/* 8038D534 00356AF4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8038D538 00356AF8  7C 00 22 14 */	add r0, r0, r4
.L_8038D53C:
/* 8038D53C 00356AFC  90 01 00 08 */	stw r0, 8(r1)
/* 8038D540 00356B00  38 A1 00 10 */	addi r5, r1, 0x10
/* 8038D544 00356B04  38 80 00 00 */	li r4, 0
/* 8038D548 00356B08  80 63 00 04 */	lwz r3, 4(r3)
/* 8038D54C 00356B0C  80 C3 00 00 */	lwz r6, 0(r3)
/* 8038D550 00356B10  81 86 00 20 */	lwz r12, 0x20(r6)
/* 8038D554 00356B14  7D 89 03 A6 */	mtctr r12
/* 8038D558 00356B18  4E 80 04 21 */	bctrl 
/* 8038D55C 00356B1C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8038D560 00356B20  38 A1 00 08 */	addi r5, r1, 8
/* 8038D564 00356B24  38 80 00 01 */	li r4, 1
/* 8038D568 00356B28  80 C3 00 00 */	lwz r6, 0(r3)
/* 8038D56C 00356B2C  81 86 00 1C */	lwz r12, 0x1c(r6)
/* 8038D570 00356B30  7D 89 03 A6 */	mtctr r12
/* 8038D574 00356B34  4E 80 04 21 */	bctrl 
.L_8038D578:
/* 8038D578 00356B38  80 7F 00 04 */	lwz r3, 4(r31)
/* 8038D57C 00356B3C  38 DF 00 1C */	addi r6, r31, 0x1c
/* 8038D580 00356B40  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 8038D584 00356B44  38 80 00 01 */	li r4, 1
/* 8038D588 00356B48  80 E3 00 00 */	lwz r7, 0(r3)
/* 8038D58C 00356B4C  81 87 00 18 */	lwz r12, 0x18(r7)
/* 8038D590 00356B50  7D 89 03 A6 */	mtctr r12
/* 8038D594 00356B54  4E 80 04 21 */	bctrl 
/* 8038D598 00356B58  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8038D59C 00356B5C  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8038D5A0 00356B60  90 7F 00 28 */	stw r3, 0x28(r31)
/* 8038D5A4 00356B64  90 1F 00 24 */	stw r0, 0x24(r31)
.L_8038D5A8:
/* 8038D5A8 00356B68  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8038D5AC 00356B6C  7C 1E 00 00 */	cmpw r30, r0
/* 8038D5B0 00356B70  40 80 00 08 */	bge .L_8038D5B8
/* 8038D5B4 00356B74  7F C0 F3 78 */	mr r0, r30
.L_8038D5B8:
/* 8038D5B8 00356B78  2C 00 00 03 */	cmpwi r0, 3
/* 8038D5BC 00356B7C  40 82 00 4C */	bne .L_8038D608
/* 8038D5C0 00356B80  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 8038D5C4 00356B84  80 1F 00 08 */	lwz r0, 8(r31)
/* 8038D5C8 00356B88  88 66 00 00 */	lbz r3, 0(r6)
/* 8038D5CC 00356B8C  50 03 40 2E */	rlwimi r3, r0, 8, 0, 0x17
/* 8038D5D0 00356B90  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8038D5D4 00356B94  88 06 00 01 */	lbz r0, 1(r6)
/* 8038D5D8 00356B98  50 60 40 2E */	rlwimi r0, r3, 8, 0, 0x17
/* 8038D5DC 00356B9C  88 A6 00 02 */	lbz r5, 2(r6)
/* 8038D5E0 00356BA0  38 C6 00 03 */	addi r6, r6, 3
/* 8038D5E4 00356BA4  50 05 40 2E */	rlwimi r5, r0, 8, 0, 0x17
/* 8038D5E8 00356BA8  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8038D5EC 00356BAC  38 84 00 18 */	addi r4, r4, 0x18
/* 8038D5F0 00356BB0  90 DF 00 28 */	stw r6, 0x28(r31)
/* 8038D5F4 00356BB4  38 03 FF FD */	addi r0, r3, -3
/* 8038D5F8 00356BB8  90 BF 00 08 */	stw r5, 8(r31)
/* 8038D5FC 00356BBC  90 9F 00 0C */	stw r4, 0xc(r31)
/* 8038D600 00356BC0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8038D604 00356BC4  48 00 00 E0 */	b .L_8038D6E4
.L_8038D608:
/* 8038D608 00356BC8  2C 00 00 02 */	cmpwi r0, 2
/* 8038D60C 00356BCC  40 82 00 44 */	bne .L_8038D650
/* 8038D610 00356BD0  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8038D614 00356BD4  80 7F 00 08 */	lwz r3, 8(r31)
/* 8038D618 00356BD8  88 05 00 00 */	lbz r0, 0(r5)
/* 8038D61C 00356BDC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8038D620 00356BE0  50 60 40 2E */	rlwimi r0, r3, 8, 0, 0x17
/* 8038D624 00356BE4  88 C5 00 01 */	lbz r6, 1(r5)
/* 8038D628 00356BE8  38 A5 00 02 */	addi r5, r5, 2
/* 8038D62C 00356BEC  50 06 40 2E */	rlwimi r6, r0, 8, 0, 0x17
/* 8038D630 00356BF0  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8038D634 00356BF4  38 84 00 10 */	addi r4, r4, 0x10
/* 8038D638 00356BF8  90 BF 00 28 */	stw r5, 0x28(r31)
/* 8038D63C 00356BFC  38 03 FF FE */	addi r0, r3, -2
/* 8038D640 00356C00  90 DF 00 08 */	stw r6, 8(r31)
/* 8038D644 00356C04  90 9F 00 0C */	stw r4, 0xc(r31)
/* 8038D648 00356C08  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8038D64C 00356C0C  48 00 00 98 */	b .L_8038D6E4
.L_8038D650:
/* 8038D650 00356C10  2C 00 00 01 */	cmpwi r0, 1
/* 8038D654 00356C14  40 82 00 3C */	bne .L_8038D690
/* 8038D658 00356C18  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8038D65C 00356C1C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8038D660 00356C20  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8038D664 00356C24  88 C5 00 00 */	lbz r6, 0(r5)
/* 8038D668 00356C28  38 A5 00 01 */	addi r5, r5, 1
/* 8038D66C 00356C2C  80 FF 00 08 */	lwz r7, 8(r31)
/* 8038D670 00356C30  38 84 00 08 */	addi r4, r4, 8
/* 8038D674 00356C34  38 03 FF FF */	addi r0, r3, -1
/* 8038D678 00356C38  90 BF 00 28 */	stw r5, 0x28(r31)
/* 8038D67C 00356C3C  50 E6 40 2E */	rlwimi r6, r7, 8, 0, 0x17
/* 8038D680 00356C40  90 DF 00 08 */	stw r6, 8(r31)
/* 8038D684 00356C44  90 9F 00 0C */	stw r4, 0xc(r31)
/* 8038D688 00356C48  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8038D68C 00356C4C  48 00 00 58 */	b .L_8038D6E4
.L_8038D690:
/* 8038D690 00356C50  2C 00 00 04 */	cmpwi r0, 4
/* 8038D694 00356C54  40 82 00 50 */	bne .L_8038D6E4
/* 8038D698 00356C58  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8038D69C 00356C5C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8038D6A0 00356C60  88 05 00 00 */	lbz r0, 0(r5)
/* 8038D6A4 00356C64  50 60 40 2E */	rlwimi r0, r3, 8, 0, 0x17
/* 8038D6A8 00356C68  88 65 00 01 */	lbz r3, 1(r5)
/* 8038D6AC 00356C6C  50 03 40 2E */	rlwimi r3, r0, 8, 0, 0x17
/* 8038D6B0 00356C70  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8038D6B4 00356C74  88 05 00 02 */	lbz r0, 2(r5)
/* 8038D6B8 00356C78  50 60 40 2E */	rlwimi r0, r3, 8, 0, 0x17
/* 8038D6BC 00356C7C  88 C5 00 03 */	lbz r6, 3(r5)
/* 8038D6C0 00356C80  38 A5 00 04 */	addi r5, r5, 4
/* 8038D6C4 00356C84  50 06 40 2E */	rlwimi r6, r0, 8, 0, 0x17
/* 8038D6C8 00356C88  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8038D6CC 00356C8C  38 84 00 20 */	addi r4, r4, 0x20
/* 8038D6D0 00356C90  90 BF 00 28 */	stw r5, 0x28(r31)
/* 8038D6D4 00356C94  38 03 FF FC */	addi r0, r3, -4
/* 8038D6D8 00356C98  90 DF 00 08 */	stw r6, 8(r31)
/* 8038D6DC 00356C9C  90 9F 00 0C */	stw r4, 0xc(r31)
/* 8038D6E0 00356CA0  90 1F 00 24 */	stw r0, 0x24(r31)
.L_8038D6E4:
/* 8038D6E4 00356CA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038D6E8 00356CA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038D6EC 00356CAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8038D6F0 00356CB0  7C 08 03 A6 */	mtlr r0
/* 8038D6F4 00356CB4  38 21 00 20 */	addi r1, r1, 0x20
/* 8038D6F8 00356CB8  4E 80 00 20 */	blr 
.endfn ahxbsr_get_data

.fn AHXBSR_IsDataAvailable, global
/* 8038D6FC 00356CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038D700 00356CC0  7C 08 02 A6 */	mflr r0
/* 8038D704 00356CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038D708 00356CC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038D70C 00356CCC  7C 9F 23 78 */	mr r31, r4
/* 8038D710 00356CD0  93 C1 00 08 */	stw r30, 8(r1)
/* 8038D714 00356CD4  7C 7E 1B 78 */	mr r30, r3
/* 8038D718 00356CD8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8038D71C 00356CDC  7C 00 20 00 */	cmpw r0, r4
/* 8038D720 00356CE0  40 80 00 08 */	bge .L_8038D728
/* 8038D724 00356CE4  4B FF FD 91 */	bl ahxbsr_get_data
.L_8038D728:
/* 8038D728 00356CE8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8038D72C 00356CEC  7C 1F 00 00 */	cmpw r31, r0
/* 8038D730 00356CF0  40 81 00 0C */	ble .L_8038D73C
/* 8038D734 00356CF4  38 60 00 00 */	li r3, 0
/* 8038D738 00356CF8  48 00 00 08 */	b .L_8038D740
.L_8038D73C:
/* 8038D73C 00356CFC  38 60 00 01 */	li r3, 1
.L_8038D740:
/* 8038D740 00356D00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038D744 00356D04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038D748 00356D08  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038D74C 00356D0C  7C 08 03 A6 */	mtlr r0
/* 8038D750 00356D10  38 21 00 10 */	addi r1, r1, 0x10
/* 8038D754 00356D14  4E 80 00 20 */	blr 
.endfn AHXBSR_IsDataAvailable

.fn AHXBSR_GetBitStm, global
/* 8038D758 00356D18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038D75C 00356D1C  7C 08 02 A6 */	mflr r0
/* 8038D760 00356D20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038D764 00356D24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038D768 00356D28  7C 9F 23 78 */	mr r31, r4
/* 8038D76C 00356D2C  93 C1 00 08 */	stw r30, 8(r1)
/* 8038D770 00356D30  7C 7E 1B 78 */	mr r30, r3
/* 8038D774 00356D34  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8038D778 00356D38  7C 00 20 00 */	cmpw r0, r4
/* 8038D77C 00356D3C  40 80 00 08 */	bge .L_8038D784
/* 8038D780 00356D40  4B FF FD 35 */	bl ahxbsr_get_data
.L_8038D784:
/* 8038D784 00356D44  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 8038D788 00356D48  7C 1F 28 00 */	cmpw r31, r5
/* 8038D78C 00356D4C  40 81 00 20 */	ble .L_8038D7AC
/* 8038D790 00356D50  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8038D794 00356D54  38 00 00 00 */	li r0, 0
/* 8038D798 00356D58  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8038D79C 00356D5C  38 60 00 00 */	li r3, 0
/* 8038D7A0 00356D60  7C 04 2A 14 */	add r0, r4, r5
/* 8038D7A4 00356D64  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8038D7A8 00356D68  48 00 00 34 */	b .L_8038D7DC
.L_8038D7AC:
/* 8038D7AC 00356D6C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8038D7B0 00356D70  3C 60 80 52 */	lis r3, ahxbsr_maxi_val@ha
/* 8038D7B4 00356D74  57 E4 10 3A */	slwi r4, r31, 2
/* 8038D7B8 00356D78  80 DE 00 08 */	lwz r6, 8(r30)
/* 8038D7BC 00356D7C  7C BF 28 50 */	subf r5, r31, r5
/* 8038D7C0 00356D80  38 63 AC 10 */	addi r3, r3, ahxbsr_maxi_val@l
/* 8038D7C4 00356D84  7C 00 FA 14 */	add r0, r0, r31
/* 8038D7C8 00356D88  7C 63 20 2E */	lwzx r3, r3, r4
/* 8038D7CC 00356D8C  7C C6 2E 30 */	sraw r6, r6, r5
/* 8038D7D0 00356D90  90 BE 00 0C */	stw r5, 0xc(r30)
/* 8038D7D4 00356D94  7C C3 18 38 */	and r3, r6, r3
/* 8038D7D8 00356D98  90 1E 00 10 */	stw r0, 0x10(r30)
.L_8038D7DC:
/* 8038D7DC 00356D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038D7E0 00356DA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038D7E4 00356DA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038D7E8 00356DA8  7C 08 03 A6 */	mtlr r0
/* 8038D7EC 00356DAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8038D7F0 00356DB0  4E 80 00 20 */	blr 
.endfn AHXBSR_GetBitStm

.fn AHXBSR_Tell, global
/* 8038D7F4 00356DB4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8038D7F8 00356DB8  4E 80 00 20 */	blr 
.endfn AHXBSR_Tell

.fn AHXBSR_SearchSync, global
/* 8038D7FC 00356DBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038D800 00356DC0  7C 08 02 A6 */	mflr r0
/* 8038D804 00356DC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038D808 00356DC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038D80C 00356DCC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8038D810 00356DD0  7C 7E 1B 78 */	mr r30, r3
/* 8038D814 00356DD4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8038D818 00356DD8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8038D81C 00356DDC  54 04 07 7F */	clrlwi. r4, r0, 0x1d
/* 8038D820 00356DE0  41 82 00 50 */	beq .L_8038D870
/* 8038D824 00356DE4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8038D828 00356DE8  23 A4 00 08 */	subfic r29, r4, 8
/* 8038D82C 00356DEC  7C 00 E8 00 */	cmpw r0, r29
/* 8038D830 00356DF0  40 80 00 08 */	bge .L_8038D838
/* 8038D834 00356DF4  4B FF FC 81 */	bl ahxbsr_get_data
.L_8038D838:
/* 8038D838 00356DF8  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8038D83C 00356DFC  7C 1D 20 00 */	cmpw r29, r4
/* 8038D840 00356E00  40 81 00 1C */	ble .L_8038D85C
/* 8038D844 00356E04  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8038D848 00356E08  38 00 00 00 */	li r0, 0
/* 8038D84C 00356E0C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8038D850 00356E10  7C 03 22 14 */	add r0, r3, r4
/* 8038D854 00356E14  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8038D858 00356E18  48 00 00 18 */	b .L_8038D870
.L_8038D85C:
/* 8038D85C 00356E1C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8038D860 00356E20  7C 7D 20 50 */	subf r3, r29, r4
/* 8038D864 00356E24  90 7E 00 0C */	stw r3, 0xc(r30)
/* 8038D868 00356E28  7C 00 EA 14 */	add r0, r0, r29
/* 8038D86C 00356E2C  90 1E 00 10 */	stw r0, 0x10(r30)
.L_8038D870:
/* 8038D870 00356E30  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8038D874 00356E34  2C 00 00 0C */	cmpwi r0, 0xc
/* 8038D878 00356E38  40 80 00 0C */	bge .L_8038D884
/* 8038D87C 00356E3C  7F C3 F3 78 */	mr r3, r30
/* 8038D880 00356E40  4B FF FC 35 */	bl ahxbsr_get_data
.L_8038D884:
/* 8038D884 00356E44  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8038D888 00356E48  2C 04 00 0C */	cmpwi r4, 0xc
/* 8038D88C 00356E4C  40 80 00 20 */	bge .L_8038D8AC
/* 8038D890 00356E50  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8038D894 00356E54  38 00 00 00 */	li r0, 0
/* 8038D898 00356E58  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8038D89C 00356E5C  3B E0 00 00 */	li r31, 0
/* 8038D8A0 00356E60  7C 03 22 14 */	add r0, r3, r4
/* 8038D8A4 00356E64  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8038D8A8 00356E68  48 00 00 24 */	b .L_8038D8CC
.L_8038D8AC:
/* 8038D8AC 00356E6C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8038D8B0 00356E70  38 84 FF F4 */	addi r4, r4, -12
/* 8038D8B4 00356E74  80 BE 00 08 */	lwz r5, 8(r30)
/* 8038D8B8 00356E78  38 03 00 0C */	addi r0, r3, 0xc
/* 8038D8BC 00356E7C  90 9E 00 0C */	stw r4, 0xc(r30)
/* 8038D8C0 00356E80  7C A5 26 30 */	sraw r5, r5, r4
/* 8038D8C4 00356E84  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8038D8C8 00356E88  54 BF 05 3E */	clrlwi r31, r5, 0x14
.L_8038D8CC:
/* 8038D8CC 00356E8C  3B A0 00 00 */	li r29, 0
/* 8038D8D0 00356E90  48 00 00 8C */	b .L_8038D95C
.L_8038D8D4:
/* 8038D8D4 00356E94  57 E0 05 3E */	clrlwi r0, r31, 0x14
/* 8038D8D8 00356E98  28 00 0F FF */	cmplwi r0, 0xfff
/* 8038D8DC 00356E9C  40 82 00 0C */	bne .L_8038D8E8
/* 8038D8E0 00356EA0  38 60 00 01 */	li r3, 1
/* 8038D8E4 00356EA4  48 00 00 C8 */	b .L_8038D9AC
.L_8038D8E8:
/* 8038D8E8 00356EA8  3C 1F 7F FF */	addis r0, r31, 0x7fff
/* 8038D8EC 00356EAC  28 00 00 0C */	cmplwi r0, 0xc
/* 8038D8F0 00356EB0  40 82 00 0C */	bne .L_8038D8FC
/* 8038D8F4 00356EB4  38 60 00 02 */	li r3, 2
/* 8038D8F8 00356EB8  48 00 00 B4 */	b .L_8038D9AC
.L_8038D8FC:
/* 8038D8FC 00356EBC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8038D900 00356EC0  57 FF 20 36 */	slwi r31, r31, 4
/* 8038D904 00356EC4  2C 00 00 04 */	cmpwi r0, 4
/* 8038D908 00356EC8  40 80 00 0C */	bge .L_8038D914
/* 8038D90C 00356ECC  7F C3 F3 78 */	mr r3, r30
/* 8038D910 00356ED0  4B FF FB A5 */	bl ahxbsr_get_data
.L_8038D914:
/* 8038D914 00356ED4  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8038D918 00356ED8  2C 04 00 04 */	cmpwi r4, 4
/* 8038D91C 00356EDC  40 80 00 1C */	bge .L_8038D938
/* 8038D920 00356EE0  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8038D924 00356EE4  38 60 00 00 */	li r3, 0
/* 8038D928 00356EE8  93 BE 00 0C */	stw r29, 0xc(r30)
/* 8038D92C 00356EEC  7C 00 22 14 */	add r0, r0, r4
/* 8038D930 00356EF0  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8038D934 00356EF4  48 00 00 24 */	b .L_8038D958
.L_8038D938:
/* 8038D938 00356EF8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8038D93C 00356EFC  38 84 FF FC */	addi r4, r4, -4
/* 8038D940 00356F00  80 BE 00 08 */	lwz r5, 8(r30)
/* 8038D944 00356F04  38 03 00 04 */	addi r0, r3, 4
/* 8038D948 00356F08  90 9E 00 0C */	stw r4, 0xc(r30)
/* 8038D94C 00356F0C  7C A5 26 30 */	sraw r5, r5, r4
/* 8038D950 00356F10  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8038D954 00356F14  54 A3 07 3E */	clrlwi r3, r5, 0x1c
.L_8038D958:
/* 8038D958 00356F18  7F FF 1B 78 */	or r31, r31, r3
.L_8038D95C:
/* 8038D95C 00356F1C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8038D960 00356F20  38 80 00 01 */	li r4, 1
/* 8038D964 00356F24  80 A3 00 00 */	lwz r5, 0(r3)
/* 8038D968 00356F28  81 85 00 24 */	lwz r12, 0x24(r5)
/* 8038D96C 00356F2C  7D 89 03 A6 */	mtctr r12
/* 8038D970 00356F30  4E 80 04 21 */	bctrl 
/* 8038D974 00356F34  2C 03 00 00 */	cmpwi r3, 0
/* 8038D978 00356F38  40 82 00 24 */	bne .L_8038D99C
/* 8038D97C 00356F3C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8038D980 00356F40  2C 00 00 00 */	cmpwi r0, 0
/* 8038D984 00356F44  40 82 00 18 */	bne .L_8038D99C
/* 8038D988 00356F48  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8038D98C 00356F4C  2C 00 00 00 */	cmpwi r0, 0
/* 8038D990 00356F50  40 82 00 0C */	bne .L_8038D99C
/* 8038D994 00356F54  38 00 00 01 */	li r0, 1
/* 8038D998 00356F58  48 00 00 08 */	b .L_8038D9A0
.L_8038D99C:
/* 8038D99C 00356F5C  38 00 00 00 */	li r0, 0
.L_8038D9A0:
/* 8038D9A0 00356F60  2C 00 00 00 */	cmpwi r0, 0
/* 8038D9A4 00356F64  41 82 FF 30 */	beq .L_8038D8D4
/* 8038D9A8 00356F68  38 60 FF FF */	li r3, -1
.L_8038D9AC:
/* 8038D9AC 00356F6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038D9B0 00356F70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8038D9B4 00356F74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8038D9B8 00356F78  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8038D9BC 00356F7C  7C 08 03 A6 */	mtlr r0
/* 8038D9C0 00356F80  38 21 00 20 */	addi r1, r1, 0x20
/* 8038D9C4 00356F84  4E 80 00 20 */	blr
.endfn AHXBSR_SearchSync


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj ahxbsr_maxi_val, local
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x0000000F
	.4byte 0x0000001F
	.4byte 0x0000003F
	.4byte 0x0000007F
	.4byte 0x000000FF
	.4byte 0x000001FF
	.4byte 0x000003FF
	.4byte 0x000007FF
	.4byte 0x00000FFF
	.4byte 0x00001FFF
	.4byte 0x00003FFF
	.4byte 0x00007FFF
	.4byte 0x0000FFFF
	.4byte 0x0001FFFF
	.4byte 0x0003FFFF
	.4byte 0x0007FFFF
	.4byte 0x000FFFFF
	.4byte 0x001FFFFF
	.4byte 0x003FFFFF
	.4byte 0x007FFFFF
	.4byte 0x00FFFFFF
	.4byte 0x01FFFFFF
	.4byte 0x03FFFFFF
	.4byte 0x07FFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x1FFFFFFF
	.4byte 0x3FFFFFFF
	.4byte 0x7FFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
.endobj ahxbsr_maxi_val
