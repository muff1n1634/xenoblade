.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_803DFDD4
func_803DFDD4:
/* 803DFDD4 003A9394  80 C3 00 00 */	lwz r6, 0(r3)
/* 803DFDD8 003A9398  80 06 00 10 */	lwz r0, 0x10(r6)
/* 803DFDDC 003A939C  2C 00 00 00 */	cmpwi r0, 0
/* 803DFDE0 003A93A0  41 82 00 0C */	beq lbl_803DFDEC
/* 803DFDE4 003A93A4  7C 06 02 14 */	add r0, r6, r0
/* 803DFDE8 003A93A8  48 00 00 08 */	b lbl_803DFDF0
lbl_803DFDEC:
/* 803DFDEC 003A93AC  38 00 00 00 */	li r0, 0
lbl_803DFDF0:
/* 803DFDF0 003A93B0  2C 00 00 00 */	cmpwi r0, 0
/* 803DFDF4 003A93B4  41 82 00 2C */	beq lbl_803DFE20
/* 803DFDF8 003A93B8  38 A5 00 01 */	addi r5, r5, 1
/* 803DFDFC 003A93BC  54 A5 20 36 */	slwi r5, r5, 4
/* 803DFE00 003A93C0  7C A0 2A 14 */	add r5, r0, r5
/* 803DFE04 003A93C4  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 803DFE08 003A93C8  2C 05 00 00 */	cmpwi r5, 0
/* 803DFE0C 003A93CC  41 82 00 0C */	beq lbl_803DFE18
/* 803DFE10 003A93D0  7C A0 2A 14 */	add r5, r0, r5
/* 803DFE14 003A93D4  48 00 00 10 */	b lbl_803DFE24
lbl_803DFE18:
/* 803DFE18 003A93D8  38 A0 00 00 */	li r5, 0
/* 803DFE1C 003A93DC  48 00 00 08 */	b lbl_803DFE24
lbl_803DFE20:
/* 803DFE20 003A93E0  38 A0 00 00 */	li r5, 0
lbl_803DFE24:
/* 803DFE24 003A93E4  81 05 00 04 */	lwz r8, 4(r5)
/* 803DFE28 003A93E8  3C C0 80 52 */	lis r6, lbl_80520E18@ha
/* 803DFE2C 003A93EC  80 E3 00 00 */	lwz r7, 0(r3)
/* 803DFE30 003A93F0  38 C6 0E 18 */	addi r6, r6, lbl_80520E18@l
/* 803DFE34 003A93F4  55 00 66 FA */	rlwinm r0, r8, 0xc, 0x1b, 0x1d
/* 803DFE38 003A93F8  55 03 04 FE */	clrlwi r3, r8, 0x13
/* 803DFE3C 003A93FC  7D 86 00 2E */	lwzx r12, r6, r0
/* 803DFE40 003A9400  90 64 00 00 */	stw r3, 0(r4)
/* 803DFE44 003A9404  7C 83 23 78 */	mr r3, r4
/* 803DFE48 003A9408  38 87 00 20 */	addi r4, r7, 0x20
/* 803DFE4C 003A940C  7D 89 03 A6 */	mtctr r12
/* 803DFE50 003A9410  4E 80 04 20 */	bctr 

.global func_803DFE54
func_803DFE54:
/* 803DFE54 003A9414  80 03 00 00 */	lwz r0, 0(r3)
/* 803DFE58 003A9418  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 803DFE5C 003A941C  41 82 00 18 */	beq func_803DFE74
/* 803DFE60 003A9420  C0 02 BF 64 */	lfs f0, lbl_8066C2E4@sda21(r2)
/* 803DFE64 003A9424  D0 04 00 00 */	stfs f0, 0(r4)
/* 803DFE68 003A9428  D0 04 00 04 */	stfs f0, 4(r4)
/* 803DFE6C 003A942C  D0 04 00 08 */	stfs f0, 8(r4)
/* 803DFE70 003A9430  4E 80 00 20 */	blr

.global func_803DFE74
func_803DFE74:
/* 803DFE74 003A9434  C0 43 00 04 */	lfs f2, 4(r3)
/* 803DFE78 003A9438  C0 23 00 08 */	lfs f1, 8(r3)
/* 803DFE7C 003A943C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 803DFE80 003A9440  D0 44 00 00 */	stfs f2, 0(r4)
/* 803DFE84 003A9444  D0 24 00 04 */	stfs f1, 4(r4)
/* 803DFE88 003A9448  D0 04 00 08 */	stfs f0, 8(r4)
/* 803DFE8C 003A944C  4E 80 00 20 */	blr 

.global func_803DFE90
func_803DFE90:
/* 803DFE90 003A9450  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803DFE94 003A9454  7C 08 02 A6 */	mflr r0
/* 803DFE98 003A9458  90 01 00 34 */	stw r0, 0x34(r1)
/* 803DFE9C 003A945C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 803DFEA0 003A9460  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 803DFEA4 003A9464  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 803DFEA8 003A9468  F3 C1 00 18 */	psq_st f30, 24(r1), 0, qr0
/* 803DFEAC 003A946C  80 A3 00 00 */	lwz r5, 0(r3)
/* 803DFEB0 003A9470  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DFEB4 003A9474  7C 9F 23 78 */	mr r31, r4
/* 803DFEB8 003A9478  54 A0 06 B5 */	rlwinm. r0, r5, 0, 0x1a, 0x1a
/* 803DFEBC 003A947C  93 C1 00 08 */	stw r30, 8(r1)
/* 803DFEC0 003A9480  7C 7E 1B 78 */	mr r30, r3
/* 803DFEC4 003A9484  41 82 00 1C */	beq lbl_803DFEE0
/* 803DFEC8 003A9488  C0 02 BF 60 */	lfs f0, lbl_8066C2E0@sda21(r2)
/* 803DFECC 003A948C  38 60 00 01 */	li r3, 1
/* 803DFED0 003A9490  D0 04 00 00 */	stfs f0, 0(r4)
/* 803DFED4 003A9494  D0 04 00 04 */	stfs f0, 4(r4)
/* 803DFED8 003A9498  D0 04 00 08 */	stfs f0, 8(r4)
/* 803DFEDC 003A949C  48 00 01 20 */	b lbl_803DFFFC
lbl_803DFEE0:
/* 803DFEE0 003A94A0  54 A0 00 01 */	rlwinm. r0, r5, 0, 0, 0
/* 803DFEE4 003A94A4  41 82 00 24 */	beq lbl_803DFF08
/* 803DFEE8 003A94A8  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 803DFEEC 003A94AC  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 803DFEF0 003A94B0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 803DFEF4 003A94B4  38 60 00 01 */	li r3, 1
/* 803DFEF8 003A94B8  D0 44 00 00 */	stfs f2, 0(r4)
/* 803DFEFC 003A94BC  D0 24 00 04 */	stfs f1, 4(r4)
/* 803DFF00 003A94C0  D0 04 00 08 */	stfs f0, 8(r4)
/* 803DFF04 003A94C4  48 00 00 F8 */	b lbl_803DFFFC
lbl_803DFF08:
/* 803DFF08 003A94C8  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 803DFF0C 003A94CC  C0 02 BF 64 */	lfs f0, lbl_8066C2E4@sda21(r2)
/* 803DFF10 003A94D0  C3 E2 BF 60 */	lfs f31, lbl_8066C2E0@sda21(r2)
/* 803DFF14 003A94D4  EF C1 00 7C */	fnmsubs f30, f1, f1, f0
/* 803DFF18 003A94D8  FC 1E F8 40 */	fcmpo cr0, f30, f31
/* 803DFF1C 003A94DC  4C 40 13 82 */	cror 2, 0, 2
/* 803DFF20 003A94E0  40 82 00 08 */	bne lbl_803DFF28
/* 803DFF24 003A94E4  48 00 00 10 */	b lbl_803DFF34
lbl_803DFF28:
/* 803DFF28 003A94E8  FC 20 F0 90 */	fmr f1, f30
/* 803DFF2C 003A94EC  48 02 AD DD */	bl FrSqrt__Q24nw4r4mathFf
/* 803DFF30 003A94F0  EF FE 00 72 */	fmuls f31, f30, f1
lbl_803DFF34:
/* 803DFF34 003A94F4  C0 02 BF 60 */	lfs f0, lbl_8066C2E0@sda21(r2)
/* 803DFF38 003A94F8  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 803DFF3C 003A94FC  40 82 00 6C */	bne lbl_803DFFA8
/* 803DFF40 003A9500  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 803DFF44 003A9504  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 803DFF48 003A9508  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 803DFF4C 003A950C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 803DFF50 003A9510  EC 43 10 2A */	fadds f2, f3, f2
/* 803DFF54 003A9514  EC 21 00 2A */	fadds f1, f1, f0
/* 803DFF58 003A9518  48 02 AF 01 */	bl Atan2FIdx__Q24nw4r4mathFff
/* 803DFF5C 003A951C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 803DFF60 003A9520  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 803DFF64 003A9524  C0 82 BF 80 */	lfs f4, lbl_8066C300@sda21(r2)
/* 803DFF68 003A9528  EC 42 00 28 */	fsubs f2, f2, f0
/* 803DFF6C 003A952C  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 803DFF70 003A9530  EC A4 00 72 */	fmuls f5, f4, f1
/* 803DFF74 003A9534  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 803DFF78 003A9538  C0 82 BF 84 */	lfs f4, lbl_8066C304@sda21(r2)
/* 803DFF7C 003A953C  EC 23 00 2A */	fadds f1, f3, f0
/* 803DFF80 003A9540  C0 62 BF 88 */	lfs f3, lbl_8066C308@sda21(r2)
/* 803DFF84 003A9544  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 803DFF88 003A9548  D0 BF 00 00 */	stfs f5, 0(r31)
/* 803DFF8C 003A954C  FC 00 20 EE */	fsel f0, f0, f3, f4
/* 803DFF90 003A9550  D0 1F 00 04 */	stfs f0, 4(r31)
/* 803DFF94 003A9554  48 02 AE C5 */	bl Atan2FIdx__Q24nw4r4mathFff
/* 803DFF98 003A9558  C0 02 BF 80 */	lfs f0, lbl_8066C300@sda21(r2)
/* 803DFF9C 003A955C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803DFFA0 003A9560  D0 1F 00 08 */	stfs f0, 8(r31)
/* 803DFFA4 003A9564  48 00 00 54 */	b lbl_803DFFF8
lbl_803DFFA8:
/* 803DFFA8 003A9568  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 803DFFAC 003A956C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 803DFFB0 003A9570  48 02 AE A9 */	bl Atan2FIdx__Q24nw4r4mathFff
/* 803DFFB4 003A9574  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 803DFFB8 003A9578  FC 40 F8 90 */	fmr f2, f31
/* 803DFFBC 003A957C  C0 62 BF 80 */	lfs f3, lbl_8066C300@sda21(r2)
/* 803DFFC0 003A9580  FC 00 00 50 */	fneg f0, f0
/* 803DFFC4 003A9584  EC 63 00 72 */	fmuls f3, f3, f1
/* 803DFFC8 003A9588  FC 20 00 90 */	fmr f1, f0
/* 803DFFCC 003A958C  D0 7F 00 00 */	stfs f3, 0(r31)
/* 803DFFD0 003A9590  48 02 AE 89 */	bl Atan2FIdx__Q24nw4r4mathFff
/* 803DFFD4 003A9594  C0 02 BF 80 */	lfs f0, lbl_8066C300@sda21(r2)
/* 803DFFD8 003A9598  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 803DFFDC 003A959C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803DFFE0 003A95A0  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 803DFFE4 003A95A4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 803DFFE8 003A95A8  48 02 AE 71 */	bl Atan2FIdx__Q24nw4r4mathFff
/* 803DFFEC 003A95AC  C0 02 BF 80 */	lfs f0, lbl_8066C300@sda21(r2)
/* 803DFFF0 003A95B0  EC 00 00 72 */	fmuls f0, f0, f1
/* 803DFFF4 003A95B4  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_803DFFF8:
/* 803DFFF8 003A95B8  38 60 00 00 */	li r3, 0
lbl_803DFFFC:
/* 803DFFFC 003A95BC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 803E0000 003A95C0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 803E0004 003A95C4  E3 C1 00 18 */	psq_l f30, 24(r1), 0, qr0
/* 803E0008 003A95C8  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 803E000C 003A95CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E0010 003A95D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E0014 003A95D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E0018 003A95D8  7C 08 03 A6 */	mtlr r0
/* 803E001C 003A95DC  38 21 00 30 */	addi r1, r1, 0x30
/* 803E0020 003A95E0  4E 80 00 20 */	blr 

.global func_803E0024
func_803E0024:
/* 803E0024 003A95E4  80 03 00 00 */	lwz r0, 0(r3)
/* 803E0028 003A95E8  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 803E002C 003A95EC  41 82 00 18 */	beq func_803E0044
/* 803E0030 003A95F0  C0 02 BF 60 */	lfs f0, lbl_8066C2E0@sda21(r2)
/* 803E0034 003A95F4  D0 04 00 00 */	stfs f0, 0(r4)
/* 803E0038 003A95F8  D0 04 00 04 */	stfs f0, 4(r4)
/* 803E003C 003A95FC  D0 04 00 08 */	stfs f0, 8(r4)
/* 803E0040 003A9600  4E 80 00 20 */	blr

.global func_803E0044
func_803E0044:
/* 803E0044 003A9604  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 803E0048 003A9608  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 803E004C 003A960C  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 803E0050 003A9610  D0 44 00 00 */	stfs f2, 0(r4)
/* 803E0054 003A9614  D0 24 00 04 */	stfs f1, 4(r4)
/* 803E0058 003A9618  D0 04 00 08 */	stfs f0, 8(r4)
/* 803E005C 003A961C  4E 80 00 20 */	blr 

.global func_803E0060
func_803E0060:
/* 803E0060 003A9620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E0064 003A9624  7C 08 02 A6 */	mflr r0
/* 803E0068 003A9628  80 A3 00 00 */	lwz r5, 0(r3)
/* 803E006C 003A962C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E0070 003A9630  54 A0 06 B5 */	rlwinm. r0, r5, 0, 0x1a, 0x1a
/* 803E0074 003A9634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E0078 003A9638  7C 9F 23 78 */	mr r31, r4
/* 803E007C 003A963C  93 C1 00 08 */	stw r30, 8(r1)
/* 803E0080 003A9640  7C 7E 1B 78 */	mr r30, r3
/* 803E0084 003A9644  41 82 00 3C */	beq lbl_803E00C0
/* 803E0088 003A9648  54 A0 06 73 */	rlwinm. r0, r5, 0, 0x19, 0x19
/* 803E008C 003A964C  41 82 00 10 */	beq lbl_803E009C
/* 803E0090 003A9650  7F E3 FB 78 */	mr r3, r31
/* 803E0094 003A9654  4B F6 D1 4D */	bl func_8034D1E0
/* 803E0098 003A9658  48 00 00 54 */	b lbl_803E00EC
lbl_803E009C:
/* 803E009C 003A965C  7F E3 FB 78 */	mr r3, r31
/* 803E00A0 003A9660  4B F6 D1 41 */	bl func_8034D1E0
/* 803E00A4 003A9664  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 803E00A8 003A9668  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 803E00AC 003A966C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 803E00B0 003A9670  D0 5F 00 0C */	stfs f2, 0xc(r31)
/* 803E00B4 003A9674  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 803E00B8 003A9678  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 803E00BC 003A967C  48 00 00 30 */	b lbl_803E00EC
lbl_803E00C0:
/* 803E00C0 003A9680  54 A0 06 73 */	rlwinm. r0, r5, 0, 0x19, 0x19
/* 803E00C4 003A9684  41 82 00 20 */	beq lbl_803E00E4
/* 803E00C8 003A9688  38 63 00 1C */	addi r3, r3, 0x1c
/* 803E00CC 003A968C  4B F6 D1 45 */	bl func_8034D210
/* 803E00D0 003A9690  C0 02 BF 60 */	lfs f0, lbl_8066C2E0@sda21(r2)
/* 803E00D4 003A9694  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 803E00D8 003A9698  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 803E00DC 003A969C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 803E00E0 003A96A0  48 00 00 0C */	b lbl_803E00EC
lbl_803E00E4:
/* 803E00E4 003A96A4  38 63 00 1C */	addi r3, r3, 0x1c
/* 803E00E8 003A96A8  4B F6 D1 29 */	bl func_8034D210
lbl_803E00EC:
/* 803E00EC 003A96AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E00F0 003A96B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E00F4 003A96B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E00F8 003A96B8  7C 08 03 A6 */	mtlr r0
/* 803E00FC 003A96BC  38 21 00 10 */	addi r1, r1, 0x10
/* 803E0100 003A96C0  4E 80 00 20 */	blr 

.global func_803E0104
func_803E0104:
/* 803E0104 003A96C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E0108 003A96C8  7C 08 02 A6 */	mflr r0
/* 803E010C 003A96CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E0110 003A96D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E0114 003A96D4  7C 9F 23 78 */	mr r31, r4
/* 803E0118 003A96D8  93 C1 00 08 */	stw r30, 8(r1)
/* 803E011C 003A96DC  7C 7E 1B 78 */	mr r30, r3
/* 803E0120 003A96E0  4B FF FF 41 */	bl func_803E0060
/* 803E0124 003A96E4  80 1E 00 00 */	lwz r0, 0(r30)
/* 803E0128 003A96E8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 803E012C 003A96EC  40 82 00 14 */	bne lbl_803E0140
/* 803E0130 003A96F0  7F E3 FB 78 */	mr r3, r31
/* 803E0134 003A96F4  7F E4 FB 78 */	mr r4, r31
/* 803E0138 003A96F8  38 BE 00 04 */	addi r5, r30, 4
/* 803E013C 003A96FC  48 02 AF ED */	bl func_8040B128
lbl_803E0140:
/* 803E0140 003A9700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E0144 003A9704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E0148 003A9708  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E014C 003A970C  7C 08 03 A6 */	mtlr r0
/* 803E0150 003A9710  38 21 00 10 */	addi r1, r1, 0x10
/* 803E0154 003A9714  4E 80 00 20 */	blr 

.global func_803E0158
func_803E0158:
/* 803E0158 003A9718  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E015C 003A971C  7C 08 02 A6 */	mflr r0
/* 803E0160 003A9720  C0 22 BF 60 */	lfs f1, lbl_8066C2E0@sda21(r2)
/* 803E0164 003A9724  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E0168 003A9728  C0 04 00 00 */	lfs f0, 0(r4)
/* 803E016C 003A972C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803E0170 003A9730  7C 9F 23 78 */	mr r31, r4
/* 803E0174 003A9734  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803E0178 003A9738  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803E017C 003A973C  7C 7E 1B 78 */	mr r30, r3
/* 803E0180 003A9740  40 82 00 78 */	bne lbl_803E01F8
/* 803E0184 003A9744  C0 04 00 04 */	lfs f0, 4(r4)
/* 803E0188 003A9748  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803E018C 003A974C  40 82 00 6C */	bne lbl_803E01F8
/* 803E0190 003A9750  C0 04 00 08 */	lfs f0, 8(r4)
/* 803E0194 003A9754  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803E0198 003A9758  40 82 00 60 */	bne lbl_803E01F8
/* 803E019C 003A975C  80 83 00 00 */	lwz r4, 0(r3)
/* 803E01A0 003A9760  38 A0 00 20 */	li r5, 0x20
/* 803E01A4 003A9764  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 803E01A8 003A9768  41 82 00 14 */	beq lbl_803E01BC
/* 803E01AC 003A976C  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 803E01B0 003A9770  60 A5 00 04 */	ori r5, r5, 4
/* 803E01B4 003A9774  41 82 00 08 */	beq lbl_803E01BC
/* 803E01B8 003A9778  60 A5 00 02 */	ori r5, r5, 2
lbl_803E01BC:
/* 803E01BC 003A977C  80 03 00 00 */	lwz r0, 0(r3)
/* 803E01C0 003A9780  C0 02 BF 60 */	lfs f0, lbl_8066C2E0@sda21(r2)
/* 803E01C4 003A9784  C0 22 BF 64 */	lfs f1, lbl_8066C2E4@sda21(r2)
/* 803E01C8 003A9788  7C 00 2B 78 */	or r0, r0, r5
/* 803E01CC 003A978C  90 03 00 00 */	stw r0, 0(r3)
/* 803E01D0 003A9790  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 803E01D4 003A9794  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 803E01D8 003A9798  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 803E01DC 003A979C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 803E01E0 003A97A0  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 803E01E4 003A97A4  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 803E01E8 003A97A8  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 803E01EC 003A97AC  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 803E01F0 003A97B0  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 803E01F4 003A97B4  48 00 00 80 */	b lbl_803E0274
lbl_803E01F8:
/* 803E01F8 003A97B8  C0 64 00 08 */	lfs f3, 8(r4)
/* 803E01FC 003A97BC  C0 02 BF 70 */	lfs f0, lbl_8066C2F0@sda21(r2)
/* 803E0200 003A97C0  C0 44 00 04 */	lfs f2, 4(r4)
/* 803E0204 003A97C4  C0 24 00 00 */	lfs f1, 0(r4)
/* 803E0208 003A97C8  EC 60 00 F2 */	fmuls f3, f0, f3
/* 803E020C 003A97CC  C0 A3 00 48 */	lfs f5, 0x48(r3)
/* 803E0210 003A97D0  EC 40 00 B2 */	fmuls f2, f0, f2
/* 803E0214 003A97D4  C0 83 00 38 */	lfs f4, 0x38(r3)
/* 803E0218 003A97D8  EC 20 00 72 */	fmuls f1, f0, f1
/* 803E021C 003A97DC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 803E0220 003A97E0  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 803E0224 003A97E4  38 63 00 1C */	addi r3, r3, 0x1c
/* 803E0228 003A97E8  D0 01 00 08 */	stfs f0, 8(r1)
/* 803E022C 003A97EC  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 803E0230 003A97F0  48 02 AF F1 */	bl func_8040B220
/* 803E0234 003A97F4  80 7E 00 00 */	lwz r3, 0(r30)
/* 803E0238 003A97F8  38 00 FF D9 */	li r0, -39
/* 803E023C 003A97FC  C0 A1 00 08 */	lfs f5, 8(r1)
/* 803E0240 003A9800  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 803E0244 003A9804  7C 60 00 38 */	and r0, r3, r0
/* 803E0248 003A9808  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 803E024C 003A980C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 803E0250 003A9810  C0 3F 00 04 */	lfs f1, 4(r31)
/* 803E0254 003A9814  C0 1F 00 08 */	lfs f0, 8(r31)
/* 803E0258 003A9818  D0 BE 00 28 */	stfs f5, 0x28(r30)
/* 803E025C 003A981C  D0 9E 00 38 */	stfs f4, 0x38(r30)
/* 803E0260 003A9820  D0 7E 00 48 */	stfs f3, 0x48(r30)
/* 803E0264 003A9824  D0 5E 00 10 */	stfs f2, 0x10(r30)
/* 803E0268 003A9828  D0 3E 00 14 */	stfs f1, 0x14(r30)
/* 803E026C 003A982C  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 803E0270 003A9830  90 1E 00 00 */	stw r0, 0(r30)
lbl_803E0274:
/* 803E0274 003A9834  80 1E 00 00 */	lwz r0, 0(r30)
/* 803E0278 003A9838  64 00 80 00 */	oris r0, r0, 0x8000
/* 803E027C 003A983C  90 1E 00 00 */	stw r0, 0(r30)
/* 803E0280 003A9840  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803E0284 003A9844  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803E0288 003A9848  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E028C 003A984C  7C 08 03 A6 */	mtlr r0
/* 803E0290 003A9850  38 21 00 20 */	addi r1, r1, 0x20
/* 803E0294 003A9854  4E 80 00 20 */	blr 

.global func_803E0298
func_803E0298:
/* 803E0298 003A9858  C0 22 BF 60 */	lfs f1, lbl_8066C2E0@sda21(r2)
/* 803E029C 003A985C  C0 04 00 00 */	lfs f0, 0(r4)
/* 803E02A0 003A9860  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803E02A4 003A9864  40 82 00 4C */	bne lbl_803E02F0
/* 803E02A8 003A9868  C0 04 00 04 */	lfs f0, 4(r4)
/* 803E02AC 003A986C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803E02B0 003A9870  40 82 00 40 */	bne lbl_803E02F0
/* 803E02B4 003A9874  C0 04 00 08 */	lfs f0, 8(r4)
/* 803E02B8 003A9878  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 803E02BC 003A987C  40 82 00 34 */	bne lbl_803E02F0
/* 803E02C0 003A9880  80 A3 00 00 */	lwz r5, 0(r3)
/* 803E02C4 003A9884  38 C0 00 40 */	li r6, 0x40
/* 803E02C8 003A9888  54 A0 06 B5 */	rlwinm. r0, r5, 0, 0x1a, 0x1a
/* 803E02CC 003A988C  41 82 00 14 */	beq lbl_803E02E0
/* 803E02D0 003A9890  54 A0 07 39 */	rlwinm. r0, r5, 0, 0x1c, 0x1c
/* 803E02D4 003A9894  60 C6 00 04 */	ori r6, r6, 4
/* 803E02D8 003A9898  41 82 00 08 */	beq lbl_803E02E0
/* 803E02DC 003A989C  60 C6 00 02 */	ori r6, r6, 2
lbl_803E02E0:
/* 803E02E0 003A98A0  80 03 00 00 */	lwz r0, 0(r3)
/* 803E02E4 003A98A4  7C 00 33 78 */	or r0, r0, r6
/* 803E02E8 003A98A8  90 03 00 00 */	stw r0, 0(r3)
/* 803E02EC 003A98AC  48 00 00 14 */	b lbl_803E0300
lbl_803E02F0:
/* 803E02F0 003A98B0  80 A3 00 00 */	lwz r5, 0(r3)
/* 803E02F4 003A98B4  38 00 FF B9 */	li r0, -71
/* 803E02F8 003A98B8  7C A0 00 38 */	and r0, r5, r0
/* 803E02FC 003A98BC  90 03 00 00 */	stw r0, 0(r3)
lbl_803E0300:
/* 803E0300 003A98C0  C0 44 00 00 */	lfs f2, 0(r4)
/* 803E0304 003A98C4  C0 24 00 04 */	lfs f1, 4(r4)
/* 803E0308 003A98C8  C0 04 00 08 */	lfs f0, 8(r4)
/* 803E030C 003A98CC  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 803E0310 003A98D0  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 803E0314 003A98D4  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 803E0318 003A98D8  4E 80 00 20 */	blr 

.global func_803E031C
func_803E031C:
/* 803E031C 003A98DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E0320 003A98E0  7C 08 02 A6 */	mflr r0
/* 803E0324 003A98E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E0328 003A98E8  39 61 00 30 */	addi r11, r1, 0x30
/* 803E032C 003A98EC  4B ED 9E 1D */	bl _savegpr_24
/* 803E0330 003A98F0  83 23 00 00 */	lwz r25, 0(r3)
/* 803E0334 003A98F4  7C 7C 1B 78 */	mr r28, r3
/* 803E0338 003A98F8  7C 9D 23 78 */	mr r29, r4
/* 803E033C 003A98FC  3B E0 00 00 */	li r31, 0
/* 803E0340 003A9900  80 19 00 14 */	lwz r0, 0x14(r25)
/* 803E0344 003A9904  3B C0 00 00 */	li r30, 0
/* 803E0348 003A9908  2C 00 00 00 */	cmpwi r0, 0
/* 803E034C 003A990C  41 82 00 8C */	beq lbl_803E03D8
/* 803E0350 003A9910  7F A3 EB 78 */	mr r3, r29
/* 803E0354 003A9914  48 00 0A 75 */	bl func_803E0DC8
/* 803E0358 003A9918  2C 03 00 00 */	cmpwi r3, 0
/* 803E035C 003A991C  41 82 00 7C */	beq lbl_803E03D8
/* 803E0360 003A9920  80 9C 00 00 */	lwz r4, 0(r28)
/* 803E0364 003A9924  38 60 00 01 */	li r3, 1
/* 803E0368 003A9928  3B E0 00 01 */	li r31, 1
/* 803E036C 003A992C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803E0370 003A9930  2C 00 00 00 */	cmpwi r0, 0
/* 803E0374 003A9934  41 82 00 14 */	beq lbl_803E0388
/* 803E0378 003A9938  A0 04 00 18 */	lhz r0, 0x18(r4)
/* 803E037C 003A993C  28 00 FF FF */	cmplwi r0, 0xffff
/* 803E0380 003A9940  40 82 00 08 */	bne lbl_803E0388
/* 803E0384 003A9944  38 60 00 00 */	li r3, 0
lbl_803E0388:
/* 803E0388 003A9948  2C 03 00 00 */	cmpwi r3, 0
/* 803E038C 003A994C  40 82 00 48 */	bne lbl_803E03D4
/* 803E0390 003A9950  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803E0394 003A9954  2C 00 00 00 */	cmpwi r0, 0
/* 803E0398 003A9958  41 82 00 10 */	beq lbl_803E03A8
/* 803E039C 003A995C  7C 64 02 14 */	add r3, r4, r0
/* 803E03A0 003A9960  38 03 FF FC */	addi r0, r3, -4
/* 803E03A4 003A9964  48 00 00 08 */	b lbl_803E03AC
lbl_803E03A8:
/* 803E03A8 003A9968  38 00 00 00 */	li r0, 0
lbl_803E03AC:
/* 803E03AC 003A996C  90 01 00 0C */	stw r0, 0xc(r1)
/* 803E03B0 003A9970  7F A3 EB 78 */	mr r3, r29
/* 803E03B4 003A9974  38 81 00 0C */	addi r4, r1, 0xc
/* 803E03B8 003A9978  48 00 0B 51 */	bl func_803E0F08
/* 803E03BC 003A997C  2C 03 00 00 */	cmpwi r3, 0
/* 803E03C0 003A9980  41 82 00 18 */	beq lbl_803E03D8
/* 803E03C4 003A9984  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803E03C8 003A9988  3B C0 00 01 */	li r30, 1
/* 803E03CC 003A998C  B0 19 00 18 */	sth r0, 0x18(r25)
/* 803E03D0 003A9990  48 00 00 08 */	b lbl_803E03D8
lbl_803E03D4:
/* 803E03D4 003A9994  3B C0 00 01 */	li r30, 1
lbl_803E03D8:
/* 803E03D8 003A9998  7F A3 EB 78 */	mr r3, r29
/* 803E03DC 003A999C  48 00 0A 4D */	bl func_803E0E28
/* 803E03E0 003A99A0  2C 03 00 00 */	cmpwi r3, 0
/* 803E03E4 003A99A4  41 82 00 80 */	beq lbl_803E0464
/* 803E03E8 003A99A8  80 7C 00 00 */	lwz r3, 0(r28)
/* 803E03EC 003A99AC  3B 59 00 3C */	addi r26, r25, 0x3c
/* 803E03F0 003A99B0  3B 00 00 00 */	li r24, 0
/* 803E03F4 003A99B4  3B 20 00 00 */	li r25, 0
/* 803E03F8 003A99B8  8B 63 00 1A */	lbz r27, 0x1a(r3)
/* 803E03FC 003A99BC  7F FF DA 14 */	add r31, r31, r27
/* 803E0400 003A99C0  48 00 00 5C */	b lbl_803E045C
lbl_803E0404:
/* 803E0404 003A99C4  A0 1A 00 00 */	lhz r0, 0(r26)
/* 803E0408 003A99C8  28 00 FF FF */	cmplwi r0, 0xffff
/* 803E040C 003A99CC  41 82 00 0C */	beq lbl_803E0418
/* 803E0410 003A99D0  3B DE 00 01 */	addi r30, r30, 1
/* 803E0414 003A99D4  48 00 00 3C */	b lbl_803E0450
lbl_803E0418:
/* 803E0418 003A99D8  80 BC 00 00 */	lwz r5, 0(r28)
/* 803E041C 003A99DC  7F A3 EB 78 */	mr r3, r29
/* 803E0420 003A99E0  38 81 00 08 */	addi r4, r1, 8
/* 803E0424 003A99E4  38 A5 00 1C */	addi r5, r5, 0x1c
/* 803E0428 003A99E8  7C 05 C8 2E */	lwzx r0, r5, r25
/* 803E042C 003A99EC  7C A5 02 14 */	add r5, r5, r0
/* 803E0430 003A99F0  38 05 FF FC */	addi r0, r5, -4
/* 803E0434 003A99F4  90 01 00 08 */	stw r0, 8(r1)
/* 803E0438 003A99F8  48 00 0C 85 */	bl func_803E10BC
/* 803E043C 003A99FC  2C 03 00 00 */	cmpwi r3, 0
/* 803E0440 003A9A00  41 82 00 10 */	beq lbl_803E0450
/* 803E0444 003A9A04  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803E0448 003A9A08  3B DE 00 01 */	addi r30, r30, 1
/* 803E044C 003A9A0C  B0 1A 00 00 */	sth r0, 0(r26)
lbl_803E0450:
/* 803E0450 003A9A10  3B 5A 00 02 */	addi r26, r26, 2
/* 803E0454 003A9A14  3B 39 00 04 */	addi r25, r25, 4
/* 803E0458 003A9A18  3B 18 00 01 */	addi r24, r24, 1
lbl_803E045C:
/* 803E045C 003A9A1C  7C 18 D8 40 */	cmplw r24, r27
/* 803E0460 003A9A20  41 80 FF A4 */	blt lbl_803E0404
lbl_803E0464:
/* 803E0464 003A9A24  7C 1E F8 50 */	subf r0, r30, r31
/* 803E0468 003A9A28  39 61 00 30 */	addi r11, r1, 0x30
/* 803E046C 003A9A2C  7C 00 00 34 */	cntlzw r0, r0
/* 803E0470 003A9A30  54 03 D9 7E */	srwi r3, r0, 5
/* 803E0474 003A9A34  4B ED 9D 21 */	bl _restgpr_24
/* 803E0478 003A9A38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E047C 003A9A3C  7C 08 03 A6 */	mtlr r0
/* 803E0480 003A9A40  38 21 00 30 */	addi r1, r1, 0x30
/* 803E0484 003A9A44  4E 80 00 20 */	blr 
