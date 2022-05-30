.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global func_8034F350
func_8034F350:
/* 8034F350 00318910  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034F354 00318914  7C 08 02 A6 */	mflr r0
/* 8034F358 00318918  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034F35C 0031891C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034F360 00318920  7C DF 33 78 */	mr r31, r6
/* 8034F364 00318924  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034F368 00318928  7C BE 2B 78 */	mr r30, r5
/* 8034F36C 0031892C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034F370 00318930  7C 9D 23 78 */	mr r29, r4
/* 8034F374 00318934  93 81 00 10 */	stw r28, 0x10(r1)
/* 8034F378 00318938  7C 7C 1B 78 */	mr r28, r3
/* 8034F37C 0031893C  48 00 0E 85 */	bl nandIsInitialized
/* 8034F380 00318940  2C 03 00 00 */	cmpwi r3, 0
/* 8034F384 00318944  40 82 00 0C */	bne lbl_8034F390
/* 8034F388 00318948  38 60 FF 80 */	li r3, -128
/* 8034F38C 0031894C  48 00 00 24 */	b lbl_8034F3B0
lbl_8034F390:
/* 8034F390 00318950  93 DF 00 04 */	stw r30, 4(r31)
/* 8034F394 00318954  7F 83 E3 78 */	mr r3, r28
/* 8034F398 00318958  7F A4 EB 78 */	mr r4, r29
/* 8034F39C 0031895C  7F E5 FB 78 */	mr r5, r31
/* 8034F3A0 00318960  38 C0 00 01 */	li r6, 1
/* 8034F3A4 00318964  38 E0 00 00 */	li r7, 0
/* 8034F3A8 00318968  4B FF FD F9 */	bl func_8034F1A0
/* 8034F3AC 0031896C  48 00 0E 75 */	bl nandConvertErrorCode
lbl_8034F3B0:
/* 8034F3B0 00318970  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034F3B4 00318974  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034F3B8 00318978  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034F3BC 0031897C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034F3C0 00318980  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8034F3C4 00318984  7C 08 03 A6 */	mtlr r0
/* 8034F3C8 00318988  38 21 00 20 */	addi r1, r1, 0x20
/* 8034F3CC 0031898C  4E 80 00 20 */	blr

.balign 16, 0
.global func_8034F3D0
func_8034F3D0:
/* 8034F3D0 00318990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034F3D4 00318994  7C 08 02 A6 */	mflr r0
/* 8034F3D8 00318998  2C 03 00 00 */	cmpwi r3, 0
/* 8034F3DC 0031899C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034F3E0 003189A0  38 04 00 53 */	addi r0, r4, 0x53
/* 8034F3E4 003189A4  54 06 00 34 */	rlwinm r6, r0, 0, 0, 0x1a
/* 8034F3E8 003189A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034F3EC 003189AC  7C 9F 23 78 */	mr r31, r4
/* 8034F3F0 003189B0  40 82 00 2C */	bne lbl_8034F41C
/* 8034F3F4 003189B4  80 A4 00 74 */	lwz r5, 0x74(r4)
/* 8034F3F8 003189B8  2C 05 00 00 */	cmpwi r5, 0
/* 8034F3FC 003189BC  41 82 00 0C */	beq lbl_8034F408
/* 8034F400 003189C0  80 06 00 00 */	lwz r0, 0(r6)
/* 8034F404 003189C4  90 05 00 00 */	stw r0, 0(r5)
lbl_8034F408:
/* 8034F408 003189C8  80 84 00 78 */	lwz r4, 0x78(r4)
/* 8034F40C 003189CC  2C 04 00 00 */	cmpwi r4, 0
/* 8034F410 003189D0  41 82 00 0C */	beq lbl_8034F41C
/* 8034F414 003189D4  80 06 00 04 */	lwz r0, 4(r6)
/* 8034F418 003189D8  90 04 00 00 */	stw r0, 0(r4)
lbl_8034F41C:
/* 8034F41C 003189DC  48 00 0E 05 */	bl nandConvertErrorCode
/* 8034F420 003189E0  81 9F 00 04 */	lwz r12, 4(r31)
/* 8034F424 003189E4  7F E4 FB 78 */	mr r4, r31
/* 8034F428 003189E8  7D 89 03 A6 */	mtctr r12
/* 8034F42C 003189EC  4E 80 04 21 */	bctrl 
/* 8034F430 003189F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034F434 003189F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034F438 003189F8  7C 08 03 A6 */	mtlr r0
/* 8034F43C 003189FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8034F440 00318A00  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8034F450
func_8034F450:
/* 8034F450 00318A10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034F454 00318A14  7C 08 02 A6 */	mflr r0
/* 8034F458 00318A18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034F45C 00318A1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034F460 00318A20  7C DF 33 78 */	mr r31, r6
/* 8034F464 00318A24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034F468 00318A28  7C BE 2B 78 */	mr r30, r5
/* 8034F46C 00318A2C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034F470 00318A30  7C 9D 23 78 */	mr r29, r4
/* 8034F474 00318A34  93 81 00 10 */	stw r28, 0x10(r1)
/* 8034F478 00318A38  7C 7C 1B 78 */	mr r28, r3
/* 8034F47C 00318A3C  48 00 0D 85 */	bl nandIsInitialized
/* 8034F480 00318A40  2C 03 00 00 */	cmpwi r3, 0
/* 8034F484 00318A44  40 82 00 0C */	bne lbl_8034F490
/* 8034F488 00318A48  38 60 FF 80 */	li r3, -128
/* 8034F48C 00318A4C  48 00 00 34 */	b lbl_8034F4C0
lbl_8034F490:
/* 8034F490 00318A50  38 60 00 00 */	li r3, 0
/* 8034F494 00318A54  93 DF 00 04 */	stw r30, 4(r31)
/* 8034F498 00318A58  38 1F 00 53 */	addi r0, r31, 0x53
/* 8034F49C 00318A5C  3C A0 80 35 */	lis r5, func_8034F3D0@ha
/* 8034F4A0 00318A60  93 BF 00 74 */	stw r29, 0x74(r31)
/* 8034F4A4 00318A64  7F E6 FB 78 */	mr r6, r31
/* 8034F4A8 00318A68  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 8034F4AC 00318A6C  38 A5 F3 D0 */	addi r5, r5, func_8034F3D0@l
/* 8034F4B0 00318A70  90 7F 00 78 */	stw r3, 0x78(r31)
/* 8034F4B4 00318A74  80 7C 00 00 */	lwz r3, 0(r28)
/* 8034F4B8 00318A78  4B FC 7B 99 */	bl func_80317050
/* 8034F4BC 00318A7C  48 00 0D 65 */	bl nandConvertErrorCode
lbl_8034F4C0:
/* 8034F4C0 00318A80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034F4C4 00318A84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034F4C8 00318A88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034F4CC 00318A8C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034F4D0 00318A90  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8034F4D4 00318A94  7C 08 03 A6 */	mtlr r0
/* 8034F4D8 00318A98  38 21 00 20 */	addi r1, r1, 0x20
/* 8034F4DC 00318A9C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8034F4E0
func_8034F4E0:
/* 8034F4E0 00318AA0  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8034F4E4 00318AA4  38 E0 00 00 */	li r7, 0
/* 8034F4E8 00318AA8  41 82 00 08 */	beq lbl_8034F4F0
/* 8034F4EC 00318AAC  60 E7 00 10 */	ori r7, r7, 0x10
lbl_8034F4F0:
/* 8034F4F0 00318AB0  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 8034F4F4 00318AB4  41 82 00 08 */	beq lbl_8034F4FC
/* 8034F4F8 00318AB8  60 E7 00 20 */	ori r7, r7, 0x20
lbl_8034F4FC:
/* 8034F4FC 00318ABC  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 8034F500 00318AC0  41 82 00 08 */	beq lbl_8034F508
/* 8034F504 00318AC4  60 E7 00 04 */	ori r7, r7, 4
lbl_8034F508:
/* 8034F508 00318AC8  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 8034F50C 00318ACC  41 82 00 08 */	beq lbl_8034F514
/* 8034F510 00318AD0  60 E7 00 08 */	ori r7, r7, 8
lbl_8034F514:
/* 8034F514 00318AD4  54 C0 07 FF */	clrlwi. r0, r6, 0x1f
/* 8034F518 00318AD8  41 82 00 08 */	beq lbl_8034F520
/* 8034F51C 00318ADC  60 E7 00 01 */	ori r7, r7, 1
lbl_8034F520:
/* 8034F520 00318AE0  54 C0 07 BD */	rlwinm. r0, r6, 0, 0x1e, 0x1e
/* 8034F524 00318AE4  41 82 00 08 */	beq lbl_8034F52C
/* 8034F528 00318AE8  60 E7 00 02 */	ori r7, r7, 2
lbl_8034F52C:
/* 8034F52C 00318AEC  98 E3 00 00 */	stb r7, 0(r3)
/* 8034F530 00318AF0  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8034F540
func_8034F540:
/* 8034F540 00318B00  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8034F544 00318B04  38 00 00 00 */	li r0, 0
/* 8034F548 00318B08  90 04 00 00 */	stw r0, 0(r4)
/* 8034F54C 00318B0C  90 05 00 00 */	stw r0, 0(r5)
/* 8034F550 00318B10  90 06 00 00 */	stw r0, 0(r6)
/* 8034F554 00318B14  41 82 00 10 */	beq lbl_8034F564
/* 8034F558 00318B18  80 04 00 00 */	lwz r0, 0(r4)
/* 8034F55C 00318B1C  60 00 00 01 */	ori r0, r0, 1
/* 8034F560 00318B20  90 04 00 00 */	stw r0, 0(r4)
lbl_8034F564:
/* 8034F564 00318B24  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8034F568 00318B28  41 82 00 10 */	beq lbl_8034F578
/* 8034F56C 00318B2C  80 04 00 00 */	lwz r0, 0(r4)
/* 8034F570 00318B30  60 00 00 02 */	ori r0, r0, 2
/* 8034F574 00318B34  90 04 00 00 */	stw r0, 0(r4)
lbl_8034F578:
/* 8034F578 00318B38  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8034F57C 00318B3C  41 82 00 10 */	beq lbl_8034F58C
/* 8034F580 00318B40  80 05 00 00 */	lwz r0, 0(r5)
/* 8034F584 00318B44  60 00 00 01 */	ori r0, r0, 1
/* 8034F588 00318B48  90 05 00 00 */	stw r0, 0(r5)
lbl_8034F58C:
/* 8034F58C 00318B4C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8034F590 00318B50  41 82 00 10 */	beq lbl_8034F5A0
/* 8034F594 00318B54  80 05 00 00 */	lwz r0, 0(r5)
/* 8034F598 00318B58  60 00 00 02 */	ori r0, r0, 2
/* 8034F59C 00318B5C  90 05 00 00 */	stw r0, 0(r5)
lbl_8034F5A0:
/* 8034F5A0 00318B60  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8034F5A4 00318B64  41 82 00 10 */	beq lbl_8034F5B4
/* 8034F5A8 00318B68  80 06 00 00 */	lwz r0, 0(r6)
/* 8034F5AC 00318B6C  60 00 00 01 */	ori r0, r0, 1
/* 8034F5B0 00318B70  90 06 00 00 */	stw r0, 0(r6)
lbl_8034F5B4:
/* 8034F5B4 00318B74  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8034F5B8 00318B78  4D 82 00 20 */	beqlr 
/* 8034F5BC 00318B7C  80 06 00 00 */	lwz r0, 0(r6)
/* 8034F5C0 00318B80  60 00 00 02 */	ori r0, r0, 2
/* 8034F5C4 00318B84  90 06 00 00 */	stw r0, 0(r6)
/* 8034F5C8 00318B88  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8034F5D0
func_8034F5D0:
/* 8034F5D0 00318B90  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8034F5D4 00318B94  7C 08 02 A6 */	mflr r0
/* 8034F5D8 00318B98  90 01 00 74 */	stw r0, 0x74(r1)
/* 8034F5DC 00318B9C  38 00 00 00 */	li r0, 0
/* 8034F5E0 00318BA0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8034F5E4 00318BA4  7C FF 3B 78 */	mr r31, r7
/* 8034F5E8 00318BA8  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8034F5EC 00318BAC  7C DE 33 78 */	mr r30, r6
/* 8034F5F0 00318BB0  93 A1 00 64 */	stw r29, 0x64(r1)
/* 8034F5F4 00318BB4  7C BD 2B 78 */	mr r29, r5
/* 8034F5F8 00318BB8  93 81 00 60 */	stw r28, 0x60(r1)
/* 8034F5FC 00318BBC  7C 9C 23 78 */	mr r28, r4
/* 8034F600 00318BC0  7C 64 1B 78 */	mr r4, r3
/* 8034F604 00318BC4  38 61 00 20 */	addi r3, r1, 0x20
/* 8034F608 00318BC8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8034F60C 00318BCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034F610 00318BD0  90 01 00 28 */	stw r0, 0x28(r1)
/* 8034F614 00318BD4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8034F618 00318BD8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8034F61C 00318BDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8034F620 00318BE0  90 01 00 38 */	stw r0, 0x38(r1)
/* 8034F624 00318BE4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8034F628 00318BE8  90 01 00 40 */	stw r0, 0x40(r1)
/* 8034F62C 00318BEC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8034F630 00318BF0  90 01 00 48 */	stw r0, 0x48(r1)
/* 8034F634 00318BF4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8034F638 00318BF8  90 01 00 50 */	stw r0, 0x50(r1)
/* 8034F63C 00318BFC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8034F640 00318C00  90 01 00 58 */	stw r0, 0x58(r1)
/* 8034F644 00318C04  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8034F648 00318C08  48 00 0D 49 */	bl nandGenerateAbsPath
/* 8034F64C 00318C0C  2C 1F 00 00 */	cmpwi r31, 0
/* 8034F650 00318C10  40 82 00 1C */	bne lbl_8034F66C
/* 8034F654 00318C14  38 61 00 20 */	addi r3, r1, 0x20
/* 8034F658 00318C18  48 00 0B 49 */	bl nandIsUnderPrivatePath
/* 8034F65C 00318C1C  2C 03 00 00 */	cmpwi r3, 0
/* 8034F660 00318C20  41 82 00 0C */	beq lbl_8034F66C
/* 8034F664 00318C24  38 60 FF 9A */	li r3, -102
/* 8034F668 00318C28  48 00 00 9C */	b lbl_8034F704
lbl_8034F66C:
/* 8034F66C 00318C2C  2C 1E 00 00 */	cmpwi r30, 0
/* 8034F670 00318C30  41 82 00 34 */	beq lbl_8034F6A4
/* 8034F674 00318C34  3D 40 80 35 */	lis r10, lbl_8034F730@ha
/* 8034F678 00318C38  93 A1 00 08 */	stw r29, 8(r1)
/* 8034F67C 00318C3C  7F 84 E3 78 */	mr r4, r28
/* 8034F680 00318C40  38 61 00 20 */	addi r3, r1, 0x20
/* 8034F684 00318C44  38 BC 00 04 */	addi r5, r28, 4
/* 8034F688 00318C48  38 DD 00 20 */	addi r6, r29, 0x20
/* 8034F68C 00318C4C  38 FD 00 24 */	addi r7, r29, 0x24
/* 8034F690 00318C50  39 1D 00 28 */	addi r8, r29, 0x28
/* 8034F694 00318C54  39 3D 00 2C */	addi r9, r29, 0x2c
/* 8034F698 00318C58  39 4A F7 30 */	addi r10, r10, lbl_8034F730@l
/* 8034F69C 00318C5C  4B FC 6F E5 */	bl func_80316680
/* 8034F6A0 00318C60  48 00 00 64 */	b lbl_8034F704
lbl_8034F6A4:
/* 8034F6A4 00318C64  38 00 00 00 */	li r0, 0
/* 8034F6A8 00318C68  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8034F6AC 00318C6C  7F 84 E3 78 */	mr r4, r28
/* 8034F6B0 00318C70  38 61 00 20 */	addi r3, r1, 0x20
/* 8034F6B4 00318C74  90 01 00 18 */	stw r0, 0x18(r1)
/* 8034F6B8 00318C78  38 BC 00 04 */	addi r5, r28, 4
/* 8034F6BC 00318C7C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8034F6C0 00318C80  38 E1 00 18 */	addi r7, r1, 0x18
/* 8034F6C4 00318C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034F6C8 00318C88  39 01 00 14 */	addi r8, r1, 0x14
/* 8034F6CC 00318C8C  39 21 00 10 */	addi r9, r1, 0x10
/* 8034F6D0 00318C90  90 01 00 10 */	stw r0, 0x10(r1)
/* 8034F6D4 00318C94  4B FC 6E 4D */	bl func_80316520
/* 8034F6D8 00318C98  2C 03 00 00 */	cmpwi r3, 0
/* 8034F6DC 00318C9C  7C 7F 1B 78 */	mr r31, r3
/* 8034F6E0 00318CA0  40 82 00 20 */	bne lbl_8034F700
/* 8034F6E4 00318CA4  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8034F6E8 00318CA8  38 7C 00 07 */	addi r3, r28, 7
/* 8034F6EC 00318CAC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8034F6F0 00318CB0  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 8034F6F4 00318CB4  4B FF FD ED */	bl func_8034F4E0
/* 8034F6F8 00318CB8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034F6FC 00318CBC  98 1C 00 06 */	stb r0, 6(r28)
lbl_8034F700:
/* 8034F700 00318CC0  7F E3 FB 78 */	mr r3, r31
lbl_8034F704:
/* 8034F704 00318CC4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8034F708 00318CC8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8034F70C 00318CCC  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8034F710 00318CD0  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 8034F714 00318CD4  83 81 00 60 */	lwz r28, 0x60(r1)
/* 8034F718 00318CD8  7C 08 03 A6 */	mtlr r0
/* 8034F71C 00318CDC  38 21 00 70 */	addi r1, r1, 0x70
/* 8034F720 00318CE0  4E 80 00 20 */	blr 
.balign 16, 0
lbl_8034F730:
/* 8034F730 00318CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034F734 00318CF4  7C 08 02 A6 */	mflr r0
/* 8034F738 00318CF8  2C 03 00 00 */	cmpwi r3, 0
/* 8034F73C 00318CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034F740 00318D00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034F744 00318D04  7C 9F 23 78 */	mr r31, r4
/* 8034F748 00318D08  93 C1 00 08 */	stw r30, 8(r1)
/* 8034F74C 00318D0C  7C 7E 1B 78 */	mr r30, r3
/* 8034F750 00318D10  40 82 00 24 */	bne lbl_8034F774
/* 8034F754 00318D14  80 64 00 14 */	lwz r3, 0x14(r4)
/* 8034F758 00318D18  80 04 00 20 */	lwz r0, 0x20(r4)
/* 8034F75C 00318D1C  98 03 00 06 */	stb r0, 6(r3)
/* 8034F760 00318D20  38 63 00 07 */	addi r3, r3, 7
/* 8034F764 00318D24  80 84 00 24 */	lwz r4, 0x24(r4)
/* 8034F768 00318D28  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8034F76C 00318D2C  80 DF 00 2C */	lwz r6, 0x2c(r31)
/* 8034F770 00318D30  4B FF FD 71 */	bl func_8034F4E0
lbl_8034F774:
/* 8034F774 00318D34  7F C3 F3 78 */	mr r3, r30
/* 8034F778 00318D38  48 00 0A A9 */	bl nandConvertErrorCode
/* 8034F77C 00318D3C  81 9F 00 04 */	lwz r12, 4(r31)
/* 8034F780 00318D40  7F E4 FB 78 */	mr r4, r31
/* 8034F784 00318D44  7D 89 03 A6 */	mtctr r12
/* 8034F788 00318D48  4E 80 04 21 */	bctrl 
/* 8034F78C 00318D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034F790 00318D50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034F794 00318D54  83 C1 00 08 */	lwz r30, 8(r1)
/* 8034F798 00318D58  7C 08 03 A6 */	mtlr r0
/* 8034F79C 00318D5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8034F7A0 00318D60  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8034F7B0
func_8034F7B0:
/* 8034F7B0 00318D70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034F7B4 00318D74  7C 08 02 A6 */	mflr r0
/* 8034F7B8 00318D78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034F7BC 00318D7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034F7C0 00318D80  7C 9F 23 78 */	mr r31, r4
/* 8034F7C4 00318D84  93 C1 00 08 */	stw r30, 8(r1)
/* 8034F7C8 00318D88  7C 7E 1B 78 */	mr r30, r3
/* 8034F7CC 00318D8C  48 00 0A 35 */	bl nandIsInitialized
/* 8034F7D0 00318D90  2C 03 00 00 */	cmpwi r3, 0
/* 8034F7D4 00318D94  41 82 00 24 */	beq lbl_8034F7F8
/* 8034F7D8 00318D98  7F C3 F3 78 */	mr r3, r30
/* 8034F7DC 00318D9C  7F E4 FB 78 */	mr r4, r31
/* 8034F7E0 00318DA0  38 A0 00 00 */	li r5, 0
/* 8034F7E4 00318DA4  38 C0 00 00 */	li r6, 0
/* 8034F7E8 00318DA8  38 E0 00 01 */	li r7, 1
/* 8034F7EC 00318DAC  4B FF FD E5 */	bl func_8034F5D0
/* 8034F7F0 00318DB0  48 00 0A 31 */	bl nandConvertErrorCode
/* 8034F7F4 00318DB4  48 00 00 08 */	b lbl_8034F7FC
lbl_8034F7F8:
/* 8034F7F8 00318DB8  38 60 FF 80 */	li r3, -128
lbl_8034F7FC:
/* 8034F7FC 00318DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034F800 00318DC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034F804 00318DC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8034F808 00318DC8  7C 08 03 A6 */	mtlr r0
/* 8034F80C 00318DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8034F810 00318DD0  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8034F820
func_8034F820:
/* 8034F820 00318DE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034F824 00318DE4  7C 08 02 A6 */	mflr r0
/* 8034F828 00318DE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034F82C 00318DEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034F830 00318DF0  7C DF 33 78 */	mr r31, r6
/* 8034F834 00318DF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034F838 00318DF8  7C BE 2B 78 */	mr r30, r5
/* 8034F83C 00318DFC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034F840 00318E00  7C 9D 23 78 */	mr r29, r4
/* 8034F844 00318E04  93 81 00 10 */	stw r28, 0x10(r1)
/* 8034F848 00318E08  7C 7C 1B 78 */	mr r28, r3
/* 8034F84C 00318E0C  48 00 09 B5 */	bl nandIsInitialized
/* 8034F850 00318E10  2C 03 00 00 */	cmpwi r3, 0
/* 8034F854 00318E14  40 82 00 0C */	bne lbl_8034F860
/* 8034F858 00318E18  38 60 FF 80 */	li r3, -128
/* 8034F85C 00318E1C  48 00 00 28 */	b lbl_8034F884
lbl_8034F860:
/* 8034F860 00318E20  93 DF 00 04 */	stw r30, 4(r31)
/* 8034F864 00318E24  7F 83 E3 78 */	mr r3, r28
/* 8034F868 00318E28  7F A4 EB 78 */	mr r4, r29
/* 8034F86C 00318E2C  7F E5 FB 78 */	mr r5, r31
/* 8034F870 00318E30  93 BF 00 14 */	stw r29, 0x14(r31)
/* 8034F874 00318E34  38 C0 00 01 */	li r6, 1
/* 8034F878 00318E38  38 E0 00 01 */	li r7, 1
/* 8034F87C 00318E3C  4B FF FD 55 */	bl func_8034F5D0
/* 8034F880 00318E40  48 00 09 A1 */	bl nandConvertErrorCode
lbl_8034F884:
/* 8034F884 00318E44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034F888 00318E48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034F88C 00318E4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034F890 00318E50  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034F894 00318E54  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8034F898 00318E58  7C 08 03 A6 */	mtlr r0
/* 8034F89C 00318E5C  38 21 00 20 */	addi r1, r1, 0x20
/* 8034F8A0 00318E60  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8034F8B0
func_8034F8B0:
/* 8034F8B0 00318E70  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8034F8B4 00318E74  7C 08 02 A6 */	mflr r0
/* 8034F8B8 00318E78  90 01 00 64 */	stw r0, 0x64(r1)
/* 8034F8BC 00318E7C  39 61 00 60 */	addi r11, r1, 0x60
/* 8034F8C0 00318E80  4B F6 A8 95 */	bl _savegpr_27
/* 8034F8C4 00318E84  38 00 00 00 */	li r0, 0
/* 8034F8C8 00318E88  90 01 00 08 */	stw r0, 8(r1)
/* 8034F8CC 00318E8C  7C 9B 23 78 */	mr r27, r4
/* 8034F8D0 00318E90  7C 64 1B 78 */	mr r4, r3
/* 8034F8D4 00318E94  90 01 00 0C */	stw r0, 0xc(r1)
/* 8034F8D8 00318E98  7C BC 2B 78 */	mr r28, r5
/* 8034F8DC 00318E9C  7C DD 33 78 */	mr r29, r6
/* 8034F8E0 00318EA0  7C FE 3B 78 */	mr r30, r7
/* 8034F8E4 00318EA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8034F8E8 00318EA8  38 61 00 08 */	addi r3, r1, 8
/* 8034F8EC 00318EAC  3B E0 00 00 */	li r31, 0
/* 8034F8F0 00318EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034F8F4 00318EB4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8034F8F8 00318EB8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8034F8FC 00318EBC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8034F900 00318EC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034F904 00318EC4  90 01 00 28 */	stw r0, 0x28(r1)
/* 8034F908 00318EC8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8034F90C 00318ECC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8034F910 00318ED0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8034F914 00318ED4  90 01 00 38 */	stw r0, 0x38(r1)
/* 8034F918 00318ED8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8034F91C 00318EDC  90 01 00 40 */	stw r0, 0x40(r1)
/* 8034F920 00318EE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8034F924 00318EE4  48 00 0A 6D */	bl nandGenerateAbsPath
/* 8034F928 00318EE8  2C 1E 00 00 */	cmpwi r30, 0
/* 8034F92C 00318EEC  40 82 00 1C */	bne lbl_8034F948
/* 8034F930 00318EF0  38 61 00 08 */	addi r3, r1, 8
/* 8034F934 00318EF4  48 00 08 2D */	bl nandIsPrivatePath
/* 8034F938 00318EF8  2C 03 00 00 */	cmpwi r3, 0
/* 8034F93C 00318EFC  41 82 00 0C */	beq lbl_8034F948
/* 8034F940 00318F00  38 60 FF 9A */	li r3, -102
/* 8034F944 00318F04  48 00 00 64 */	b lbl_8034F9A8
lbl_8034F948:
/* 8034F948 00318F08  2C 1B 00 03 */	cmpwi r27, 3
/* 8034F94C 00318F0C  41 82 00 18 */	beq lbl_8034F964
/* 8034F950 00318F10  2C 1B 00 01 */	cmpwi r27, 1
/* 8034F954 00318F14  41 82 00 18 */	beq lbl_8034F96C
/* 8034F958 00318F18  2C 1B 00 02 */	cmpwi r27, 2
/* 8034F95C 00318F1C  41 82 00 18 */	beq lbl_8034F974
/* 8034F960 00318F20  48 00 00 18 */	b lbl_8034F978
lbl_8034F964:
/* 8034F964 00318F24  3B E0 00 03 */	li r31, 3
/* 8034F968 00318F28  48 00 00 10 */	b lbl_8034F978
lbl_8034F96C:
/* 8034F96C 00318F2C  3B E0 00 01 */	li r31, 1
/* 8034F970 00318F30  48 00 00 08 */	b lbl_8034F978
lbl_8034F974:
/* 8034F974 00318F34  3B E0 00 02 */	li r31, 2
lbl_8034F978:
/* 8034F978 00318F38  2C 1D 00 00 */	cmpwi r29, 0
/* 8034F97C 00318F3C  41 82 00 20 */	beq lbl_8034F99C
/* 8034F980 00318F40  3C A0 80 35 */	lis r5, lbl_8034FBE0@ha
/* 8034F984 00318F44  7F E4 FB 78 */	mr r4, r31
/* 8034F988 00318F48  7F 86 E3 78 */	mr r6, r28
/* 8034F98C 00318F4C  38 61 00 08 */	addi r3, r1, 8
/* 8034F990 00318F50  38 A5 FB E0 */	addi r5, r5, lbl_8034FBE0@l
/* 8034F994 00318F54  4B FC 75 FD */	bl func_80316F90
/* 8034F998 00318F58  48 00 00 10 */	b lbl_8034F9A8
lbl_8034F99C:
/* 8034F99C 00318F5C  7F E4 FB 78 */	mr r4, r31
/* 8034F9A0 00318F60  38 61 00 08 */	addi r3, r1, 8
/* 8034F9A4 00318F64  4B FC 75 1D */	bl func_80316EC0
lbl_8034F9A8:
/* 8034F9A8 00318F68  39 61 00 60 */	addi r11, r1, 0x60
/* 8034F9AC 00318F6C  4B F6 A7 F5 */	bl _restgpr_27
/* 8034F9B0 00318F70  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8034F9B4 00318F74  7C 08 03 A6 */	mtlr r0
/* 8034F9B8 00318F78  38 21 00 60 */	addi r1, r1, 0x60
/* 8034F9BC 00318F7C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8034F9C0
func_8034F9C0:
/* 8034F9C0 00318F80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034F9C4 00318F84  7C 08 02 A6 */	mflr r0
/* 8034F9C8 00318F88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034F9CC 00318F8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034F9D0 00318F90  7C BF 2B 78 */	mr r31, r5
/* 8034F9D4 00318F94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034F9D8 00318F98  7C 9E 23 78 */	mr r30, r4
/* 8034F9DC 00318F9C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034F9E0 00318FA0  7C 7D 1B 78 */	mr r29, r3
/* 8034F9E4 00318FA4  48 00 08 1D */	bl nandIsInitialized
/* 8034F9E8 00318FA8  2C 03 00 00 */	cmpwi r3, 0
/* 8034F9EC 00318FAC  40 82 00 0C */	bne lbl_8034F9F8
/* 8034F9F0 00318FB0  38 60 FF 80 */	li r3, -128
/* 8034F9F4 00318FB4  48 00 00 3C */	b lbl_8034FA30
lbl_8034F9F8:
/* 8034F9F8 00318FB8  7F A3 EB 78 */	mr r3, r29
/* 8034F9FC 00318FBC  7F E4 FB 78 */	mr r4, r31
/* 8034FA00 00318FC0  38 A0 00 00 */	li r5, 0
/* 8034FA04 00318FC4  38 C0 00 00 */	li r6, 0
/* 8034FA08 00318FC8  38 E0 00 00 */	li r7, 0
/* 8034FA0C 00318FCC  4B FF FE A5 */	bl func_8034F8B0
/* 8034FA10 00318FD0  2C 03 00 00 */	cmpwi r3, 0
/* 8034FA14 00318FD4  41 80 00 18 */	blt lbl_8034FA2C
/* 8034FA18 00318FD8  90 7E 00 00 */	stw r3, 0(r30)
/* 8034FA1C 00318FDC  38 00 00 01 */	li r0, 1
/* 8034FA20 00318FE0  38 60 00 00 */	li r3, 0
/* 8034FA24 00318FE4  98 1E 00 8A */	stb r0, 0x8a(r30)
/* 8034FA28 00318FE8  48 00 00 08 */	b lbl_8034FA30
lbl_8034FA2C:
/* 8034FA2C 00318FEC  48 00 07 F5 */	bl nandConvertErrorCode
lbl_8034FA30:
/* 8034FA30 00318FF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034FA34 00318FF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034FA38 00318FF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034FA3C 00318FFC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034FA40 00319000  7C 08 03 A6 */	mtlr r0
/* 8034FA44 00319004  38 21 00 20 */	addi r1, r1, 0x20
/* 8034FA48 00319008  4E 80 00 20 */	blr 

.balign 16, 0
.global NANDPrivateOpen
NANDPrivateOpen:
/* 8034FA50 00319010  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034FA54 00319014  7C 08 02 A6 */	mflr r0
/* 8034FA58 00319018  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034FA5C 0031901C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034FA60 00319020  7C BF 2B 78 */	mr r31, r5
/* 8034FA64 00319024  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034FA68 00319028  7C 9E 23 78 */	mr r30, r4
/* 8034FA6C 0031902C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034FA70 00319030  7C 7D 1B 78 */	mr r29, r3
/* 8034FA74 00319034  48 00 07 8D */	bl nandIsInitialized
/* 8034FA78 00319038  2C 03 00 00 */	cmpwi r3, 0
/* 8034FA7C 0031903C  40 82 00 0C */	bne lbl_8034FA88
/* 8034FA80 00319040  38 60 FF 80 */	li r3, -128
/* 8034FA84 00319044  48 00 00 3C */	b lbl_8034FAC0
lbl_8034FA88:
/* 8034FA88 00319048  7F A3 EB 78 */	mr r3, r29
/* 8034FA8C 0031904C  7F E4 FB 78 */	mr r4, r31
/* 8034FA90 00319050  38 A0 00 00 */	li r5, 0
/* 8034FA94 00319054  38 C0 00 00 */	li r6, 0
/* 8034FA98 00319058  38 E0 00 01 */	li r7, 1
/* 8034FA9C 0031905C  4B FF FE 15 */	bl func_8034F8B0
/* 8034FAA0 00319060  2C 03 00 00 */	cmpwi r3, 0
/* 8034FAA4 00319064  41 80 00 18 */	blt lbl_8034FABC
/* 8034FAA8 00319068  90 7E 00 00 */	stw r3, 0(r30)
/* 8034FAAC 0031906C  38 00 00 01 */	li r0, 1
/* 8034FAB0 00319070  38 60 00 00 */	li r3, 0
/* 8034FAB4 00319074  98 1E 00 8A */	stb r0, 0x8a(r30)
/* 8034FAB8 00319078  48 00 00 08 */	b lbl_8034FAC0
lbl_8034FABC:
/* 8034FABC 0031907C  48 00 07 65 */	bl nandConvertErrorCode
lbl_8034FAC0:
/* 8034FAC0 00319080  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034FAC4 00319084  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034FAC8 00319088  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034FACC 0031908C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034FAD0 00319090  7C 08 03 A6 */	mtlr r0
/* 8034FAD4 00319094  38 21 00 20 */	addi r1, r1, 0x20
/* 8034FAD8 00319098  4E 80 00 20 */	blr 

.balign 16, 0
.global NANDOpenAsync
NANDOpenAsync:
/* 8034FAE0 003190A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034FAE4 003190A4  7C 08 02 A6 */	mflr r0
/* 8034FAE8 003190A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034FAEC 003190AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8034FAF0 003190B0  4B F6 A6 65 */	bl _savegpr_27
/* 8034FAF4 003190B4  7C 7B 1B 78 */	mr r27, r3
/* 8034FAF8 003190B8  7C 9C 23 78 */	mr r28, r4
/* 8034FAFC 003190BC  7C BD 2B 78 */	mr r29, r5
/* 8034FB00 003190C0  7C DE 33 78 */	mr r30, r6
/* 8034FB04 003190C4  7C FF 3B 78 */	mr r31, r7
/* 8034FB08 003190C8  48 00 06 F9 */	bl nandIsInitialized
/* 8034FB0C 003190CC  2C 03 00 00 */	cmpwi r3, 0
/* 8034FB10 003190D0  40 82 00 0C */	bne lbl_8034FB1C
/* 8034FB14 003190D4  38 60 FF 80 */	li r3, -128
/* 8034FB18 003190D8  48 00 00 28 */	b lbl_8034FB40
lbl_8034FB1C:
/* 8034FB1C 003190DC  93 DF 00 04 */	stw r30, 4(r31)
/* 8034FB20 003190E0  7F 63 DB 78 */	mr r3, r27
/* 8034FB24 003190E4  7F A4 EB 78 */	mr r4, r29
/* 8034FB28 003190E8  7F E5 FB 78 */	mr r5, r31
/* 8034FB2C 003190EC  93 9F 00 08 */	stw r28, 8(r31)
/* 8034FB30 003190F0  38 C0 00 01 */	li r6, 1
/* 8034FB34 003190F4  38 E0 00 00 */	li r7, 0
/* 8034FB38 003190F8  4B FF FD 79 */	bl func_8034F8B0
/* 8034FB3C 003190FC  48 00 06 E5 */	bl nandConvertErrorCode
lbl_8034FB40:
/* 8034FB40 00319100  39 61 00 20 */	addi r11, r1, 0x20
/* 8034FB44 00319104  4B F6 A6 5D */	bl _restgpr_27
/* 8034FB48 00319108  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034FB4C 0031910C  7C 08 03 A6 */	mtlr r0
/* 8034FB50 00319110  38 21 00 20 */	addi r1, r1, 0x20
/* 8034FB54 00319114  4E 80 00 20 */	blr 

.balign 16, 0
.global func_8034FB60
func_8034FB60:
/* 8034FB60 00319120  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034FB64 00319124  7C 08 02 A6 */	mflr r0
/* 8034FB68 00319128  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034FB6C 0031912C  39 61 00 20 */	addi r11, r1, 0x20
/* 8034FB70 00319130  4B F6 A5 E5 */	bl _savegpr_27
/* 8034FB74 00319134  7C 7B 1B 78 */	mr r27, r3
/* 8034FB78 00319138  7C 9C 23 78 */	mr r28, r4
/* 8034FB7C 0031913C  7C BD 2B 78 */	mr r29, r5
/* 8034FB80 00319140  7C DE 33 78 */	mr r30, r6
/* 8034FB84 00319144  7C FF 3B 78 */	mr r31, r7
/* 8034FB88 00319148  48 00 06 79 */	bl nandIsInitialized
/* 8034FB8C 0031914C  2C 03 00 00 */	cmpwi r3, 0
/* 8034FB90 00319150  40 82 00 0C */	bne lbl_8034FB9C
/* 8034FB94 00319154  38 60 FF 80 */	li r3, -128
/* 8034FB98 00319158  48 00 00 28 */	b lbl_8034FBC0
lbl_8034FB9C:
/* 8034FB9C 0031915C  93 DF 00 04 */	stw r30, 4(r31)
/* 8034FBA0 00319160  7F 63 DB 78 */	mr r3, r27
/* 8034FBA4 00319164  7F A4 EB 78 */	mr r4, r29
/* 8034FBA8 00319168  7F E5 FB 78 */	mr r5, r31
/* 8034FBAC 0031916C  93 9F 00 08 */	stw r28, 8(r31)
/* 8034FBB0 00319170  38 C0 00 01 */	li r6, 1
/* 8034FBB4 00319174  38 E0 00 01 */	li r7, 1
/* 8034FBB8 00319178  4B FF FC F9 */	bl func_8034F8B0
/* 8034FBBC 0031917C  48 00 06 65 */	bl nandConvertErrorCode
lbl_8034FBC0:
/* 8034FBC0 00319180  39 61 00 20 */	addi r11, r1, 0x20
/* 8034FBC4 00319184  4B F6 A5 DD */	bl _restgpr_27
/* 8034FBC8 00319188  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034FBCC 0031918C  7C 08 03 A6 */	mtlr r0
/* 8034FBD0 00319190  38 21 00 20 */	addi r1, r1, 0x20
/* 8034FBD4 00319194  4E 80 00 20 */	blr 
.balign 16, 0
lbl_8034FBE0:
/* 8034FBE0 003191A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034FBE4 003191A4  7C 08 02 A6 */	mflr r0
/* 8034FBE8 003191A8  2C 03 00 00 */	cmpwi r3, 0
/* 8034FBEC 003191AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034FBF0 003191B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034FBF4 003191B4  7C 9F 23 78 */	mr r31, r4
/* 8034FBF8 003191B8  41 80 00 38 */	blt lbl_8034FC30
/* 8034FBFC 003191BC  80 A4 00 08 */	lwz r5, 8(r4)
/* 8034FC00 003191C0  38 C0 00 02 */	li r6, 2
/* 8034FC04 003191C4  38 00 00 01 */	li r0, 1
/* 8034FC08 003191C8  90 65 00 00 */	stw r3, 0(r5)
/* 8034FC0C 003191CC  38 60 00 00 */	li r3, 0
/* 8034FC10 003191D0  80 A4 00 08 */	lwz r5, 8(r4)
/* 8034FC14 003191D4  98 C5 00 89 */	stb r6, 0x89(r5)
/* 8034FC18 003191D8  80 A4 00 08 */	lwz r5, 8(r4)
/* 8034FC1C 003191DC  98 05 00 8A */	stb r0, 0x8a(r5)
/* 8034FC20 003191E0  81 84 00 04 */	lwz r12, 4(r4)
/* 8034FC24 003191E4  7D 89 03 A6 */	mtctr r12
/* 8034FC28 003191E8  4E 80 04 21 */	bctrl 
/* 8034FC2C 003191EC  48 00 00 18 */	b lbl_8034FC44
lbl_8034FC30:
/* 8034FC30 003191F0  48 00 05 F1 */	bl nandConvertErrorCode
/* 8034FC34 003191F4  81 9F 00 04 */	lwz r12, 4(r31)
/* 8034FC38 003191F8  7F E4 FB 78 */	mr r4, r31
/* 8034FC3C 003191FC  7D 89 03 A6 */	mtctr r12
/* 8034FC40 00319200  4E 80 04 21 */	bctrl 
lbl_8034FC44:
/* 8034FC44 00319204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034FC48 00319208  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034FC4C 0031920C  7C 08 03 A6 */	mtlr r0
/* 8034FC50 00319210  38 21 00 10 */	addi r1, r1, 0x10
/* 8034FC54 00319214  4E 80 00 20 */	blr 

.balign 16, 0
.global NANDClose
NANDClose:
/* 8034FC60 00319220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034FC64 00319224  7C 08 02 A6 */	mflr r0
/* 8034FC68 00319228  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034FC6C 0031922C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034FC70 00319230  7C 7F 1B 78 */	mr r31, r3
/* 8034FC74 00319234  48 00 05 8D */	bl nandIsInitialized
/* 8034FC78 00319238  2C 03 00 00 */	cmpwi r3, 0
/* 8034FC7C 0031923C  40 82 00 0C */	bne lbl_8034FC88
/* 8034FC80 00319240  38 60 FF 80 */	li r3, -128
/* 8034FC84 00319244  48 00 00 34 */	b lbl_8034FCB8
lbl_8034FC88:
/* 8034FC88 00319248  88 1F 00 8A */	lbz r0, 0x8a(r31)
/* 8034FC8C 0031924C  28 00 00 01 */	cmplwi r0, 1
/* 8034FC90 00319250  41 82 00 0C */	beq lbl_8034FC9C
/* 8034FC94 00319254  38 60 FF F8 */	li r3, -8
/* 8034FC98 00319258  48 00 00 20 */	b lbl_8034FCB8
lbl_8034FC9C:
/* 8034FC9C 0031925C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8034FCA0 00319260  4B FC 76 A1 */	bl func_80317340
/* 8034FCA4 00319264  2C 03 00 00 */	cmpwi r3, 0
/* 8034FCA8 00319268  40 82 00 0C */	bne lbl_8034FCB4
/* 8034FCAC 0031926C  38 00 00 02 */	li r0, 2
/* 8034FCB0 00319270  98 1F 00 8A */	stb r0, 0x8a(r31)
lbl_8034FCB4:
/* 8034FCB4 00319274  48 00 05 6D */	bl nandConvertErrorCode
lbl_8034FCB8:
/* 8034FCB8 00319278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034FCBC 0031927C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034FCC0 00319280  7C 08 03 A6 */	mtlr r0
/* 8034FCC4 00319284  38 21 00 10 */	addi r1, r1, 0x10
/* 8034FCC8 00319288  4E 80 00 20 */	blr 

.balign 16, 0
.global NANDCloseAsync
NANDCloseAsync:
/* 8034FCD0 00319290  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034FCD4 00319294  7C 08 02 A6 */	mflr r0
/* 8034FCD8 00319298  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034FCDC 0031929C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034FCE0 003192A0  7C BF 2B 78 */	mr r31, r5
/* 8034FCE4 003192A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034FCE8 003192A8  7C 9E 23 78 */	mr r30, r4
/* 8034FCEC 003192AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034FCF0 003192B0  7C 7D 1B 78 */	mr r29, r3
/* 8034FCF4 003192B4  48 00 05 0D */	bl nandIsInitialized
/* 8034FCF8 003192B8  2C 03 00 00 */	cmpwi r3, 0
/* 8034FCFC 003192BC  40 82 00 0C */	bne lbl_8034FD08
/* 8034FD00 003192C0  38 60 FF 80 */	li r3, -128
/* 8034FD04 003192C4  48 00 00 38 */	b lbl_8034FD3C
lbl_8034FD08:
/* 8034FD08 003192C8  88 1D 00 8A */	lbz r0, 0x8a(r29)
/* 8034FD0C 003192CC  28 00 00 01 */	cmplwi r0, 1
/* 8034FD10 003192D0  41 82 00 0C */	beq lbl_8034FD1C
/* 8034FD14 003192D4  38 60 FF F8 */	li r3, -8
/* 8034FD18 003192D8  48 00 00 24 */	b lbl_8034FD3C
lbl_8034FD1C:
/* 8034FD1C 003192DC  93 DF 00 04 */	stw r30, 4(r31)
/* 8034FD20 003192E0  3C 80 80 35 */	lis r4, lbl_8034FD60@ha
/* 8034FD24 003192E4  7F E5 FB 78 */	mr r5, r31
/* 8034FD28 003192E8  93 BF 00 08 */	stw r29, 8(r31)
/* 8034FD2C 003192EC  38 84 FD 60 */	addi r4, r4, lbl_8034FD60@l
/* 8034FD30 003192F0  80 7D 00 00 */	lwz r3, 0(r29)
/* 8034FD34 003192F4  4B FC 76 1D */	bl func_80317350
/* 8034FD38 003192F8  48 00 04 E9 */	bl nandConvertErrorCode
lbl_8034FD3C:
/* 8034FD3C 003192FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034FD40 00319300  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034FD44 00319304  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034FD48 00319308  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034FD4C 0031930C  7C 08 03 A6 */	mtlr r0
/* 8034FD50 00319310  38 21 00 20 */	addi r1, r1, 0x20
/* 8034FD54 00319314  4E 80 00 20 */	blr 
.balign 16, 0
lbl_8034FD60:
/* 8034FD60 00319320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034FD64 00319324  7C 08 02 A6 */	mflr r0
/* 8034FD68 00319328  2C 03 00 00 */	cmpwi r3, 0
/* 8034FD6C 0031932C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034FD70 00319330  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034FD74 00319334  7C 9F 23 78 */	mr r31, r4
/* 8034FD78 00319338  40 82 00 1C */	bne lbl_8034FD94
/* 8034FD7C 0031933C  80 A4 00 08 */	lwz r5, 8(r4)
/* 8034FD80 00319340  38 C0 00 07 */	li r6, 7
/* 8034FD84 00319344  38 00 00 02 */	li r0, 2
/* 8034FD88 00319348  98 C5 00 89 */	stb r6, 0x89(r5)
/* 8034FD8C 0031934C  80 84 00 08 */	lwz r4, 8(r4)
/* 8034FD90 00319350  98 04 00 8A */	stb r0, 0x8a(r4)
lbl_8034FD94:
/* 8034FD94 00319354  48 00 04 8D */	bl nandConvertErrorCode
/* 8034FD98 00319358  81 9F 00 04 */	lwz r12, 4(r31)
/* 8034FD9C 0031935C  7F E4 FB 78 */	mr r4, r31
/* 8034FDA0 00319360  7D 89 03 A6 */	mtctr r12
/* 8034FDA4 00319364  4E 80 04 21 */	bctrl 
/* 8034FDA8 00319368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034FDAC 0031936C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034FDB0 00319370  7C 08 03 A6 */	mtlr r0
/* 8034FDB4 00319374  38 21 00 10 */	addi r1, r1, 0x10
/* 8034FDB8 00319378  4E 80 00 20 */	blr 
.balign 16, 0