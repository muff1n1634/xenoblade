.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global func_803613D0
func_803613D0:
/* 803613D0 0032A990  3C C0 73 B6 */	lis r6, 0x73B5DBFA@ha
/* 803613D4 0032A994  38 00 00 80 */	li r0, 0x80
/* 803613D8 0032A998  39 66 DB FA */	addi r11, r6, 0x73B5DBFA@l
/* 803613DC 0032A99C  39 20 00 00 */	li r9, 0
/* 803613E0 0032A9A0  39 80 00 00 */	li r12, 0
/* 803613E4 0032A9A4  38 C0 00 00 */	li r6, 0
/* 803613E8 0032A9A8  39 40 00 00 */	li r10, 0
/* 803613EC 0032A9AC  7C 09 03 A6 */	mtctr r0
lbl_803613F0:
/* 803613F0 0032A9B0  3D 0A 80 00 */	addis r8, r10, 0x8000
/* 803613F4 0032A9B4  89 08 38 00 */	lbz r8, 0x3800(r8)
/* 803613F8 0032A9B8  2C 08 00 00 */	cmpwi r8, 0
/* 803613FC 0032A9BC  41 82 00 48 */	beq lbl_80361444
/* 80361400 0032A9C0  7C E3 60 AE */	lbzx r7, r3, r12
/* 80361404 0032A9C4  7D 00 5A 78 */	xor r0, r8, r11
/* 80361408 0032A9C8  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 8036140C 0032A9CC  7C E0 07 75 */	extsb. r0, r7
/* 80361410 0032A9D0  40 82 00 14 */	bne lbl_80361424
/* 80361414 0032A9D4  28 08 00 3D */	cmplwi r8, 0x3d
/* 80361418 0032A9D8  40 82 00 0C */	bne lbl_80361424
/* 8036141C 0032A9DC  39 20 00 01 */	li r9, 1
/* 80361420 0032A9E0  48 00 00 9C */	b lbl_803614BC
lbl_80361424:
/* 80361424 0032A9E4  7C E7 07 74 */	extsb r7, r7
/* 80361428 0032A9E8  38 0C 00 01 */	addi r0, r12, 1
/* 8036142C 0032A9EC  7D 07 3A 78 */	xor r7, r8, r7
/* 80361430 0032A9F0  70 E7 00 DF */	andi. r7, r7, 0xdf
/* 80361434 0032A9F4  7C E7 00 34 */	cntlzw r7, r7
/* 80361438 0032A9F8  54 E7 DF FE */	rlwinm r7, r7, 0x1b, 0x1f, 0x1f
/* 8036143C 0032A9FC  7C E7 00 D0 */	neg r7, r7
/* 80361440 0032AA00  7C 0C 38 38 */	and r12, r0, r7
lbl_80361444:
/* 80361444 0032AA04  39 4A 00 01 */	addi r10, r10, 1
/* 80361448 0032AA08  55 67 0F FE */	srwi r7, r11, 0x1f
/* 8036144C 0032AA0C  3D 0A 80 00 */	addis r8, r10, 0x8000
/* 80361450 0032AA10  55 60 08 3C */	slwi r0, r11, 1
/* 80361454 0032AA14  89 08 38 00 */	lbz r8, 0x3800(r8)
/* 80361458 0032AA18  7C EB 03 78 */	or r11, r7, r0
/* 8036145C 0032AA1C  2C 08 00 00 */	cmpwi r8, 0
/* 80361460 0032AA20  41 82 00 48 */	beq lbl_803614A8
/* 80361464 0032AA24  7C E3 60 AE */	lbzx r7, r3, r12
/* 80361468 0032AA28  7D 00 5A 78 */	xor r0, r8, r11
/* 8036146C 0032AA2C  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 80361470 0032AA30  7C E0 07 75 */	extsb. r0, r7
/* 80361474 0032AA34  40 82 00 14 */	bne lbl_80361488
/* 80361478 0032AA38  28 08 00 3D */	cmplwi r8, 0x3d
/* 8036147C 0032AA3C  40 82 00 0C */	bne lbl_80361488
/* 80361480 0032AA40  39 20 00 01 */	li r9, 1
/* 80361484 0032AA44  48 00 00 38 */	b lbl_803614BC
lbl_80361488:
/* 80361488 0032AA48  7C E7 07 74 */	extsb r7, r7
/* 8036148C 0032AA4C  38 0C 00 01 */	addi r0, r12, 1
/* 80361490 0032AA50  7D 07 3A 78 */	xor r7, r8, r7
/* 80361494 0032AA54  70 E7 00 DF */	andi. r7, r7, 0xdf
/* 80361498 0032AA58  7C E7 00 34 */	cntlzw r7, r7
/* 8036149C 0032AA5C  54 E7 DF FE */	rlwinm r7, r7, 0x1b, 0x1f, 0x1f
/* 803614A0 0032AA60  7C E7 00 D0 */	neg r7, r7
/* 803614A4 0032AA64  7C 0C 38 38 */	and r12, r0, r7
lbl_803614A8:
/* 803614A8 0032AA68  55 67 0F FE */	srwi r7, r11, 0x1f
/* 803614AC 0032AA6C  55 60 08 3C */	slwi r0, r11, 1
/* 803614B0 0032AA70  7C EB 03 78 */	or r11, r7, r0
/* 803614B4 0032AA74  39 4A 00 01 */	addi r10, r10, 1
/* 803614B8 0032AA78  42 00 FF 38 */	bdnz lbl_803613F0
lbl_803614BC:
/* 803614BC 0032AA7C  2C 09 00 00 */	cmpwi r9, 0
/* 803614C0 0032AA80  41 82 00 78 */	beq lbl_80361538
/* 803614C4 0032AA84  39 4A 00 01 */	addi r10, r10, 1
/* 803614C8 0032AA88  48 00 00 60 */	b lbl_80361528
/* 803614CC 0032AA8C  60 00 00 00 */	nop 
lbl_803614D0:
/* 803614D0 0032AA90  3C 6A 80 00 */	addis r3, r10, 0x8000
/* 803614D4 0032AA94  55 67 0F FE */	srwi r7, r11, 0x1f
/* 803614D8 0032AA98  88 63 38 00 */	lbz r3, 0x3800(r3)
/* 803614DC 0032AA9C  55 60 08 3C */	slwi r0, r11, 1
/* 803614E0 0032AAA0  7C EB 03 78 */	or r11, r7, r0
/* 803614E4 0032AAA4  2C 03 00 00 */	cmpwi r3, 0
/* 803614E8 0032AAA8  41 82 00 20 */	beq lbl_80361508
/* 803614EC 0032AAAC  7C 60 5A 78 */	xor r0, r3, r11
/* 803614F0 0032AAB0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 803614F4 0032AAB4  28 03 00 0D */	cmplwi r3, 0xd
/* 803614F8 0032AAB8  41 82 00 0C */	beq lbl_80361504
/* 803614FC 0032AABC  28 03 00 0A */	cmplwi r3, 0xa
/* 80361500 0032AAC0  40 82 00 08 */	bne lbl_80361508
lbl_80361504:
/* 80361504 0032AAC4  38 60 00 00 */	li r3, 0
lbl_80361508:
/* 80361508 0032AAC8  2C 03 00 00 */	cmpwi r3, 0
/* 8036150C 0032AACC  98 64 00 00 */	stb r3, 0(r4)
/* 80361510 0032AAD0  38 C6 00 01 */	addi r6, r6, 1
/* 80361514 0032AAD4  38 84 00 01 */	addi r4, r4, 1
/* 80361518 0032AAD8  40 82 00 0C */	bne func_80361524
/* 8036151C 0032AADC  38 60 00 01 */	li r3, 1
/* 80361520 0032AAE0  4E 80 00 20 */	blr


.global func_80361524
func_80361524:
/* 80361524 0032AAE4  39 4A 00 01 */	addi r10, r10, 1
lbl_80361528:
/* 80361528 0032AAE8  28 0A 01 00 */	cmplwi r10, 0x100
/* 8036152C 0032AAEC  40 80 00 0C */	bge lbl_80361538
/* 80361530 0032AAF0  7C 06 28 40 */	cmplw r6, r5
/* 80361534 0032AAF4  41 80 FF 9C */	blt lbl_803614D0
lbl_80361538:
/* 80361538 0032AAF8  38 60 00 00 */	li r3, 0
/* 8036153C 0032AAFC  4E 80 00 20 */	blr 


.global func_80361540
func_80361540:
/* 80361540 0032AB00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80361544 0032AB04  7C 08 02 A6 */	mflr r0
/* 80361548 0032AB08  38 6D 9B 50 */	addi r3, r13, lbl_80665CD0@sda21
/* 8036154C 0032AB0C  38 A0 00 04 */	li r5, 4
/* 80361550 0032AB10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80361554 0032AB14  38 81 00 08 */	addi r4, r1, 8
/* 80361558 0032AB18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036155C 0032AB1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80361560 0032AB20  3F C0 80 56 */	lis r30, lbl_8055F0D8@ha
/* 80361564 0032AB24  3B DE F0 D8 */	addi r30, r30, lbl_8055F0D8@l
/* 80361568 0032AB28  4B FF FE 69 */	bl func_803613D0
/* 8036156C 0032AB2C  2C 03 00 00 */	cmpwi r3, 0
/* 80361570 0032AB30  41 82 00 38 */	beq lbl_803615A8
/* 80361574 0032AB34  48 00 00 24 */	b lbl_80361598
lbl_80361578:
/* 80361578 0032AB38  38 7E 00 01 */	addi r3, r30, 1
/* 8036157C 0032AB3C  38 81 00 08 */	addi r4, r1, 8
/* 80361580 0032AB40  4B F6 12 B5 */	bl strcmp
/* 80361584 0032AB44  2C 03 00 00 */	cmpwi r3, 0
/* 80361588 0032AB48  40 82 00 0C */	bne lbl_80361594
/* 8036158C 0032AB4C  7F E3 FB 78 */	mr r3, r31
/* 80361590 0032AB50  48 00 00 1C */	b lbl_803615AC
lbl_80361594:
/* 80361594 0032AB54  3B DE 00 05 */	addi r30, r30, 5
lbl_80361598:
/* 80361598 0032AB58  8B FE 00 00 */	lbz r31, 0(r30)
/* 8036159C 0032AB5C  7F E0 07 74 */	extsb r0, r31
/* 803615A0 0032AB60  2C 00 FF FF */	cmpwi r0, -1
/* 803615A4 0032AB64  40 82 FF D4 */	bne lbl_80361578
lbl_803615A8:
/* 803615A8 0032AB68  38 60 FF FF */	li r3, -1
lbl_803615AC:
/* 803615AC 0032AB6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803615B0 0032AB70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803615B4 0032AB74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803615B8 0032AB78  7C 08 03 A6 */	mtlr r0
/* 803615BC 0032AB7C  38 21 00 20 */	addi r1, r1, 0x20
/* 803615C0 0032AB80  4E 80 00 20 */	blr 

.balign 16, 0
.global func_803615D0
func_803615D0:
/* 803615D0 0032AB90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803615D4 0032AB94  7C 08 02 A6 */	mflr r0
/* 803615D8 0032AB98  38 6D 9B 58 */	addi r3, r13, lbl_80665CD8@sda21
/* 803615DC 0032AB9C  38 A0 00 03 */	li r5, 3
/* 803615E0 0032ABA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803615E4 0032ABA4  38 81 00 08 */	addi r4, r1, 8
/* 803615E8 0032ABA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803615EC 0032ABAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803615F0 0032ABB0  3F C0 80 56 */	lis r30, lbl_8055F120@ha
/* 803615F4 0032ABB4  3B DE F1 20 */	addi r30, r30, lbl_8055F120@l
/* 803615F8 0032ABB8  4B FF FD D9 */	bl func_803613D0
/* 803615FC 0032ABBC  2C 03 00 00 */	cmpwi r3, 0
/* 80361600 0032ABC0  41 82 00 38 */	beq lbl_80361638
/* 80361604 0032ABC4  48 00 00 24 */	b lbl_80361628
lbl_80361608:
/* 80361608 0032ABC8  38 7E 00 01 */	addi r3, r30, 1
/* 8036160C 0032ABCC  38 81 00 08 */	addi r4, r1, 8
/* 80361610 0032ABD0  4B F6 12 25 */	bl strcmp
/* 80361614 0032ABD4  2C 03 00 00 */	cmpwi r3, 0
/* 80361618 0032ABD8  40 82 00 0C */	bne lbl_80361624
/* 8036161C 0032ABDC  7F E3 FB 78 */	mr r3, r31
/* 80361620 0032ABE0  48 00 00 1C */	b lbl_8036163C
lbl_80361624:
/* 80361624 0032ABE4  3B DE 00 04 */	addi r30, r30, 4
lbl_80361628:
/* 80361628 0032ABE8  8B FE 00 00 */	lbz r31, 0(r30)
/* 8036162C 0032ABEC  7F E0 07 74 */	extsb r0, r31
/* 80361630 0032ABF0  2C 00 FF FF */	cmpwi r0, -1
/* 80361634 0032ABF4  40 82 FF D4 */	bne lbl_80361608
lbl_80361638:
/* 80361638 0032ABF8  38 60 FF FF */	li r3, -1
lbl_8036163C:
/* 8036163C 0032ABFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80361640 0032AC00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80361644 0032AC04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80361648 0032AC08  7C 08 03 A6 */	mtlr r0
/* 8036164C 0032AC0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80361650 0032AC10  4E 80 00 20 */	blr 
.balign 16, 0