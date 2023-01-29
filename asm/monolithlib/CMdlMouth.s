.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_804E6544, global
/* 804E6544 004AFB04  C0 22 D7 38 */	lfs f1, lbl_8066DAB8@sda21(r2)
/* 804E6548 004AFB08  3C A0 80 57 */	lis r5, __vt__CMdlMouth@ha
/* 804E654C 004AFB0C  38 80 00 00 */	li r4, 0x0
/* 804E6550 004AFB10  38 00 FF FF */	li r0, -0x1
/* 804E6554 004AFB14  C0 02 D7 3C */	lfs f0, lbl_8066DABC@sda21(r2)
/* 804E6558 004AFB18  38 A5 39 F8 */	addi r5, r5, __vt__CMdlMouth@l
/* 804E655C 004AFB1C  90 A3 00 00 */	stw r5, 0x0(r3)
/* 804E6560 004AFB20  90 83 00 04 */	stw r4, 0x4(r3)
/* 804E6564 004AFB24  90 83 00 08 */	stw r4, 0x8(r3)
/* 804E6568 004AFB28  90 03 00 0C */	stw r0, 0xc(r3)
/* 804E656C 004AFB2C  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 804E6570 004AFB30  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 804E6574 004AFB34  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 804E6578 004AFB38  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 804E657C 004AFB3C  90 03 00 24 */	stw r0, 0x24(r3)
/* 804E6580 004AFB40  90 83 00 28 */	stw r4, 0x28(r3)
/* 804E6584 004AFB44  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 804E6588 004AFB48  4E 80 00 20 */	blr
.endfn func_804E6544

.fn func_804E658C, global
/* 804E658C 004AFB4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E6590 004AFB50  7C 08 02 A6 */	mflr r0
/* 804E6594 004AFB54  2C 03 00 00 */	cmpwi r3, 0x0
/* 804E6598 004AFB58  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E659C 004AFB5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E65A0 004AFB60  7C 7F 1B 78 */	mr r31, r3
/* 804E65A4 004AFB64  41 82 00 10 */	beq .L_804E65B4
/* 804E65A8 004AFB68  2C 04 00 00 */	cmpwi r4, 0x0
/* 804E65AC 004AFB6C  40 81 00 08 */	ble .L_804E65B4
/* 804E65B0 004AFB70  4B F4 E6 7D */	bl __dl__FPv
.L_804E65B4:
/* 804E65B4 004AFB74  7F E3 FB 78 */	mr r3, r31
/* 804E65B8 004AFB78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E65BC 004AFB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E65C0 004AFB80  7C 08 03 A6 */	mtlr r0
/* 804E65C4 004AFB84  38 21 00 10 */	addi r1, r1, 0x10
/* 804E65C8 004AFB88  4E 80 00 20 */	blr
.endfn func_804E658C

.fn func_804E65CC, global
/* 804E65CC 004AFB8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E65D0 004AFB90  7C 08 02 A6 */	mflr r0
/* 804E65D4 004AFB94  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E65D8 004AFB98  39 61 00 40 */	addi r11, r1, 0x40
/* 804E65DC 004AFB9C  4B DD 3B 71 */	bl _savegpr_25
/* 804E65E0 004AFBA0  C0 22 D7 38 */	lfs f1, lbl_8066DAB8@sda21(r2)
/* 804E65E4 004AFBA4  38 A0 00 00 */	li r5, 0x0
/* 804E65E8 004AFBA8  38 00 FF FF */	li r0, -0x1
/* 804E65EC 004AFBAC  C0 02 D7 3C */	lfs f0, lbl_8066DABC@sda21(r2)
/* 804E65F0 004AFBB0  90 83 00 04 */	stw r4, 0x4(r3)
/* 804E65F4 004AFBB4  7C 9A 23 78 */	mr r26, r4
/* 804E65F8 004AFBB8  7C 79 1B 78 */	mr r25, r3
/* 804E65FC 004AFBBC  90 A3 00 08 */	stw r5, 0x8(r3)
/* 804E6600 004AFBC0  90 03 00 0C */	stw r0, 0xc(r3)
/* 804E6604 004AFBC4  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 804E6608 004AFBC8  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 804E660C 004AFBCC  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 804E6610 004AFBD0  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 804E6614 004AFBD4  90 03 00 24 */	stw r0, 0x24(r3)
/* 804E6618 004AFBD8  90 A3 00 28 */	stw r5, 0x28(r3)
/* 804E661C 004AFBDC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 804E6620 004AFBE0  38 61 00 10 */	addi r3, r1, 0x10
/* 804E6624 004AFBE4  80 04 14 6C */	lwz r0, 0x146c(r4)
/* 804E6628 004AFBE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E662C 004AFBEC  80 8D A3 F0 */	lwz r4, lbl_80666570@sda21(r13)
/* 804E6630 004AFBF0  4B EF 2F E9 */	bl GetResNode__Q34nw4r3g3d6ResMdlCFPCc
/* 804E6634 004AFBF4  2C 03 00 00 */	cmpwi r3, 0x0
/* 804E6638 004AFBF8  7C 7C 1B 78 */	mr r28, r3
/* 804E663C 004AFBFC  41 82 00 7C */	beq .L_804E66B8
/* 804E6640 004AFC00  40 82 00 20 */	bne .L_804E6660
/* 804E6644 004AFC04  3C 60 80 57 */	lis r3, lbl_80571A10@ha
/* 804E6648 004AFC08  3C A0 80 57 */	lis r5, lbl_805719F0@ha
/* 804E664C 004AFC0C  38 63 1A 10 */	addi r3, r3, lbl_80571A10@l
/* 804E6650 004AFC10  38 80 00 38 */	li r4, 0x38
/* 804E6654 004AFC14  38 A5 19 F0 */	addi r5, r5, lbl_805719F0@l
/* 804E6658 004AFC18  4C C6 31 82 */	crclr 4*cr1+eq
/* 804E665C 004AFC1C  4B EF 0F 29 */	bl Panic__Q24nw4r2dbFPCciPCce
.L_804E6660:
/* 804E6660 004AFC20  2C 1C 00 00 */	cmpwi r28, 0x0
/* 804E6664 004AFC24  41 82 00 0C */	beq .L_804E6670
/* 804E6668 004AFC28  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 804E666C 004AFC2C  48 00 00 08 */	b .L_804E6674
.L_804E6670:
/* 804E6670 004AFC30  38 00 00 00 */	li r0, 0x0
.L_804E6674:
/* 804E6674 004AFC34  2C 1C 00 00 */	cmpwi r28, 0x0
/* 804E6678 004AFC38  90 19 00 0C */	stw r0, 0xc(r25)
/* 804E667C 004AFC3C  40 82 00 28 */	bne .L_804E66A4
/* 804E6680 004AFC40  3C 60 80 57 */	lis r3, lbl_805719DC@ha
/* 804E6684 004AFC44  3C A0 80 57 */	lis r5, lbl_805719C0@ha
/* 804E6688 004AFC48  38 63 19 DC */	addi r3, r3, lbl_805719DC@l
/* 804E668C 004AFC4C  38 80 00 2C */	li r4, 0x2c
/* 804E6690 004AFC50  38 A5 19 C0 */	addi r5, r5, lbl_805719C0@l
/* 804E6694 004AFC54  38 CD A0 B0 */	addi r6, r13, lbl_80666230@sda21
/* 804E6698 004AFC58  38 ED A4 04 */	addi r7, r13, lbl_80666584@sda21
/* 804E669C 004AFC5C  4C C6 31 82 */	crclr 4*cr1+eq
/* 804E66A0 004AFC60  4B EF 0E E5 */	bl Panic__Q24nw4r2dbFPCciPCce
.L_804E66A4:
/* 804E66A4 004AFC64  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 804E66A8 004AFC68  7F 43 D3 78 */	mr r3, r26
/* 804E66AC 004AFC6C  D0 19 00 20 */	stfs f0, 0x20(r25)
/* 804E66B0 004AFC70  80 99 00 0C */	lwz r4, 0xc(r25)
/* 804E66B4 004AFC74  4B FA 28 91 */	bl func_80488F44
.L_804E66B8:
/* 804E66B8 004AFC78  80 1A 14 6C */	lwz r0, 0x146c(r26)
/* 804E66BC 004AFC7C  38 61 00 0C */	addi r3, r1, 0xc
/* 804E66C0 004AFC80  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E66C4 004AFC84  4B EF 35 3D */	bl GetResMatNumEntries__Q34nw4r3g3d6ResMdlCFv
/* 804E66C8 004AFC88  7C 7C 1B 78 */	mr r28, r3
/* 804E66CC 004AFC8C  3B 60 00 00 */	li r27, 0x0
/* 804E66D0 004AFC90  3F C0 80 57 */	lis r30, lbl_805718B0@ha
/* 804E66D4 004AFC94  3F E0 80 57 */	lis r31, lbl_80571894@ha
/* 804E66D8 004AFC98  48 00 00 A4 */	b .L_804E677C
.L_804E66DC:
/* 804E66DC 004AFC9C  80 1A 14 6C */	lwz r0, 0x146c(r26)
/* 804E66E0 004AFCA0  7F 64 DB 78 */	mr r4, r27
/* 804E66E4 004AFCA4  90 01 00 08 */	stw r0, 0x8(r1)
/* 804E66E8 004AFCA8  38 61 00 08 */	addi r3, r1, 0x8
/* 804E66EC 004AFCAC  4B EF 34 C1 */	bl GetResMat__Q34nw4r3g3d6ResMdlCFUl
/* 804E66F0 004AFCB0  2C 03 00 00 */	cmpwi r3, 0x0
/* 804E66F4 004AFCB4  7C 7D 1B 78 */	mr r29, r3
/* 804E66F8 004AFCB8  40 82 00 20 */	bne .L_804E6718
/* 804E66FC 004AFCBC  38 7E 18 B0 */	addi r3, r30, lbl_805718B0@l
/* 804E6700 004AFCC0  38 BF 18 94 */	addi r5, r31, lbl_80571894@l
/* 804E6704 004AFCC4  38 80 02 6D */	li r4, 0x26d
/* 804E6708 004AFCC8  38 CD A0 88 */	addi r6, r13, lbl_80666208@sda21
/* 804E670C 004AFCCC  38 ED A4 00 */	addi r7, r13, lbl_80666580@sda21
/* 804E6710 004AFCD0  4C C6 31 82 */	crclr 4*cr1+eq
/* 804E6714 004AFCD4  4B EF 0E 71 */	bl Panic__Q24nw4r2dbFPCciPCce
.L_804E6718:
/* 804E6718 004AFCD8  80 1D 00 08 */	lwz r0, 0x8(r29)
/* 804E671C 004AFCDC  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E6720 004AFCE0  41 82 00 0C */	beq .L_804E672C
/* 804E6724 004AFCE4  7C 7D 02 14 */	add r3, r29, r0
/* 804E6728 004AFCE8  48 00 00 08 */	b .L_804E6730
.L_804E672C:
/* 804E672C 004AFCEC  38 60 00 00 */	li r3, 0x0
.L_804E6730:
/* 804E6730 004AFCF0  80 8D A3 F4 */	lwz r4, lbl_80666574@sda21(r13)
/* 804E6734 004AFCF4  4B DD C2 8D */	bl strstr
/* 804E6738 004AFCF8  2C 03 00 00 */	cmpwi r3, 0x0
/* 804E673C 004AFCFC  41 82 00 3C */	beq .L_804E6778
/* 804E6740 004AFD00  2C 1D 00 00 */	cmpwi r29, 0x0
/* 804E6744 004AFD04  40 82 00 28 */	bne .L_804E676C
/* 804E6748 004AFD08  3C 60 80 57 */	lis r3, lbl_805718B0@ha
/* 804E674C 004AFD0C  3C A0 80 57 */	lis r5, lbl_80571894@ha
/* 804E6750 004AFD10  38 63 18 B0 */	addi r3, r3, lbl_805718B0@l
/* 804E6754 004AFD14  38 80 02 6D */	li r4, 0x26d
/* 804E6758 004AFD18  38 A5 18 94 */	addi r5, r5, lbl_80571894@l
/* 804E675C 004AFD1C  38 CD A0 88 */	addi r6, r13, lbl_80666208@sda21
/* 804E6760 004AFD20  38 ED A4 00 */	addi r7, r13, lbl_80666580@sda21
/* 804E6764 004AFD24  4C C6 31 82 */	crclr 4*cr1+eq
/* 804E6768 004AFD28  4B EF 0E 1D */	bl Panic__Q24nw4r2dbFPCciPCce
.L_804E676C:
/* 804E676C 004AFD2C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 804E6770 004AFD30  90 19 00 24 */	stw r0, 0x24(r25)
/* 804E6774 004AFD34  48 00 00 10 */	b .L_804E6784
.L_804E6778:
/* 804E6778 004AFD38  3B 7B 00 01 */	addi r27, r27, 0x1
.L_804E677C:
/* 804E677C 004AFD3C  7C 1B E0 40 */	cmplw r27, r28
/* 804E6780 004AFD40  41 80 FF 5C */	blt .L_804E66DC
.L_804E6784:
/* 804E6784 004AFD44  39 61 00 40 */	addi r11, r1, 0x40
/* 804E6788 004AFD48  4B DD 3A 11 */	bl _restgpr_25
/* 804E678C 004AFD4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E6790 004AFD50  7C 08 03 A6 */	mtlr r0
/* 804E6794 004AFD54  38 21 00 40 */	addi r1, r1, 0x40
/* 804E6798 004AFD58  4E 80 00 20 */	blr
.endfn func_804E65CC

.fn func_804E679C, global
/* 804E679C 004AFD5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E67A0 004AFD60  7C 08 02 A6 */	mflr r0
/* 804E67A4 004AFD64  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E67A8 004AFD68  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804E67AC 004AFD6C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804E67B0 004AFD70  7C BE 2B 78 */	mr r30, r5
/* 804E67B4 004AFD74  93 A1 00 24 */	stw r29, 0x24(r1)
/* 804E67B8 004AFD78  7C 9D 23 78 */	mr r29, r4
/* 804E67BC 004AFD7C  93 81 00 20 */	stw r28, 0x20(r1)
/* 804E67C0 004AFD80  7C 7C 1B 78 */	mr r28, r3
/* 804E67C4 004AFD84  80 03 00 08 */	lwz r0, 0x8(r3)
/* 804E67C8 004AFD88  7C 00 20 00 */	cmpw r0, r4
/* 804E67CC 004AFD8C  41 82 00 AC */	beq .L_804E6878
/* 804E67D0 004AFD90  2C 04 00 00 */	cmpwi r4, 0x0
/* 804E67D4 004AFD94  90 83 00 08 */	stw r4, 0x8(r3)
/* 804E67D8 004AFD98  41 82 00 68 */	beq .L_804E6840
/* 804E67DC 004AFD9C  38 60 00 64 */	li r3, 0x64
/* 804E67E0 004AFDA0  4B F4 F7 1D */	bl mtRand__2mlFi
/* 804E67E4 004AFDA4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804E67E8 004AFDA8  3F E0 43 30 */	lis r31, 0x4330
/* 804E67EC 004AFDAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E67F0 004AFDB0  38 60 00 64 */	li r3, 0x64
/* 804E67F4 004AFDB4  C8 62 D7 50 */	lfd f3, lbl_8066DAD0@sda21(r2)
/* 804E67F8 004AFDB8  93 E1 00 08 */	stw r31, 0x8(r1)
/* 804E67FC 004AFDBC  C0 22 D7 44 */	lfs f1, lbl_8066DAC4@sda21(r2)
/* 804E6800 004AFDC0  C8 41 00 08 */	lfd f2, 0x8(r1)
/* 804E6804 004AFDC4  C0 02 D7 40 */	lfs f0, lbl_8066DAC0@sda21(r2)
/* 804E6808 004AFDC8  EC 42 18 28 */	fsubs f2, f2, f3
/* 804E680C 004AFDCC  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 804E6810 004AFDD0  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 804E6814 004AFDD4  4B F4 F6 E9 */	bl mtRand__2mlFi
/* 804E6818 004AFDD8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804E681C 004AFDDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E6820 004AFDE0  C8 62 D7 50 */	lfd f3, lbl_8066DAD0@sda21(r2)
/* 804E6824 004AFDE4  93 E1 00 10 */	stw r31, 0x10(r1)
/* 804E6828 004AFDE8  C0 22 D7 48 */	lfs f1, lbl_8066DAC8@sda21(r2)
/* 804E682C 004AFDEC  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 804E6830 004AFDF0  C0 02 D7 40 */	lfs f0, lbl_8066DAC0@sda21(r2)
/* 804E6834 004AFDF4  EC 42 18 28 */	fsubs f2, f2, f3
/* 804E6838 004AFDF8  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 804E683C 004AFDFC  D0 1C 00 18 */	stfs f0, 0x18(r28)
.L_804E6840:
/* 804E6840 004AFE00  2C 1D 00 00 */	cmpwi r29, 0x0
/* 804E6844 004AFE04  41 82 00 0C */	beq .L_804E6850
/* 804E6848 004AFE08  38 00 00 02 */	li r0, 0x2
/* 804E684C 004AFE0C  90 1C 00 28 */	stw r0, 0x28(r28)
.L_804E6850:
/* 804E6850 004AFE10  2C 1E 00 00 */	cmpwi r30, 0x0
/* 804E6854 004AFE14  41 82 00 24 */	beq .L_804E6878
/* 804E6858 004AFE18  80 1C 00 08 */	lwz r0, 0x8(r28)
/* 804E685C 004AFE1C  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E6860 004AFE20  40 82 00 18 */	bne .L_804E6878
/* 804E6864 004AFE24  C0 02 D7 38 */	lfs f0, lbl_8066DAB8@sda21(r2)
/* 804E6868 004AFE28  D0 1C 00 1C */	stfs f0, 0x1c(r28)
/* 804E686C 004AFE2C  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 804E6870 004AFE30  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 804E6874 004AFE34  D0 1C 00 18 */	stfs f0, 0x18(r28)
.L_804E6878:
/* 804E6878 004AFE38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E687C 004AFE3C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804E6880 004AFE40  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804E6884 004AFE44  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 804E6888 004AFE48  83 81 00 20 */	lwz r28, 0x20(r1)
/* 804E688C 004AFE4C  7C 08 03 A6 */	mtlr r0
/* 804E6890 004AFE50  38 21 00 30 */	addi r1, r1, 0x30
/* 804E6894 004AFE54  4E 80 00 20 */	blr
.endfn func_804E679C

.fn func_804E6898, global
/* 804E6898 004AFE58  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 804E689C 004AFE5C  4E 80 00 20 */	blr
.endfn func_804E6898

.fn func_804E68A0, global
/* 804E68A0 004AFE60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E68A4 004AFE64  7C 08 02 A6 */	mflr r0
/* 804E68A8 004AFE68  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E68AC 004AFE6C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804E68B0 004AFE70  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804E68B4 004AFE74  7C BE 2B 78 */	mr r30, r5
/* 804E68B8 004AFE78  93 A1 00 34 */	stw r29, 0x34(r1)
/* 804E68BC 004AFE7C  7C 7D 1B 78 */	mr r29, r3
/* 804E68C0 004AFE80  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804E68C4 004AFE84  7C 00 20 40 */	cmplw r0, r4
/* 804E68C8 004AFE88  41 82 00 0C */	beq .L_804E68D4
/* 804E68CC 004AFE8C  38 60 00 00 */	li r3, 0x0
/* 804E68D0 004AFE90  48 00 01 3C */	b .L_804E6A0C
.L_804E68D4:
/* 804E68D4 004AFE94  80 03 00 08 */	lwz r0, 0x8(r3)
/* 804E68D8 004AFE98  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E68DC 004AFE9C  41 82 00 24 */	beq .L_804E6900
/* 804E68E0 004AFEA0  80 83 00 28 */	lwz r4, 0x28(r3)
/* 804E68E4 004AFEA4  2C 04 00 00 */	cmpwi r4, 0x0
/* 804E68E8 004AFEA8  40 81 00 18 */	ble .L_804E6900
/* 804E68EC 004AFEAC  34 04 FF FF */	addic. r0, r4, -0x1
/* 804E68F0 004AFEB0  90 03 00 28 */	stw r0, 0x28(r3)
/* 804E68F4 004AFEB4  40 81 00 0C */	ble .L_804E6900
/* 804E68F8 004AFEB8  38 60 00 00 */	li r3, 0x0
/* 804E68FC 004AFEBC  48 00 01 10 */	b .L_804E6A0C
.L_804E6900:
/* 804E6900 004AFEC0  80 03 00 08 */	lwz r0, 0x8(r3)
/* 804E6904 004AFEC4  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E6908 004AFEC8  40 82 00 0C */	bne .L_804E6914
/* 804E690C 004AFECC  38 60 00 01 */	li r3, 0x1
/* 804E6910 004AFED0  48 00 00 FC */	b .L_804E6A0C
.L_804E6914:
/* 804E6914 004AFED4  80 63 00 04 */	lwz r3, 0x4(r3)
/* 804E6918 004AFED8  80 63 00 04 */	lwz r3, 0x4(r3)
/* 804E691C 004AFEDC  4B FA F9 6D */	bl func_80496288
/* 804E6920 004AFEE0  C0 7D 00 14 */	lfs f3, 0x14(r29)
/* 804E6924 004AFEE4  C0 5D 00 10 */	lfs f2, 0x10(r29)
/* 804E6928 004AFEE8  C0 02 C6 78 */	lfs f0, pi__2mm@sda21(r2)
/* 804E692C 004AFEEC  EC 23 10 7A */	fmadds f1, f3, f1, f2
/* 804E6930 004AFEF0  D0 3D 00 10 */	stfs f1, 0x10(r29)
/* 804E6934 004AFEF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E6938 004AFEF8  40 81 00 80 */	ble .L_804E69B8
/* 804E693C 004AFEFC  80 1D 00 08 */	lwz r0, 0x8(r29)
/* 804E6940 004AFF00  C0 02 D7 38 */	lfs f0, lbl_8066DAB8@sda21(r2)
/* 804E6944 004AFF04  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E6948 004AFF08  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 804E694C 004AFF0C  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 804E6950 004AFF10  41 82 00 68 */	beq .L_804E69B8
/* 804E6954 004AFF14  38 60 00 64 */	li r3, 0x64
/* 804E6958 004AFF18  4B F4 F5 A5 */	bl mtRand__2mlFi
/* 804E695C 004AFF1C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804E6960 004AFF20  3F E0 43 30 */	lis r31, 0x4330
/* 804E6964 004AFF24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804E6968 004AFF28  38 60 00 64 */	li r3, 0x64
/* 804E696C 004AFF2C  C8 62 D7 50 */	lfd f3, lbl_8066DAD0@sda21(r2)
/* 804E6970 004AFF30  93 E1 00 18 */	stw r31, 0x18(r1)
/* 804E6974 004AFF34  C0 22 D7 44 */	lfs f1, lbl_8066DAC4@sda21(r2)
/* 804E6978 004AFF38  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 804E697C 004AFF3C  C0 02 D7 40 */	lfs f0, lbl_8066DAC0@sda21(r2)
/* 804E6980 004AFF40  EC 42 18 28 */	fsubs f2, f2, f3
/* 804E6984 004AFF44  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 804E6988 004AFF48  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 804E698C 004AFF4C  4B F4 F5 71 */	bl mtRand__2mlFi
/* 804E6990 004AFF50  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804E6994 004AFF54  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E6998 004AFF58  C8 62 D7 50 */	lfd f3, lbl_8066DAD0@sda21(r2)
/* 804E699C 004AFF5C  93 E1 00 20 */	stw r31, 0x20(r1)
/* 804E69A0 004AFF60  C0 22 D7 48 */	lfs f1, lbl_8066DAC8@sda21(r2)
/* 804E69A4 004AFF64  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 804E69A8 004AFF68  C0 02 D7 40 */	lfs f0, lbl_8066DAC0@sda21(r2)
/* 804E69AC 004AFF6C  EC 42 18 28 */	fsubs f2, f2, f3
/* 804E69B0 004AFF70  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 804E69B4 004AFF74  D0 1D 00 18 */	stfs f0, 0x18(r29)
.L_804E69B8:
/* 804E69B8 004AFF78  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 804E69BC 004AFF7C  C0 02 D7 58 */	lfs f0, lbl_8066DAD8@sda21(r2)
/* 804E69C0 004AFF80  EC 20 00 72 */	fmuls f1, f0, f1
/* 804E69C4 004AFF84  4B F2 43 69 */	bl SinFIdx__Q24nw4r4mathFf
/* 804E69C8 004AFF88  C0 5D 00 18 */	lfs f2, 0x18(r29)
/* 804E69CC 004AFF8C  7F C3 F3 78 */	mr r3, r30
/* 804E69D0 004AFF90  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 804E69D4 004AFF94  38 81 00 08 */	addi r4, r1, 0x8
/* 804E69D8 004AFF98  EC 22 00 72 */	fmuls f1, f2, f1
/* 804E69DC 004AFF9C  EC 00 00 72 */	fmuls f0, f0, f1
/* 804E69E0 004AFFA0  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 804E69E4 004AFFA4  4B EF 94 AD */	bl GetRotateDeg__Q34nw4r3g3d12ChrAnmResultCFPQ34nw4r4math4VEC3
/* 804E69E8 004AFFA8  C0 42 D7 5C */	lfs f2, lbl_8066DADC@sda21(r2)
/* 804E69EC 004AFFAC  7F C3 F3 78 */	mr r3, r30
/* 804E69F0 004AFFB0  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 804E69F4 004AFFB4  38 81 00 08 */	addi r4, r1, 0x8
/* 804E69F8 004AFFB8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804E69FC 004AFFBC  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 804E6A00 004AFFC0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804E6A04 004AFFC4  4B EF 97 55 */	bl SetRotateDeg__Q34nw4r3g3d12ChrAnmResultFPCQ34nw4r4math4VEC3
/* 804E6A08 004AFFC8  38 60 00 01 */	li r3, 0x1
.L_804E6A0C:
/* 804E6A0C 004AFFCC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E6A10 004AFFD0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804E6A14 004AFFD4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804E6A18 004AFFD8  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 804E6A1C 004AFFDC  7C 08 03 A6 */	mtlr r0
/* 804E6A20 004AFFE0  38 21 00 40 */	addi r1, r1, 0x40
/* 804E6A24 004AFFE4  4E 80 00 20 */	blr
.endfn func_804E68A0

.fn func_804E6A28, global
/* 804E6A28 004AFFE8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804E6A2C 004AFFEC  7C 08 02 A6 */	mflr r0
/* 804E6A30 004AFFF0  90 01 00 94 */	stw r0, 0x94(r1)
/* 804E6A34 004AFFF4  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 804E6A38 004AFFF8  93 C1 00 88 */	stw r30, 0x88(r1)
/* 804E6A3C 004AFFFC  7C 7E 1B 78 */	mr r30, r3
/* 804E6A40 004B0000  80 03 00 24 */	lwz r0, 0x24(r3)
/* 804E6A44 004B0004  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E6A48 004B0008  41 80 01 B4 */	blt .L_804E6BFC
/* 804E6A4C 004B000C  80 03 00 08 */	lwz r0, 0x8(r3)
/* 804E6A50 004B0010  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E6A54 004B0014  41 82 00 1C */	beq .L_804E6A70
/* 804E6A58 004B0018  80 83 00 28 */	lwz r4, 0x28(r3)
/* 804E6A5C 004B001C  2C 04 00 00 */	cmpwi r4, 0x0
/* 804E6A60 004B0020  40 81 00 10 */	ble .L_804E6A70
/* 804E6A64 004B0024  34 04 FF FF */	addic. r0, r4, -0x1
/* 804E6A68 004B0028  90 03 00 28 */	stw r0, 0x28(r3)
/* 804E6A6C 004B002C  41 81 01 90 */	bgt .L_804E6BFC
.L_804E6A70:
/* 804E6A70 004B0030  80 63 00 04 */	lwz r3, 0x4(r3)
/* 804E6A74 004B0034  80 63 00 04 */	lwz r3, 0x4(r3)
/* 804E6A78 004B0038  4B FA F8 11 */	bl func_80496288
/* 804E6A7C 004B003C  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 804E6A80 004B0040  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 804E6A84 004B0044  C0 02 C6 78 */	lfs f0, pi__2mm@sda21(r2)
/* 804E6A88 004B0048  EC 23 10 7A */	fmadds f1, f3, f1, f2
/* 804E6A8C 004B004C  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 804E6A90 004B0050  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E6A94 004B0054  40 81 00 80 */	ble .L_804E6B14
/* 804E6A98 004B0058  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 804E6A9C 004B005C  C0 02 D7 38 */	lfs f0, lbl_8066DAB8@sda21(r2)
/* 804E6AA0 004B0060  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E6AA4 004B0064  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 804E6AA8 004B0068  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 804E6AAC 004B006C  41 82 00 68 */	beq .L_804E6B14
/* 804E6AB0 004B0070  38 60 00 64 */	li r3, 0x64
/* 804E6AB4 004B0074  4B F4 F4 49 */	bl mtRand__2mlFi
/* 804E6AB8 004B0078  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804E6ABC 004B007C  3F E0 43 30 */	lis r31, 0x4330
/* 804E6AC0 004B0080  90 01 00 7C */	stw r0, 0x7c(r1)
/* 804E6AC4 004B0084  38 60 00 64 */	li r3, 0x64
/* 804E6AC8 004B0088  C8 62 D7 50 */	lfd f3, lbl_8066DAD0@sda21(r2)
/* 804E6ACC 004B008C  93 E1 00 78 */	stw r31, 0x78(r1)
/* 804E6AD0 004B0090  C0 22 D7 44 */	lfs f1, lbl_8066DAC4@sda21(r2)
/* 804E6AD4 004B0094  C8 41 00 78 */	lfd f2, 0x78(r1)
/* 804E6AD8 004B0098  C0 02 D7 40 */	lfs f0, lbl_8066DAC0@sda21(r2)
/* 804E6ADC 004B009C  EC 42 18 28 */	fsubs f2, f2, f3
/* 804E6AE0 004B00A0  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 804E6AE4 004B00A4  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 804E6AE8 004B00A8  4B F4 F4 15 */	bl mtRand__2mlFi
/* 804E6AEC 004B00AC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804E6AF0 004B00B0  90 01 00 84 */	stw r0, 0x84(r1)
/* 804E6AF4 004B00B4  C8 62 D7 50 */	lfd f3, lbl_8066DAD0@sda21(r2)
/* 804E6AF8 004B00B8  93 E1 00 80 */	stw r31, 0x80(r1)
/* 804E6AFC 004B00BC  C0 22 D7 48 */	lfs f1, lbl_8066DAC8@sda21(r2)
/* 804E6B00 004B00C0  C8 41 00 80 */	lfd f2, 0x80(r1)
/* 804E6B04 004B00C4  C0 02 D7 40 */	lfs f0, lbl_8066DAC0@sda21(r2)
/* 804E6B08 004B00C8  EC 42 18 28 */	fsubs f2, f2, f3
/* 804E6B0C 004B00CC  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 804E6B10 004B00D0  D0 1E 00 18 */	stfs f0, 0x18(r30)
.L_804E6B14:
/* 804E6B14 004B00D4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 804E6B18 004B00D8  C0 02 D7 58 */	lfs f0, lbl_8066DAD8@sda21(r2)
/* 804E6B1C 004B00DC  EC 20 00 72 */	fmuls f1, f0, f1
/* 804E6B20 004B00E0  4B F2 42 0D */	bl SinFIdx__Q24nw4r4mathFf
/* 804E6B24 004B00E4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 804E6B28 004B00E8  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 804E6B2C 004B00EC  EC 20 00 72 */	fmuls f1, f0, f1
/* 804E6B30 004B00F0  C0 02 D7 60 */	lfs f0, lbl_8066DAE0@sda21(r2)
/* 804E6B34 004B00F4  EC 22 00 72 */	fmuls f1, f2, f1
/* 804E6B38 004B00F8  D0 3E 00 1C */	stfs f1, 0x1c(r30)
/* 804E6B3C 004B00FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 804E6B40 004B0100  FC 00 00 1E */	fctiwz f0, f0
/* 804E6B44 004B0104  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 804E6B48 004B0108  83 E1 00 84 */	lwz r31, 0x84(r1)
/* 804E6B4C 004B010C  28 1F 00 03 */	cmplwi r31, 0x3
/* 804E6B50 004B0110  41 80 00 08 */	blt .L_804E6B58
/* 804E6B54 004B0114  3B E0 00 02 */	li r31, 0x2
.L_804E6B58:
/* 804E6B58 004B0118  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 804E6B5C 004B011C  38 61 00 40 */	addi r3, r1, 0x40
/* 804E6B60 004B0120  80 BE 00 24 */	lwz r5, 0x24(r30)
/* 804E6B64 004B0124  80 84 14 7C */	lwz r4, 0x147c(r4)
/* 804E6B68 004B0128  4B F1 2B CD */	bl __ct__Q44nw4r3g3d6ScnMdl15CopiedMatAccessFPQ34nw4r3g3d6ScnMdlUl
/* 804E6B6C 004B012C  38 61 00 40 */	addi r3, r1, 0x40
/* 804E6B70 004B0130  38 80 00 00 */	li r4, 0x0
/* 804E6B74 004B0134  4B F1 29 95 */	bl GetResTexSrt__Q44nw4r3g3d6ScnMdl15CopiedMatAccessFb
/* 804E6B78 004B0138  2C 03 00 00 */	cmpwi r3, 0x0
/* 804E6B7C 004B013C  90 61 00 08 */	stw r3, 0x8(r1)
/* 804E6B80 004B0140  41 82 00 7C */	beq .L_804E6BFC
/* 804E6B84 004B0144  3C 60 80 53 */	lis r3, lbl_805280AC@ha
/* 804E6B88 004B0148  C0 02 D7 38 */	lfs f0, lbl_8066DAB8@sda21(r2)
/* 804E6B8C 004B014C  57 E0 10 3A */	slwi r0, r31, 2
/* 804E6B90 004B0150  C0 22 D7 3C */	lfs f1, lbl_8066DABC@sda21(r2)
/* 804E6B94 004B0154  38 63 80 AC */	addi r3, r3, lbl_805280AC@l
/* 804E6B98 004B0158  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804E6B9C 004B015C  7C 43 04 2E */	lfsx f2, r3, r0
/* 804E6BA0 004B0160  38 61 00 08 */	addi r3, r1, 0x8
/* 804E6BA4 004B0164  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804E6BA8 004B0168  38 A1 00 10 */	addi r5, r1, 0x10
/* 804E6BAC 004B016C  38 80 00 00 */	li r4, 0x0
/* 804E6BB0 004B0170  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E6BB4 004B0174  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 804E6BB8 004B0178  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804E6BBC 004B017C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804E6BC0 004B0180  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804E6BC4 004B0184  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804E6BC8 004B0188  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804E6BCC 004B018C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804E6BD0 004B0190  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 804E6BD4 004B0194  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804E6BD8 004B0198  4B EF 50 C5 */	bl SetEffectMtx__Q34nw4r3g3d9ResTexSrtFUlPCQ34nw4r4math5MTX34
/* 804E6BDC 004B019C  38 61 00 08 */	addi r3, r1, 0x8
/* 804E6BE0 004B01A0  38 A1 00 10 */	addi r5, r1, 0x10
/* 804E6BE4 004B01A4  38 80 00 01 */	li r4, 0x1
/* 804E6BE8 004B01A8  4B EF 50 B5 */	bl SetEffectMtx__Q34nw4r3g3d9ResTexSrtFUlPCQ34nw4r4math5MTX34
/* 804E6BEC 004B01AC  38 61 00 08 */	addi r3, r1, 0x8
/* 804E6BF0 004B01B0  38 A1 00 10 */	addi r5, r1, 0x10
/* 804E6BF4 004B01B4  38 80 00 02 */	li r4, 0x2
/* 804E6BF8 004B01B8  4B EF 50 A5 */	bl SetEffectMtx__Q34nw4r3g3d9ResTexSrtFUlPCQ34nw4r4math5MTX34
.L_804E6BFC:
/* 804E6BFC 004B01BC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804E6C00 004B01C0  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 804E6C04 004B01C4  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 804E6C08 004B01C8  7C 08 03 A6 */	mtlr r0
/* 804E6C0C 004B01CC  38 21 00 90 */	addi r1, r1, 0x90
/* 804E6C10 004B01D0  4E 80 00 20 */	blr
.endfn func_804E6A28

.section .rodata, "a" # 0x804F5B20 - 0x805281E0

.balign 8
.global lbl_805280A0
lbl_805280A0:
	.4byte 0x6D744972
	.4byte 0x69733033
	.4byte 0x00000000
.global lbl_805280AC
lbl_805280AC:
	.4byte 0x00000000
	.4byte 0x3E800000
	.4byte 0x3F000000

.global CMdlMouth_typestr
CMdlMouth_typestr:
	.4byte 0x434D646C
	.4byte 0x4D6F7574
	.4byte 0x68000000
	.4byte 0x00000000

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.global __vt__CMdlMouth
__vt__CMdlMouth:
	.4byte __RTTI__CMdlMouth
	.4byte 0x00000000
	.4byte func_804E658C
	.4byte 0x00000000

.section .sdata, "wa" # 0x80664180 - 0x80666600

.balign 8
.global lbl_80666570
lbl_80666570:
	.4byte lbl_8066DAB0
.global lbl_80666574
lbl_80666574:
	.4byte lbl_805280A0

.global __RTTI__CMdlMouth
__RTTI__CMdlMouth:
	.4byte CMdlMouth_typestr
	.4byte 0x00000000
.global lbl_80666580
lbl_80666580:
	.4byte 0x72656600
.global lbl_80666584
lbl_80666584:
	.4byte 0x72656600

.section .sdata2, "a" # 0x80668380 - 0x8066DCE0

.balign 8
.global lbl_8066DAB0
lbl_8066DAB0:
	.4byte 0x4A556A61
	.4byte 0x77000000
.global lbl_8066DAB8
lbl_8066DAB8:
	.4byte 0x00000000
.global lbl_8066DABC
lbl_8066DABC:
	.4byte 0x3F800000
.global lbl_8066DAC0
lbl_8066DAC0:
	.4byte 0x3E4CCCCD
.global lbl_8066DAC4
lbl_8066DAC4:
	.4byte 0x3B03126F
.global lbl_8066DAC8
lbl_8066DAC8:
	.4byte 0x3BC49BA6
	.4byte 0x00000000
.global lbl_8066DAD0
lbl_8066DAD0:
	.4byte 0x43300000
	.4byte 0x80000000
.global lbl_8066DAD8
lbl_8066DAD8:
	.4byte 0x4222F983
.global lbl_8066DADC
lbl_8066DADC:
	.4byte 0x42040000
.global lbl_8066DAE0
lbl_8066DAE0:
	.4byte 0x40800000
	.4byte 0x00000000

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80020CD0", local
.hidden "@etb_80020CD0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020CD0"

.obj "@etb_80020CD8", local
.hidden "@etb_80020CD8"
	.4byte 0x380A0000
	.4byte 0x00000000
.endobj "@etb_80020CD8"

.obj "@etb_80020CE0", local
.hidden "@etb_80020CE0"
	.4byte 0x200A0000
	.4byte 0x00000000
.endobj "@etb_80020CE0"

.obj "@etb_80020CE8", local
.hidden "@etb_80020CE8"
	.4byte 0x180A0000
	.4byte 0x00000000
.endobj "@etb_80020CE8"

.obj "@etb_80020CF0", local
.hidden "@etb_80020CF0"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_80020CF0"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80038DF8", local
.hidden "@eti_80038DF8"
	.4byte func_804E658C
	.4byte 0x00000040
	.4byte "@etb_80020CD0"
.endobj "@eti_80038DF8"

.obj "@eti_80038E04", local
.hidden "@eti_80038E04"
	.4byte func_804E65CC
	.4byte 0x000001D0
	.4byte "@etb_80020CD8"
.endobj "@eti_80038E04"

.obj "@eti_80038E10", local
.hidden "@eti_80038E10"
	.4byte func_804E679C
	.4byte 0x000000FC
	.4byte "@etb_80020CE0"
.endobj "@eti_80038E10"

.obj "@eti_80038E1C", local
.hidden "@eti_80038E1C"
	.4byte func_804E68A0
	.4byte 0x00000188
	.4byte "@etb_80020CE8"
.endobj "@eti_80038E1C"

.obj "@eti_80038E28", local
.hidden "@eti_80038E28"
	.4byte func_804E6A28
	.4byte 0x000001EC
	.4byte "@etb_80020CF0"
.endobj "@eti_80038E28"
