.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global func_80351290
func_80351290:
/* 80351290 0031A850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80351294 0031A854  7C 08 02 A6 */	mflr r0
/* 80351298 0031A858  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035129C 0031A85C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803512A0 0031A860  48 00 77 11 */	bl OSDisableInterrupts
/* 803512A4 0031A864  80 0D 99 A0 */	lwz r0, lbl_80665B20@sda21(r13)
/* 803512A8 0031A868  2C 00 FF 01 */	cmpwi r0, -255
/* 803512AC 0031A86C  40 82 00 14 */	bne lbl_803512C0
/* 803512B0 0031A870  38 00 FF 02 */	li r0, -254
/* 803512B4 0031A874  90 0D 99 A0 */	stw r0, lbl_80665B20@sda21(r13)
/* 803512B8 0031A878  3B E0 00 00 */	li r31, 0
/* 803512BC 0031A87C  48 00 00 08 */	b lbl_803512C4
lbl_803512C0:
/* 803512C0 0031A880  3B E0 00 01 */	li r31, 1
lbl_803512C4:
/* 803512C4 0031A884  48 00 77 2D */	bl OSRestoreInterrupts
/* 803512C8 0031A888  7F E0 00 34 */	cntlzw r0, r31
/* 803512CC 0031A88C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803512D0 0031A890  54 03 D9 7E */	srwi r3, r0, 5
/* 803512D4 0031A894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803512D8 0031A898  7C 08 03 A6 */	mtlr r0
/* 803512DC 0031A89C  38 21 00 10 */	addi r1, r1, 0x10
/* 803512E0 0031A8A0  4E 80 00 20 */	blr 

.balign 16, 0
.global func_803512F0
func_803512F0:
/* 803512F0 0031A8B0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803512F4 0031A8B4  7C 08 02 A6 */	mflr r0
/* 803512F8 0031A8B8  90 01 00 84 */	stw r0, 0x84(r1)
/* 803512FC 0031A8BC  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80351300 0031A8C0  7C 9F 23 78 */	mr r31, r4
/* 80351304 0031A8C4  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80351308 0031A8C8  7C 7E 1B 78 */	mr r30, r3
/* 8035130C 0031A8CC  40 86 00 24 */	bne cr1, lbl_80351330
/* 80351310 0031A8D0  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80351314 0031A8D4  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80351318 0031A8D8  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8035131C 0031A8DC  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80351320 0031A8E0  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80351324 0031A8E4  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80351328 0031A8E8  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8035132C 0031A8EC  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80351330:
/* 80351330 0031A8F0  90 61 00 08 */	stw r3, 8(r1)
/* 80351334 0031A8F4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80351338 0031A8F8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8035133C 0031A8FC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80351340 0031A900  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80351344 0031A904  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80351348 0031A908  91 21 00 20 */	stw r9, 0x20(r1)
/* 8035134C 0031A90C  91 41 00 24 */	stw r10, 0x24(r1)
/* 80351350 0031A910  4B FF FF 41 */	bl func_80351290
/* 80351354 0031A914  2C 03 00 00 */	cmpwi r3, 0
/* 80351358 0031A918  40 82 00 0C */	bne lbl_80351364
/* 8035135C 0031A91C  38 60 00 00 */	li r3, 0
/* 80351360 0031A920  48 00 00 70 */	b lbl_803513D0
lbl_80351364:
/* 80351364 0031A924  38 81 00 88 */	addi r4, r1, 0x88
/* 80351368 0031A928  38 01 00 08 */	addi r0, r1, 8
/* 8035136C 0031A92C  3C A0 02 00 */	lis r5, 0x200
/* 80351370 0031A930  3C 60 80 5D */	lis r3, lbl_805D4040@ha
/* 80351374 0031A934  90 A1 00 68 */	stw r5, 0x68(r1)
/* 80351378 0031A938  38 C1 00 68 */	addi r6, r1, 0x68
/* 8035137C 0031A93C  7F E5 FB 78 */	mr r5, r31
/* 80351380 0031A940  38 63 40 40 */	addi r3, r3, lbl_805D4040@l
/* 80351384 0031A944  90 81 00 6C */	stw r4, 0x6c(r1)
/* 80351388 0031A948  38 80 01 00 */	li r4, 0x100
/* 8035138C 0031A94C  90 01 00 70 */	stw r0, 0x70(r1)
/* 80351390 0031A950  4B F6 FA A9 */	bl vsnprintf
/* 80351394 0031A954  38 00 00 01 */	li r0, 1
/* 80351398 0031A958  3C 60 80 55 */	lis r3, lbl_805512B8@ha
/* 8035139C 0031A95C  3C A0 80 35 */	lis r5, lbl_803513F0@ha
/* 803513A0 0031A960  93 CD B8 78 */	stw r30, lbl_806679F8@sda21(r13)
/* 803513A4 0031A964  38 63 12 B8 */	addi r3, r3, lbl_805512B8@l
/* 803513A8 0031A968  38 80 00 03 */	li r4, 3
/* 803513AC 0031A96C  90 0D B8 7C */	stw r0, lbl_806679FC@sda21(r13)
/* 803513B0 0031A970  38 A5 13 F0 */	addi r5, r5, lbl_803513F0@l
/* 803513B4 0031A974  38 C0 00 00 */	li r6, 0
/* 803513B8 0031A978  4B FC 5B D9 */	bl func_80316F90
/* 803513BC 0031A97C  2C 03 00 00 */	cmpwi r3, 0
/* 803513C0 0031A980  40 82 00 0C */	bne lbl_803513CC
/* 803513C4 0031A984  38 60 00 01 */	li r3, 1
/* 803513C8 0031A988  48 00 00 08 */	b lbl_803513D0
lbl_803513CC:
/* 803513CC 0031A98C  38 60 00 00 */	li r3, 0
lbl_803513D0:
/* 803513D0 0031A990  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803513D4 0031A994  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 803513D8 0031A998  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 803513DC 0031A99C  7C 08 03 A6 */	mtlr r0
/* 803513E0 0031A9A0  38 21 00 80 */	addi r1, r1, 0x80
/* 803513E4 0031A9A4  4E 80 00 20 */	blr 
.balign 16, 0
lbl_803513F0:
/* 803513F0 0031A9B0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 803513F4 0031A9B4  7C 08 02 A6 */	mflr r0
/* 803513F8 0031A9B8  90 01 00 94 */	stw r0, 0x94(r1)
/* 803513FC 0031A9BC  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80351400 0031A9C0  3F E0 80 5D */	lis r31, lbl_805D4040@ha
/* 80351404 0031A9C4  3B FF 40 40 */	addi r31, r31, lbl_805D4040@l
/* 80351408 0031A9C8  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8035140C 0031A9CC  7C 7E 1B 78 */	mr r30, r3
/* 80351410 0031A9D0  80 8D B8 7C */	lwz r4, lbl_806679FC@sda21(r13)
/* 80351414 0031A9D4  38 04 00 01 */	addi r0, r4, 1
/* 80351418 0031A9D8  90 0D B8 7C */	stw r0, lbl_806679FC@sda21(r13)
/* 8035141C 0031A9DC  2C 00 00 02 */	cmpwi r0, 2
/* 80351420 0031A9E0  40 82 00 68 */	bne lbl_80351488
/* 80351424 0031A9E4  2C 03 00 00 */	cmpwi r3, 0
/* 80351428 0031A9E8  41 80 00 44 */	blt lbl_8035146C
/* 8035142C 0031A9EC  3C C0 80 35 */	lis r6, lbl_803513F0@ha
/* 80351430 0031A9F0  90 6D 99 A0 */	stw r3, lbl_80665B20@sda21(r13)
/* 80351434 0031A9F4  38 C6 13 F0 */	addi r6, r6, lbl_803513F0@l
/* 80351438 0031A9F8  38 80 00 00 */	li r4, 0
/* 8035143C 0031A9FC  38 A0 00 00 */	li r5, 0
/* 80351440 0031AA00  38 E0 00 00 */	li r7, 0
/* 80351444 0031AA04  4B FC 5C CD */	bl func_80317110
/* 80351448 0031AA08  2C 03 00 00 */	cmpwi r3, 0
/* 8035144C 0031AA0C  41 82 04 10 */	beq lbl_8035185C
/* 80351450 0031AA10  81 8D B8 78 */	lwz r12, lbl_806679F8@sda21(r13)
/* 80351454 0031AA14  2C 0C 00 00 */	cmpwi r12, 0
/* 80351458 0031AA18  41 82 04 04 */	beq lbl_8035185C
/* 8035145C 0031AA1C  38 60 00 00 */	li r3, 0
/* 80351460 0031AA20  7D 89 03 A6 */	mtctr r12
/* 80351464 0031AA24  4E 80 04 21 */	bctrl 
/* 80351468 0031AA28  48 00 03 F4 */	b lbl_8035185C
lbl_8035146C:
/* 8035146C 0031AA2C  81 8D B8 78 */	lwz r12, lbl_806679F8@sda21(r13)
/* 80351470 0031AA30  2C 0C 00 00 */	cmpwi r12, 0
/* 80351474 0031AA34  41 82 03 E8 */	beq lbl_8035185C
/* 80351478 0031AA38  38 60 00 00 */	li r3, 0
/* 8035147C 0031AA3C  7D 89 03 A6 */	mtctr r12
/* 80351480 0031AA40  4E 80 04 21 */	bctrl 
/* 80351484 0031AA44  48 00 03 D8 */	b lbl_8035185C
lbl_80351488:
/* 80351488 0031AA48  2C 00 00 03 */	cmpwi r0, 3
/* 8035148C 0031AA4C  40 82 00 68 */	bne lbl_803514F4
/* 80351490 0031AA50  2C 03 00 00 */	cmpwi r3, 0
/* 80351494 0031AA54  40 82 00 44 */	bne lbl_803514D8
/* 80351498 0031AA58  3C C0 80 35 */	lis r6, lbl_803513F0@ha
/* 8035149C 0031AA5C  80 6D 99 A0 */	lwz r3, lbl_80665B20@sda21(r13)
/* 803514A0 0031AA60  38 9F 01 00 */	addi r4, r31, 0x100
/* 803514A4 0031AA64  38 A0 01 00 */	li r5, 0x100
/* 803514A8 0031AA68  38 C6 13 F0 */	addi r6, r6, lbl_803513F0@l
/* 803514AC 0031AA6C  38 E0 00 00 */	li r7, 0
/* 803514B0 0031AA70  4B FC 5D 11 */	bl func_803171C0
/* 803514B4 0031AA74  2C 03 00 00 */	cmpwi r3, 0
/* 803514B8 0031AA78  41 82 03 A4 */	beq lbl_8035185C
/* 803514BC 0031AA7C  81 8D B8 78 */	lwz r12, lbl_806679F8@sda21(r13)
/* 803514C0 0031AA80  2C 0C 00 00 */	cmpwi r12, 0
/* 803514C4 0031AA84  41 82 03 98 */	beq lbl_8035185C
/* 803514C8 0031AA88  38 60 00 00 */	li r3, 0
/* 803514CC 0031AA8C  7D 89 03 A6 */	mtctr r12
/* 803514D0 0031AA90  4E 80 04 21 */	bctrl 
/* 803514D4 0031AA94  48 00 03 88 */	b lbl_8035185C
lbl_803514D8:
/* 803514D8 0031AA98  81 8D B8 78 */	lwz r12, lbl_806679F8@sda21(r13)
/* 803514DC 0031AA9C  2C 0C 00 00 */	cmpwi r12, 0
/* 803514E0 0031AAA0  41 82 03 7C */	beq lbl_8035185C
/* 803514E4 0031AAA4  38 60 00 00 */	li r3, 0
/* 803514E8 0031AAA8  7D 89 03 A6 */	mtctr r12
/* 803514EC 0031AAAC  4E 80 04 21 */	bctrl 
/* 803514F0 0031AAB0  48 00 03 6C */	b lbl_8035185C
lbl_803514F4:
/* 803514F4 0031AAB4  2C 00 00 04 */	cmpwi r0, 4
/* 803514F8 0031AAB8  40 82 00 68 */	bne lbl_80351560
/* 803514FC 0031AABC  2C 03 01 00 */	cmpwi r3, 0x100
/* 80351500 0031AAC0  40 82 00 44 */	bne lbl_80351544
/* 80351504 0031AAC4  3C C0 80 35 */	lis r6, lbl_803513F0@ha
/* 80351508 0031AAC8  80 6D 99 A0 */	lwz r3, lbl_80665B20@sda21(r13)
/* 8035150C 0031AACC  38 C6 13 F0 */	addi r6, r6, lbl_803513F0@l
/* 80351510 0031AAD0  38 80 00 00 */	li r4, 0
/* 80351514 0031AAD4  38 A0 00 00 */	li r5, 0
/* 80351518 0031AAD8  38 E0 00 00 */	li r7, 0
/* 8035151C 0031AADC  4B FC 5B F5 */	bl func_80317110
/* 80351520 0031AAE0  2C 03 00 00 */	cmpwi r3, 0
/* 80351524 0031AAE4  41 82 03 38 */	beq lbl_8035185C
/* 80351528 0031AAE8  81 8D B8 78 */	lwz r12, lbl_806679F8@sda21(r13)
/* 8035152C 0031AAEC  2C 0C 00 00 */	cmpwi r12, 0
/* 80351530 0031AAF0  41 82 03 2C */	beq lbl_8035185C
/* 80351534 0031AAF4  38 60 00 00 */	li r3, 0
/* 80351538 0031AAF8  7D 89 03 A6 */	mtctr r12
/* 8035153C 0031AAFC  4E 80 04 21 */	bctrl 
/* 80351540 0031AB00  48 00 03 1C */	b lbl_8035185C
lbl_80351544:
/* 80351544 0031AB04  81 8D B8 78 */	lwz r12, lbl_806679F8@sda21(r13)
/* 80351548 0031AB08  2C 0C 00 00 */	cmpwi r12, 0
/* 8035154C 0031AB0C  41 82 03 10 */	beq lbl_8035185C
/* 80351550 0031AB10  38 60 00 00 */	li r3, 0
/* 80351554 0031AB14  7D 89 03 A6 */	mtctr r12
/* 80351558 0031AB18  4E 80 04 21 */	bctrl 
/* 8035155C 0031AB1C  48 00 03 00 */	b lbl_8035185C
lbl_80351560:
/* 80351560 0031AB20  2C 00 00 05 */	cmpwi r0, 5
/* 80351564 0031AB24  40 82 01 58 */	bne lbl_803516BC
/* 80351568 0031AB28  2C 03 00 00 */	cmpwi r3, 0
/* 8035156C 0031AB2C  40 82 01 34 */	bne lbl_803516A0
/* 80351570 0031AB30  38 7F 01 00 */	addi r3, r31, 0x100
/* 80351574 0031AB34  38 00 00 00 */	li r0, 0
/* 80351578 0031AB38  98 03 00 FF */	stb r0, 0xff(r3)
/* 8035157C 0031AB3C  4B F7 31 95 */	bl func_802C4710
/* 80351580 0031AB40  7C 7E 1B 78 */	mr r30, r3
/* 80351584 0031AB44  38 7F 02 00 */	addi r3, r31, 0x200
/* 80351588 0031AB48  38 80 00 20 */	li r4, 0x20
/* 8035158C 0031AB4C  38 A0 00 FE */	li r5, 0xfe
/* 80351590 0031AB50  4B CB 2D C1 */	bl memset
/* 80351594 0031AB54  48 00 B3 CD */	bl OSGetTime
/* 80351598 0031AB58  38 A1 00 58 */	addi r5, r1, 0x58
/* 8035159C 0031AB5C  48 00 B4 C5 */	bl OSTicksToCalendarTime
/* 803515A0 0031AB60  4B FF F9 11 */	bl nandGetHomeDir
/* 803515A4 0031AB64  7C 64 1B 78 */	mr r4, r3
/* 803515A8 0031AB68  38 61 00 18 */	addi r3, r1, 0x18
/* 803515AC 0031AB6C  38 84 00 07 */	addi r4, r4, 7
/* 803515B0 0031AB70  38 A0 00 11 */	li r5, 0x11
/* 803515B4 0031AB74  4B F7 11 C5 */	bl strncpy
/* 803515B8 0031AB78  3C 60 82 08 */	lis r3, 0x82082083@ha
/* 803515BC 0031AB7C  38 A0 00 2D */	li r5, 0x2d
/* 803515C0 0031AB80  38 03 20 83 */	addi r0, r3, 0x82082083@l
/* 803515C4 0031AB84  38 80 00 00 */	li r4, 0
/* 803515C8 0031AB88  7C 00 F0 96 */	mulhw r0, r0, r30
/* 803515CC 0031AB8C  98 A1 00 20 */	stb r5, 0x20(r1)
/* 803515D0 0031AB90  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 803515D4 0031AB94  3C A0 80 55 */	lis r5, lbl_805512D4@ha
/* 803515D8 0031AB98  98 81 00 29 */	stb r4, 0x29(r1)
/* 803515DC 0031AB9C  38 81 00 18 */	addi r4, r1, 0x18
/* 803515E0 0031ABA0  90 61 00 08 */	stw r3, 8(r1)
/* 803515E4 0031ABA4  7C 00 F2 14 */	add r0, r0, r30
/* 803515E8 0031ABA8  7C 00 2E 70 */	srawi r0, r0, 5
/* 803515EC 0031ABAC  38 DF 00 00 */	addi r6, r31, 0
/* 803515F0 0031ABB0  80 E1 00 58 */	lwz r7, 0x58(r1)
/* 803515F4 0031ABB4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803515F8 0031ABB8  7C 00 1A 14 */	add r0, r0, r3
/* 803515FC 0031ABBC  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80351600 0031ABC0  1C 00 00 3F */	mulli r0, r0, 0x3f
/* 80351604 0031ABC4  38 7F 02 00 */	addi r3, r31, 0x200
/* 80351608 0031ABC8  90 81 00 10 */	stw r4, 0x10(r1)
/* 8035160C 0031ABCC  38 A5 12 D4 */	addi r5, r5, lbl_805512D4@l
/* 80351610 0031ABD0  38 80 01 00 */	li r4, 0x100
/* 80351614 0031ABD4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80351618 0031ABD8  7C C0 F0 50 */	subf r6, r0, r30
/* 8035161C 0031ABDC  81 01 00 68 */	lwz r8, 0x68(r1)
/* 80351620 0031ABE0  38 C6 00 01 */	addi r6, r6, 1
/* 80351624 0031ABE4  80 E1 00 6C */	lwz r7, 0x6c(r1)
/* 80351628 0031ABE8  81 21 00 64 */	lwz r9, 0x64(r1)
/* 8035162C 0031ABEC  39 08 00 01 */	addi r8, r8, 1
/* 80351630 0031ABF0  81 41 00 60 */	lwz r10, 0x60(r1)
/* 80351634 0031ABF4  4C C6 31 82 */	crclr 6
/* 80351638 0031ABF8  4B F6 F9 0D */	bl snprintf
/* 8035163C 0031ABFC  2C 03 01 00 */	cmpwi r3, 0x100
/* 80351640 0031AC00  40 80 00 10 */	bge lbl_80351650
/* 80351644 0031AC04  38 9F 02 00 */	addi r4, r31, 0x200
/* 80351648 0031AC08  38 00 00 20 */	li r0, 0x20
/* 8035164C 0031AC0C  7C 04 19 AE */	stbx r0, r4, r3
lbl_80351650:
/* 80351650 0031AC10  38 9F 02 00 */	addi r4, r31, 0x200
/* 80351654 0031AC14  38 60 00 0D */	li r3, 0xd
/* 80351658 0031AC18  38 00 00 0A */	li r0, 0xa
/* 8035165C 0031AC1C  3C C0 80 35 */	lis r6, lbl_803513F0@ha
/* 80351660 0031AC20  98 64 00 FE */	stb r3, 0xfe(r4)
/* 80351664 0031AC24  38 C6 13 F0 */	addi r6, r6, lbl_803513F0@l
/* 80351668 0031AC28  80 6D 99 A0 */	lwz r3, lbl_80665B20@sda21(r13)
/* 8035166C 0031AC2C  38 A0 01 00 */	li r5, 0x100
/* 80351670 0031AC30  98 04 00 FF */	stb r0, 0xff(r4)
/* 80351674 0031AC34  38 E0 00 00 */	li r7, 0
/* 80351678 0031AC38  4B FC 5C 19 */	bl func_80317290
/* 8035167C 0031AC3C  2C 03 00 00 */	cmpwi r3, 0
/* 80351680 0031AC40  41 82 01 DC */	beq lbl_8035185C
/* 80351684 0031AC44  81 8D B8 78 */	lwz r12, lbl_806679F8@sda21(r13)
/* 80351688 0031AC48  2C 0C 00 00 */	cmpwi r12, 0
/* 8035168C 0031AC4C  41 82 01 D0 */	beq lbl_8035185C
/* 80351690 0031AC50  38 60 00 00 */	li r3, 0
/* 80351694 0031AC54  7D 89 03 A6 */	mtctr r12
/* 80351698 0031AC58  4E 80 04 21 */	bctrl 
/* 8035169C 0031AC5C  48 00 01 C0 */	b lbl_8035185C
lbl_803516A0:
/* 803516A0 0031AC60  81 8D B8 78 */	lwz r12, lbl_806679F8@sda21(r13)
/* 803516A4 0031AC64  2C 0C 00 00 */	cmpwi r12, 0
/* 803516A8 0031AC68  41 82 01 B4 */	beq lbl_8035185C
/* 803516AC 0031AC6C  38 60 00 00 */	li r3, 0
/* 803516B0 0031AC70  7D 89 03 A6 */	mtctr r12
/* 803516B4 0031AC74  4E 80 04 21 */	bctrl 
/* 803516B8 0031AC78  48 00 01 A4 */	b lbl_8035185C
lbl_803516BC:
/* 803516BC 0031AC7C  2C 00 00 06 */	cmpwi r0, 6
/* 803516C0 0031AC80  40 82 00 74 */	bne lbl_80351734
/* 803516C4 0031AC84  2C 03 01 00 */	cmpwi r3, 0x100
/* 803516C8 0031AC88  40 82 00 50 */	bne lbl_80351718
/* 803516CC 0031AC8C  38 7F 01 00 */	addi r3, r31, 0x100
/* 803516D0 0031AC90  4B F7 30 41 */	bl func_802C4710
/* 803516D4 0031AC94  7C 60 1B 78 */	mr r0, r3
/* 803516D8 0031AC98  3C C0 80 35 */	lis r6, lbl_803513F0@ha
/* 803516DC 0031AC9C  80 6D 99 A0 */	lwz r3, lbl_80665B20@sda21(r13)
/* 803516E0 0031ACA0  54 04 40 2E */	slwi r4, r0, 8
/* 803516E4 0031ACA4  38 C6 13 F0 */	addi r6, r6, lbl_803513F0@l
/* 803516E8 0031ACA8  38 A0 00 00 */	li r5, 0
/* 803516EC 0031ACAC  38 E0 00 00 */	li r7, 0
/* 803516F0 0031ACB0  4B FC 5A 21 */	bl func_80317110
/* 803516F4 0031ACB4  2C 03 00 00 */	cmpwi r3, 0
/* 803516F8 0031ACB8  41 82 01 64 */	beq lbl_8035185C
/* 803516FC 0031ACBC  81 8D B8 78 */	lwz r12, lbl_806679F8@sda21(r13)
/* 80351700 0031ACC0  2C 0C 00 00 */	cmpwi r12, 0
/* 80351704 0031ACC4  41 82 01 58 */	beq lbl_8035185C
/* 80351708 0031ACC8  38 60 00 00 */	li r3, 0
/* 8035170C 0031ACCC  7D 89 03 A6 */	mtctr r12
/* 80351710 0031ACD0  4E 80 04 21 */	bctrl 
/* 80351714 0031ACD4  48 00 01 48 */	b lbl_8035185C
lbl_80351718:
/* 80351718 0031ACD8  81 8D B8 78 */	lwz r12, lbl_806679F8@sda21(r13)
/* 8035171C 0031ACDC  2C 0C 00 00 */	cmpwi r12, 0
/* 80351720 0031ACE0  41 82 01 3C */	beq lbl_8035185C
/* 80351724 0031ACE4  38 60 00 00 */	li r3, 0
/* 80351728 0031ACE8  7D 89 03 A6 */	mtctr r12
/* 8035172C 0031ACEC  4E 80 04 21 */	bctrl 
/* 80351730 0031ACF0  48 00 01 2C */	b lbl_8035185C
lbl_80351734:
/* 80351734 0031ACF4  2C 00 00 07 */	cmpwi r0, 7
/* 80351738 0031ACF8  40 82 00 74 */	bne lbl_803517AC
/* 8035173C 0031ACFC  38 7F 01 00 */	addi r3, r31, 0x100
/* 80351740 0031AD00  4B F7 2F D1 */	bl func_802C4710
/* 80351744 0031AD04  54 60 40 2E */	slwi r0, r3, 8
/* 80351748 0031AD08  7C 1E 00 00 */	cmpw r30, r0
/* 8035174C 0031AD0C  40 82 00 44 */	bne lbl_80351790
/* 80351750 0031AD10  3C C0 80 35 */	lis r6, lbl_803513F0@ha
/* 80351754 0031AD14  80 6D 99 A0 */	lwz r3, lbl_80665B20@sda21(r13)
/* 80351758 0031AD18  38 9F 02 00 */	addi r4, r31, 0x200
/* 8035175C 0031AD1C  38 A0 01 00 */	li r5, 0x100
/* 80351760 0031AD20  38 C6 13 F0 */	addi r6, r6, lbl_803513F0@l
/* 80351764 0031AD24  38 E0 00 00 */	li r7, 0
/* 80351768 0031AD28  4B FC 5B 29 */	bl func_80317290
/* 8035176C 0031AD2C  2C 03 00 00 */	cmpwi r3, 0
/* 80351770 0031AD30  41 82 00 EC */	beq lbl_8035185C
/* 80351774 0031AD34  81 8D B8 78 */	lwz r12, lbl_806679F8@sda21(r13)
/* 80351778 0031AD38  2C 0C 00 00 */	cmpwi r12, 0
/* 8035177C 0031AD3C  41 82 00 E0 */	beq lbl_8035185C
/* 80351780 0031AD40  38 60 00 00 */	li r3, 0
/* 80351784 0031AD44  7D 89 03 A6 */	mtctr r12
/* 80351788 0031AD48  4E 80 04 21 */	bctrl 
/* 8035178C 0031AD4C  48 00 00 D0 */	b lbl_8035185C
lbl_80351790:
/* 80351790 0031AD50  81 8D B8 78 */	lwz r12, lbl_806679F8@sda21(r13)
/* 80351794 0031AD54  2C 0C 00 00 */	cmpwi r12, 0
/* 80351798 0031AD58  41 82 00 C4 */	beq lbl_8035185C
/* 8035179C 0031AD5C  38 60 00 00 */	li r3, 0
/* 803517A0 0031AD60  7D 89 03 A6 */	mtctr r12
/* 803517A4 0031AD64  4E 80 04 21 */	bctrl 
/* 803517A8 0031AD68  48 00 00 B4 */	b lbl_8035185C
lbl_803517AC:
/* 803517AC 0031AD6C  2C 00 00 08 */	cmpwi r0, 8
/* 803517B0 0031AD70  40 82 00 60 */	bne lbl_80351810
/* 803517B4 0031AD74  2C 03 01 00 */	cmpwi r3, 0x100
/* 803517B8 0031AD78  40 82 00 3C */	bne lbl_803517F4
/* 803517BC 0031AD7C  3C 80 80 35 */	lis r4, lbl_803513F0@ha
/* 803517C0 0031AD80  80 6D 99 A0 */	lwz r3, lbl_80665B20@sda21(r13)
/* 803517C4 0031AD84  38 84 13 F0 */	addi r4, r4, lbl_803513F0@l
/* 803517C8 0031AD88  38 A0 00 00 */	li r5, 0
/* 803517CC 0031AD8C  4B FC 5B 85 */	bl func_80317350
/* 803517D0 0031AD90  2C 03 00 00 */	cmpwi r3, 0
/* 803517D4 0031AD94  41 82 00 88 */	beq lbl_8035185C
/* 803517D8 0031AD98  81 8D B8 78 */	lwz r12, lbl_806679F8@sda21(r13)
/* 803517DC 0031AD9C  2C 0C 00 00 */	cmpwi r12, 0
/* 803517E0 0031ADA0  41 82 00 7C */	beq lbl_8035185C
/* 803517E4 0031ADA4  38 60 00 00 */	li r3, 0
/* 803517E8 0031ADA8  7D 89 03 A6 */	mtctr r12
/* 803517EC 0031ADAC  4E 80 04 21 */	bctrl 
/* 803517F0 0031ADB0  48 00 00 6C */	b lbl_8035185C
lbl_803517F4:
/* 803517F4 0031ADB4  81 8D B8 78 */	lwz r12, lbl_806679F8@sda21(r13)
/* 803517F8 0031ADB8  2C 0C 00 00 */	cmpwi r12, 0
/* 803517FC 0031ADBC  41 82 00 60 */	beq lbl_8035185C
/* 80351800 0031ADC0  38 60 00 00 */	li r3, 0
/* 80351804 0031ADC4  7D 89 03 A6 */	mtctr r12
/* 80351808 0031ADC8  4E 80 04 21 */	bctrl 
/* 8035180C 0031ADCC  48 00 00 50 */	b lbl_8035185C
lbl_80351810:
/* 80351810 0031ADD0  2C 00 00 09 */	cmpwi r0, 9
/* 80351814 0031ADD4  40 82 00 48 */	bne lbl_8035185C
/* 80351818 0031ADD8  2C 03 00 00 */	cmpwi r3, 0
/* 8035181C 0031ADDC  40 82 00 28 */	bne lbl_80351844
/* 80351820 0031ADE0  81 8D B8 78 */	lwz r12, lbl_806679F8@sda21(r13)
/* 80351824 0031ADE4  38 00 FF 01 */	li r0, -255
/* 80351828 0031ADE8  90 0D 99 A0 */	stw r0, lbl_80665B20@sda21(r13)
/* 8035182C 0031ADEC  2C 0C 00 00 */	cmpwi r12, 0
/* 80351830 0031ADF0  41 82 00 2C */	beq lbl_8035185C
/* 80351834 0031ADF4  38 60 00 01 */	li r3, 1
/* 80351838 0031ADF8  7D 89 03 A6 */	mtctr r12
/* 8035183C 0031ADFC  4E 80 04 21 */	bctrl 
/* 80351840 0031AE00  48 00 00 1C */	b lbl_8035185C
lbl_80351844:
/* 80351844 0031AE04  81 8D B8 78 */	lwz r12, lbl_806679F8@sda21(r13)
/* 80351848 0031AE08  2C 0C 00 00 */	cmpwi r12, 0
/* 8035184C 0031AE0C  41 82 00 10 */	beq lbl_8035185C
/* 80351850 0031AE10  38 60 00 00 */	li r3, 0
/* 80351854 0031AE14  7D 89 03 A6 */	mtctr r12
/* 80351858 0031AE18  4E 80 04 21 */	bctrl 
lbl_8035185C:
/* 8035185C 0031AE1C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80351860 0031AE20  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80351864 0031AE24  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80351868 0031AE28  7C 08 03 A6 */	mtlr r0
/* 8035186C 0031AE2C  38 21 00 90 */	addi r1, r1, 0x90
/* 80351870 0031AE30  4E 80 00 20 */	blr 
.balign 16, 0