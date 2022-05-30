.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

#.balign 16, 0
.global func_802FDE78
func_802FDE78:
/* 802FDE78 002C7438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FDE7C 002C743C  7C 08 02 A6 */	mflr r0
/* 802FDE80 002C7440  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FDE84 002C7444  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FDE88 002C7448  3F E0 80 55 */	lis r31, lbl_80548530@ha
/* 802FDE8C 002C744C  3B FF 85 30 */	addi r31, r31, lbl_80548530@l
/* 802FDE90 002C7450  93 C1 00 08 */	stw r30, 8(r1)
/* 802FDE94 002C7454  7C 7E 1B 78 */	mr r30, r3
/* 802FDE98 002C7458  A0 A3 00 12 */	lhz r5, 0x12(r3)
/* 802FDE9C 002C745C  2C 05 00 00 */	cmpwi r5, 0
/* 802FDEA0 002C7460  40 82 00 C0 */	bne lbl_802FDF60
/* 802FDEA4 002C7464  38 63 00 06 */	addi r3, r3, 6
/* 802FDEA8 002C7468  4B FE 79 59 */	bl btm_get_max_packet_size
/* 802FDEAC 002C746C  54 65 04 3F */	clrlwi. r5, r3, 0x10
/* 802FDEB0 002C7470  40 82 00 34 */	bne lbl_802FDEE4
/* 802FDEB4 002C7474  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FDEB8 002C7478  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FDEBC 002C747C  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FDEC0 002C7480  28 00 00 02 */	cmplwi r0, 2
/* 802FDEC4 002C7484  41 80 00 14 */	blt lbl_802FDED8
/* 802FDEC8 002C7488  3C 60 00 09 */	lis r3, 0x00090001@ha
/* 802FDECC 002C748C  38 9F 00 00 */	addi r4, r31, 0
/* 802FDED0 002C7490  38 63 00 01 */	addi r3, r3, 0x00090001@l
/* 802FDED4 002C7494  4B FE 00 CD */	bl LogMsg_0
lbl_802FDED8:
/* 802FDED8 002C7498  38 00 00 7F */	li r0, 0x7f
/* 802FDEDC 002C749C  B0 1E 00 12 */	sth r0, 0x12(r30)
/* 802FDEE0 002C74A0  48 00 00 A4 */	b lbl_802FDF84
lbl_802FDEE4:
/* 802FDEE4 002C74A4  28 05 06 9F */	cmplwi r5, 0x69f
/* 802FDEE8 002C74A8  41 81 00 44 */	bgt lbl_802FDF2C
/* 802FDEEC 002C74AC  38 00 06 9F */	li r0, 0x69f
/* 802FDEF0 002C74B0  3C 80 80 5C */	lis r4, lbl_805C32A8@ha
/* 802FDEF4 002C74B4  7C 00 2B D6 */	divw r0, r0, r5
/* 802FDEF8 002C74B8  38 84 32 A8 */	addi r4, r4, lbl_805C32A8@l
/* 802FDEFC 002C74BC  7C 60 19 D6 */	mullw r3, r0, r3
/* 802FDF00 002C74C0  38 A3 FF F6 */	addi r5, r3, -10
/* 802FDF04 002C74C4  B0 BE 00 12 */	sth r5, 0x12(r30)
/* 802FDF08 002C74C8  88 04 04 14 */	lbz r0, 0x414(r4)
/* 802FDF0C 002C74CC  28 00 00 05 */	cmplwi r0, 5
/* 802FDF10 002C74D0  41 80 00 74 */	blt lbl_802FDF84
/* 802FDF14 002C74D4  3C 60 00 09 */	lis r3, 0x00090004@ha
/* 802FDF18 002C74D8  38 9F 00 20 */	addi r4, r31, 0x20
/* 802FDF1C 002C74DC  38 63 00 04 */	addi r3, r3, 0x00090004@l
/* 802FDF20 002C74E0  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 802FDF24 002C74E4  4B FE 00 9D */	bl LogMsg_1
/* 802FDF28 002C74E8  48 00 00 5C */	b lbl_802FDF84
lbl_802FDF2C:
/* 802FDF2C 002C74EC  38 00 06 95 */	li r0, 0x695
/* 802FDF30 002C74F0  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FDF34 002C74F4  B0 1E 00 12 */	sth r0, 0x12(r30)
/* 802FDF38 002C74F8  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FDF3C 002C74FC  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FDF40 002C7500  28 00 00 05 */	cmplwi r0, 5
/* 802FDF44 002C7504  41 80 00 40 */	blt lbl_802FDF84
/* 802FDF48 002C7508  3C 60 00 09 */	lis r3, 0x00090004@ha
/* 802FDF4C 002C750C  38 9F 00 58 */	addi r4, r31, 0x58
/* 802FDF50 002C7510  38 63 00 04 */	addi r3, r3, 0x00090004@l
/* 802FDF54 002C7514  38 A0 06 95 */	li r5, 0x695
/* 802FDF58 002C7518  4B FE 00 69 */	bl LogMsg_1
/* 802FDF5C 002C751C  48 00 00 28 */	b lbl_802FDF84
lbl_802FDF60:
/* 802FDF60 002C7520  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FDF64 002C7524  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FDF68 002C7528  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FDF6C 002C752C  28 00 00 05 */	cmplwi r0, 5
/* 802FDF70 002C7530  41 80 00 14 */	blt lbl_802FDF84
/* 802FDF74 002C7534  3C 60 00 09 */	lis r3, 0x00090004@ha
/* 802FDF78 002C7538  38 9F 00 90 */	addi r4, r31, 0x90
/* 802FDF7C 002C753C  38 63 00 04 */	addi r3, r3, 0x00090004@l
/* 802FDF80 002C7540  4B FE 00 41 */	bl LogMsg_1
lbl_802FDF84:
/* 802FDF84 002C7544  A0 FE 00 12 */	lhz r7, 0x12(r30)
/* 802FDF88 002C7548  38 60 1F 40 */	li r3, 0x1f40
/* 802FDF8C 002C754C  38 80 13 88 */	li r4, 0x1388
/* 802FDF90 002C7550  38 00 2E E0 */	li r0, 0x2ee0
/* 802FDF94 002C7554  7C A3 3B D6 */	divw r5, r3, r7
/* 802FDF98 002C7558  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FDF9C 002C755C  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FDFA0 002C7560  7C C4 3B D6 */	divw r6, r4, r7
/* 802FDFA4 002C7564  B0 BE 00 9C */	sth r5, 0x9c(r30)
/* 802FDFA8 002C7568  7C E0 3B D6 */	divw r7, r0, r7
/* 802FDFAC 002C756C  B0 DE 00 9E */	sth r6, 0x9e(r30)
/* 802FDFB0 002C7570  B0 FE 00 A0 */	sth r7, 0xa0(r30)
/* 802FDFB4 002C7574  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FDFB8 002C7578  28 00 00 05 */	cmplwi r0, 5
/* 802FDFBC 002C757C  41 80 00 20 */	blt lbl_802FDFDC
/* 802FDFC0 002C7580  3C 60 00 09 */	lis r3, 0x00090004@ha
/* 802FDFC4 002C7584  38 9F 00 B8 */	addi r4, r31, 0xb8
/* 802FDFC8 002C7588  38 63 00 04 */	addi r3, r3, 0x00090004@l
/* 802FDFCC 002C758C  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 802FDFD0 002C7590  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 802FDFD4 002C7594  54 E7 04 3E */	clrlwi r7, r7, 0x10
/* 802FDFD8 002C7598  4B FE 00 29 */	bl LogMsg_3
lbl_802FDFDC:
/* 802FDFDC 002C759C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FDFE0 002C75A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FDFE4 002C75A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802FDFE8 002C75A8  7C 08 03 A6 */	mtlr r0
/* 802FDFEC 002C75AC  38 21 00 10 */	addi r1, r1, 0x10
/* 802FDFF0 002C75B0  4E 80 00 20 */	blr 

#.balign 16, 0
.global func_802FDFF4
func_802FDFF4:
/* 802FDFF4 002C75B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FDFF8 002C75B8  7C 08 02 A6 */	mflr r0
/* 802FDFFC 002C75BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE000 002C75C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FE004 002C75C4  7C 7F 1B 78 */	mr r31, r3
/* 802FE008 002C75C8  48 00 00 08 */	b lbl_802FE010
lbl_802FE00C:
/* 802FE00C 002C75CC  4B FD D4 D5 */	bl GKI_freebuf
lbl_802FE010:
/* 802FE010 002C75D0  38 7F 00 30 */	addi r3, r31, 0x30
/* 802FE014 002C75D4  4B FD DB 7D */	bl func_802DBB90
/* 802FE018 002C75D8  2C 03 00 00 */	cmpwi r3, 0
/* 802FE01C 002C75DC  40 82 FF F0 */	bne lbl_802FE00C
/* 802FE020 002C75E0  38 00 00 00 */	li r0, 0
/* 802FE024 002C75E4  90 1F 00 40 */	stw r0, 0x40(r31)
/* 802FE028 002C75E8  48 00 00 08 */	b lbl_802FE030
lbl_802FE02C:
/* 802FE02C 002C75EC  4B FD D4 B5 */	bl GKI_freebuf
lbl_802FE030:
/* 802FE030 002C75F0  38 7F 00 18 */	addi r3, r31, 0x18
/* 802FE034 002C75F4  4B FD DB 5D */	bl func_802DBB90
/* 802FE038 002C75F8  2C 03 00 00 */	cmpwi r3, 0
/* 802FE03C 002C75FC  40 82 FF F0 */	bne lbl_802FE02C
/* 802FE040 002C7600  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 802FE044 002C7604  38 60 00 00 */	li r3, 0
/* 802FE048 002C7608  90 7F 00 28 */	stw r3, 0x28(r31)
/* 802FE04C 002C760C  2C 00 00 00 */	cmpwi r0, 0
/* 802FE050 002C7610  98 7F 00 02 */	stb r3, 2(r31)
/* 802FE054 002C7614  40 82 00 68 */	bne lbl_802FE0BC
/* 802FE058 002C7618  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FE05C 002C761C  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FE060 002C7620  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FE064 002C7624  28 00 00 05 */	cmplwi r0, 5
/* 802FE068 002C7628  41 80 00 18 */	blt lbl_802FE080
/* 802FE06C 002C762C  3C 60 00 09 */	lis r3, 0x00090004@ha
/* 802FE070 002C7630  3C 80 80 55 */	lis r4, lbl_80548630@ha
/* 802FE074 002C7634  38 63 00 04 */	addi r3, r3, 0x00090004@l
/* 802FE078 002C7638  38 84 86 30 */	addi r4, r4, lbl_80548630@l
/* 802FE07C 002C763C  4B FD FF 25 */	bl LogMsg_0
lbl_802FE080:
/* 802FE080 002C7640  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 802FE084 002C7644  2C 03 00 00 */	cmpwi r3, 0
/* 802FE088 002C7648  41 82 00 1C */	beq lbl_802FE0A4
/* 802FE08C 002C764C  88 1F 00 0D */	lbz r0, 0xd(r31)
/* 802FE090 002C7650  38 80 00 00 */	li r4, 0
/* 802FE094 002C7654  7C 63 02 14 */	add r3, r3, r0
/* 802FE098 002C7658  98 83 00 24 */	stb r4, 0x24(r3)
/* 802FE09C 002C765C  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 802FE0A0 002C7660  48 00 4A 45 */	bl func_80302AE4
lbl_802FE0A4:
/* 802FE0A4 002C7664  7F E3 FB 78 */	mr r3, r31
/* 802FE0A8 002C7668  48 00 49 E5 */	bl func_80302A8C
/* 802FE0AC 002C766C  7F E3 FB 78 */	mr r3, r31
/* 802FE0B0 002C7670  38 80 00 00 */	li r4, 0
/* 802FE0B4 002C7674  38 A0 00 A4 */	li r5, 0xa4
/* 802FE0B8 002C7678  4B D0 62 99 */	bl memset
lbl_802FE0BC:
/* 802FE0BC 002C767C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FE0C0 002C7680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FE0C4 002C7684  7C 08 03 A6 */	mtlr r0
/* 802FE0C8 002C7688  38 21 00 10 */	addi r1, r1, 0x10
/* 802FE0CC 002C768C  4E 80 00 20 */	blr 

#.balign 16, 0
.global func_802FE0D0
func_802FE0D0:
/* 802FE0D0 002C7690  2C 03 00 00 */	cmpwi r3, 0
/* 802FE0D4 002C7694  40 82 00 0C */	bne func_802FE0E0
/* 802FE0D8 002C7698  38 60 00 00 */	li r3, 0
/* 802FE0DC 002C769C  4E 80 00 20 */	blr

#.balign 16, 0
.global func_802FE0E0
func_802FE0E0:
/* 802FE0E0 002C76A0  28 04 00 3D */	cmplwi r4, 0x3d
/* 802FE0E4 002C76A4  40 81 00 0C */	ble func_802FE0F0
/* 802FE0E8 002C76A8  38 60 00 00 */	li r3, 0
/* 802FE0EC 002C76AC  4E 80 00 20 */	blr

#.balign 16, 0
.global func_802FE0F0
func_802FE0F0:
/* 802FE0F0 002C76B0  7C 63 22 14 */	add r3, r3, r4
/* 802FE0F4 002C76B4  88 63 00 24 */	lbz r3, 0x24(r3)
/* 802FE0F8 002C76B8  2C 03 00 00 */	cmpwi r3, 0
/* 802FE0FC 002C76BC  40 82 00 0C */	bne func_802FE108
/* 802FE100 002C76C0  38 60 00 00 */	li r3, 0
/* 802FE104 002C76C4  4E 80 00 20 */	blr

#.balign 16, 0
.global func_802FE108
func_802FE108:
/* 802FE108 002C76C8  38 03 FF FF */	addi r0, r3, -1
/* 802FE10C 002C76CC  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FE110 002C76D0  1C 00 00 A4 */	mulli r0, r0, 0xa4
/* 802FE114 002C76D4  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FE118 002C76D8  7C 63 02 14 */	add r3, r3, r0
/* 802FE11C 002C76DC  38 63 00 68 */	addi r3, r3, 0x68
/* 802FE120 002C76E0  4E 80 00 20 */	blr 

#.balign 16, 0
.global func_802FE124
func_802FE124:
/* 802FE124 002C76E4  3C A0 80 5C */	lis r5, lbl_805C32A8@ha
/* 802FE128 002C76E8  38 00 00 05 */	li r0, 5
/* 802FE12C 002C76EC  54 66 07 FE */	clrlwi r6, r3, 0x1f
/* 802FE130 002C76F0  38 E3 FF FF */	addi r7, r3, -1
/* 802FE134 002C76F4  38 A5 32 A8 */	addi r5, r5, lbl_805C32A8@l
/* 802FE138 002C76F8  39 00 00 00 */	li r8, 0
/* 802FE13C 002C76FC  7C 09 03 A6 */	mtctr r0
lbl_802FE140:
/* 802FE140 002C7700  55 00 04 3E */	clrlwi r0, r8, 0x10
/* 802FE144 002C7704  1C 00 00 A4 */	mulli r0, r0, 0xa4
/* 802FE148 002C7708  7C 85 02 14 */	add r4, r5, r0
/* 802FE14C 002C770C  88 04 00 69 */	lbz r0, 0x69(r4)
/* 802FE150 002C7710  39 24 00 68 */	addi r9, r4, 0x68
/* 802FE154 002C7714  2C 00 00 00 */	cmpwi r0, 0
/* 802FE158 002C7718  41 82 00 44 */	beq func_802FE19C
/* 802FE15C 002C771C  80 09 00 6C */	lwz r0, 0x6c(r9)
/* 802FE160 002C7720  2C 00 00 00 */	cmpwi r0, 0
/* 802FE164 002C7724  40 82 00 38 */	bne func_802FE19C
/* 802FE168 002C7728  88 89 00 0D */	lbz r4, 0xd(r9)
/* 802FE16C 002C772C  7C 04 18 40 */	cmplw r4, r3
/* 802FE170 002C7730  40 82 00 0C */	bne func_802FE17C
/* 802FE174 002C7734  7D 23 4B 78 */	mr r3, r9
/* 802FE178 002C7738  4E 80 00 20 */	blr

#.balign 16, 0
.global func_802FE17C
func_802FE17C:
/* 802FE17C 002C773C  2C 06 00 00 */	cmpwi r6, 0
/* 802FE180 002C7740  41 82 00 1C */	beq func_802FE19C
/* 802FE184 002C7744  7C 04 38 00 */	cmpw r4, r7
/* 802FE188 002C7748  40 82 00 14 */	bne func_802FE19C
/* 802FE18C 002C774C  38 04 00 01 */	addi r0, r4, 1
/* 802FE190 002C7750  7D 23 4B 78 */	mr r3, r9
/* 802FE194 002C7754  98 09 00 0D */	stb r0, 0xd(r9)
/* 802FE198 002C7758  4E 80 00 20 */	blr

#.balign 16, 0
.global func_802FE19C
func_802FE19C:
/* 802FE19C 002C775C  39 08 00 01 */	addi r8, r8, 1
/* 802FE1A0 002C7760  42 00 FF A0 */	bdnz lbl_802FE140
/* 802FE1A4 002C7764  38 60 00 00 */	li r3, 0
/* 802FE1A8 002C7768  4E 80 00 20 */	blr 

#.balign 16, 0
.global func_802FE1AC
func_802FE1AC:
/* 802FE1AC 002C776C  88 03 00 24 */	lbz r0, 0x24(r3)
/* 802FE1B0 002C7770  38 A0 00 00 */	li r5, 0
/* 802FE1B4 002C7774  2C 00 00 00 */	cmpwi r0, 0
/* 802FE1B8 002C7778  40 82 00 34 */	bne lbl_802FE1EC
/* 802FE1BC 002C777C  80 83 00 6C */	lwz r4, 0x6c(r3)
/* 802FE1C0 002C7780  2C 04 00 00 */	cmpwi r4, 0
/* 802FE1C4 002C7784  41 82 00 28 */	beq lbl_802FE1EC
/* 802FE1C8 002C7788  88 04 00 71 */	lbz r0, 0x71(r4)
/* 802FE1CC 002C778C  2C 00 00 00 */	cmpwi r0, 0
/* 802FE1D0 002C7790  41 82 00 1C */	beq lbl_802FE1EC
/* 802FE1D4 002C7794  80 03 00 28 */	lwz r0, 0x28(r3)
/* 802FE1D8 002C7798  28 00 1F 40 */	cmplwi r0, 0x1f40
/* 802FE1DC 002C779C  41 81 00 10 */	bgt lbl_802FE1EC
/* 802FE1E0 002C77A0  A0 03 00 20 */	lhz r0, 0x20(r3)
/* 802FE1E4 002C77A4  28 00 00 10 */	cmplwi r0, 0x10
/* 802FE1E8 002C77A8  40 81 00 08 */	ble lbl_802FE1F0
lbl_802FE1EC:
/* 802FE1EC 002C77AC  38 A0 00 01 */	li r5, 1
lbl_802FE1F0:
/* 802FE1F0 002C77B0  88 03 00 25 */	lbz r0, 0x25(r3)
/* 802FE1F4 002C77B4  7C 00 28 40 */	cmplw r0, r5
/* 802FE1F8 002C77B8  40 82 00 0C */	bne func_802FE204
/* 802FE1FC 002C77BC  38 60 00 00 */	li r3, 0
/* 802FE200 002C77C0  4E 80 00 20 */	blr

#.balign 16, 0
.global func_802FE204
func_802FE204:
/* 802FE204 002C77C4  2C 05 00 00 */	cmpwi r5, 0
/* 802FE208 002C77C8  98 A3 00 25 */	stb r5, 0x25(r3)
/* 802FE20C 002C77CC  3C 60 00 03 */	lis r3, 3
/* 802FE210 002C77D0  4D 82 00 20 */	beqlr 
/* 802FE214 002C77D4  3C 60 00 01 */	lis r3, 1
/* 802FE218 002C77D8  4E 80 00 20 */	blr 

#.balign 16, 0
.global func_802FE21C
func_802FE21C:
/* 802FE21C 002C77DC  7C A4 22 78 */	xor r4, r5, r4
/* 802FE220 002C77E0  38 C0 00 00 */	li r6, 0
/* 802FE224 002C77E4  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 802FE228 002C77E8  41 82 00 14 */	beq lbl_802FE23C
/* 802FE22C 002C77EC  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 802FE230 002C77F0  60 C6 00 10 */	ori r6, r6, 0x10
/* 802FE234 002C77F4  41 82 00 08 */	beq lbl_802FE23C
/* 802FE238 002C77F8  60 C6 08 00 */	ori r6, r6, 0x800
lbl_802FE23C:
/* 802FE23C 002C77FC  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 802FE240 002C7800  41 82 00 14 */	beq lbl_802FE254
/* 802FE244 002C7804  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 802FE248 002C7808  60 C6 00 08 */	ori r6, r6, 8
/* 802FE24C 002C780C  41 82 00 08 */	beq lbl_802FE254
/* 802FE250 002C7810  60 C6 04 00 */	ori r6, r6, 0x400
lbl_802FE254:
/* 802FE254 002C7814  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 802FE258 002C7818  41 82 00 08 */	beq lbl_802FE260
/* 802FE25C 002C781C  60 C6 01 00 */	ori r6, r6, 0x100
lbl_802FE260:
/* 802FE260 002C7820  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 802FE264 002C7824  41 82 00 14 */	beq lbl_802FE278
/* 802FE268 002C7828  54 A0 07 39 */	rlwinm. r0, r5, 0, 0x1c, 0x1c
/* 802FE26C 002C782C  60 C6 00 20 */	ori r6, r6, 0x20
/* 802FE270 002C7830  41 82 00 08 */	beq lbl_802FE278
/* 802FE274 002C7834  60 C6 10 00 */	ori r6, r6, 0x1000
lbl_802FE278:
/* 802FE278 002C7838  80 03 00 88 */	lwz r0, 0x88(r3)
/* 802FE27C 002C783C  7C 03 30 38 */	and r3, r0, r6
/* 802FE280 002C7840  4E 80 00 20 */	blr 

#.balign 16, 0
.global func_802FE284
func_802FE284:
/* 802FE284 002C7844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FE288 002C7848  7C 08 02 A6 */	mflr r0
/* 802FE28C 002C784C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FE290 002C7850  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FE294 002C7854  7C 7F 1B 78 */	mr r31, r3
/* 802FE298 002C7858  80 C3 00 6C */	lwz r6, 0x6c(r3)
/* 802FE29C 002C785C  2C 06 00 00 */	cmpwi r6, 0
/* 802FE2A0 002C7860  41 82 01 9C */	beq lbl_802FE43C
/* 802FE2A4 002C7864  88 06 00 72 */	lbz r0, 0x72(r6)
/* 802FE2A8 002C7868  28 00 00 02 */	cmplwi r0, 2
/* 802FE2AC 002C786C  40 82 00 B0 */	bne lbl_802FE35C
/* 802FE2B0 002C7870  2C 04 00 00 */	cmpwi r4, 0
/* 802FE2B4 002C7874  41 82 00 74 */	beq lbl_802FE328
/* 802FE2B8 002C7878  A0 03 00 9A */	lhz r0, 0x9a(r3)
/* 802FE2BC 002C787C  7C 05 00 40 */	cmplw r5, r0
/* 802FE2C0 002C7880  40 81 00 10 */	ble lbl_802FE2D0
/* 802FE2C4 002C7884  38 00 00 00 */	li r0, 0
/* 802FE2C8 002C7888  B0 03 00 9A */	sth r0, 0x9a(r3)
/* 802FE2CC 002C788C  48 00 00 0C */	b lbl_802FE2D8
lbl_802FE2D0:
/* 802FE2D0 002C7890  7C 05 00 50 */	subf r0, r5, r0
/* 802FE2D4 002C7894  B0 03 00 9A */	sth r0, 0x9a(r3)
lbl_802FE2D8:
/* 802FE2D8 002C7898  A0 83 00 9A */	lhz r4, 0x9a(r3)
/* 802FE2DC 002C789C  A0 03 00 9E */	lhz r0, 0x9e(r3)
/* 802FE2E0 002C78A0  7C 04 00 40 */	cmplw r4, r0
/* 802FE2E4 002C78A4  41 81 01 58 */	bgt lbl_802FE43C
/* 802FE2E8 002C78A8  88 03 00 3D */	lbz r0, 0x3d(r3)
/* 802FE2EC 002C78AC  2C 00 00 00 */	cmpwi r0, 0
/* 802FE2F0 002C78B0  40 82 01 4C */	bne lbl_802FE43C
/* 802FE2F4 002C78B4  A0 03 00 9C */	lhz r0, 0x9c(r3)
/* 802FE2F8 002C78B8  7C 00 20 40 */	cmplw r0, r4
/* 802FE2FC 002C78BC  40 81 01 40 */	ble lbl_802FE43C
/* 802FE300 002C78C0  7C 04 00 50 */	subf r0, r4, r0
/* 802FE304 002C78C4  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 802FE308 002C78C8  88 9F 00 0D */	lbz r4, 0xd(r31)
/* 802FE30C 002C78CC  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 802FE310 002C78D0  48 00 37 75 */	bl func_80301A84
/* 802FE314 002C78D4  A0 7F 00 9C */	lhz r3, 0x9c(r31)
/* 802FE318 002C78D8  38 00 00 00 */	li r0, 0
/* 802FE31C 002C78DC  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802FE320 002C78E0  B0 7F 00 9A */	sth r3, 0x9a(r31)
/* 802FE324 002C78E4  48 00 01 18 */	b lbl_802FE43C
lbl_802FE328:
/* 802FE328 002C78E8  80 03 00 94 */	lwz r0, 0x94(r3)
/* 802FE32C 002C78EC  2C 00 00 00 */	cmpwi r0, 0
/* 802FE330 002C78F0  41 82 00 10 */	beq lbl_802FE340
/* 802FE334 002C78F4  38 00 00 01 */	li r0, 1
/* 802FE338 002C78F8  98 03 00 3C */	stb r0, 0x3c(r3)
/* 802FE33C 002C78FC  48 00 01 00 */	b lbl_802FE43C
lbl_802FE340:
/* 802FE340 002C7900  A0 83 00 38 */	lhz r4, 0x38(r3)
/* 802FE344 002C7904  A0 03 00 9C */	lhz r0, 0x9c(r3)
/* 802FE348 002C7908  7C 04 00 40 */	cmplw r4, r0
/* 802FE34C 002C790C  41 80 00 F0 */	blt lbl_802FE43C
/* 802FE350 002C7910  38 00 00 01 */	li r0, 1
/* 802FE354 002C7914  98 03 00 3C */	stb r0, 0x3c(r3)
/* 802FE358 002C7918  48 00 00 E4 */	b lbl_802FE43C
lbl_802FE35C:
/* 802FE35C 002C791C  2C 04 00 00 */	cmpwi r4, 0
/* 802FE360 002C7920  41 82 00 50 */	beq lbl_802FE3B0
/* 802FE364 002C7924  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 802FE368 002C7928  2C 00 00 00 */	cmpwi r0, 0
/* 802FE36C 002C792C  41 82 00 D0 */	beq lbl_802FE43C
/* 802FE370 002C7930  80 03 00 40 */	lwz r0, 0x40(r3)
/* 802FE374 002C7934  28 00 13 88 */	cmplwi r0, 0x1388
/* 802FE378 002C7938  40 80 00 C4 */	bge lbl_802FE43C
/* 802FE37C 002C793C  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 802FE380 002C7940  28 00 00 08 */	cmplwi r0, 8
/* 802FE384 002C7944  40 80 00 B8 */	bge lbl_802FE43C
/* 802FE388 002C7948  88 03 00 3D */	lbz r0, 0x3d(r3)
/* 802FE38C 002C794C  38 80 00 00 */	li r4, 0
/* 802FE390 002C7950  98 83 00 3C */	stb r4, 0x3c(r3)
/* 802FE394 002C7954  2C 00 00 00 */	cmpwi r0, 0
/* 802FE398 002C7958  40 82 00 A4 */	bne lbl_802FE43C
/* 802FE39C 002C795C  88 9F 00 0D */	lbz r4, 0xd(r31)
/* 802FE3A0 002C7960  7C C3 33 78 */	mr r3, r6
/* 802FE3A4 002C7964  38 A0 00 01 */	li r5, 1
/* 802FE3A8 002C7968  48 00 2B 4D */	bl func_80300EF4
/* 802FE3AC 002C796C  48 00 00 90 */	b lbl_802FE43C
lbl_802FE3B0:
/* 802FE3B0 002C7970  80 03 00 94 */	lwz r0, 0x94(r3)
/* 802FE3B4 002C7974  2C 00 00 00 */	cmpwi r0, 0
/* 802FE3B8 002C7978  41 82 00 20 */	beq lbl_802FE3D8
/* 802FE3BC 002C797C  38 00 00 01 */	li r0, 1
/* 802FE3C0 002C7980  88 9F 00 0D */	lbz r4, 0xd(r31)
/* 802FE3C4 002C7984  98 03 00 3C */	stb r0, 0x3c(r3)
/* 802FE3C8 002C7988  7C C3 33 78 */	mr r3, r6
/* 802FE3CC 002C798C  38 A0 00 00 */	li r5, 0
/* 802FE3D0 002C7990  48 00 2B 25 */	bl func_80300EF4
/* 802FE3D4 002C7994  48 00 00 68 */	b lbl_802FE43C
lbl_802FE3D8:
/* 802FE3D8 002C7998  80 03 00 40 */	lwz r0, 0x40(r3)
/* 802FE3DC 002C799C  28 00 1F 40 */	cmplwi r0, 0x1f40
/* 802FE3E0 002C79A0  41 81 00 10 */	bgt lbl_802FE3F0
/* 802FE3E4 002C79A4  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 802FE3E8 002C79A8  28 00 00 10 */	cmplwi r0, 0x10
/* 802FE3EC 002C79AC  40 81 00 50 */	ble lbl_802FE43C
lbl_802FE3F0:
/* 802FE3F0 002C79B0  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 802FE3F4 002C79B4  2C 00 00 00 */	cmpwi r0, 0
/* 802FE3F8 002C79B8  40 82 00 44 */	bne lbl_802FE43C
/* 802FE3FC 002C79BC  3C 60 80 5C */	lis r3, lbl_805C32A8@ha
/* 802FE400 002C79C0  38 63 32 A8 */	addi r3, r3, lbl_805C32A8@l
/* 802FE404 002C79C4  88 03 04 14 */	lbz r0, 0x414(r3)
/* 802FE408 002C79C8  28 00 00 04 */	cmplwi r0, 4
/* 802FE40C 002C79CC  41 80 00 18 */	blt lbl_802FE424
/* 802FE410 002C79D0  3C 60 00 09 */	lis r3, 0x00090003@ha
/* 802FE414 002C79D4  3C 80 80 55 */	lis r4, lbl_80548648@ha
/* 802FE418 002C79D8  38 63 00 03 */	addi r3, r3, 0x00090003@l
/* 802FE41C 002C79DC  38 84 86 48 */	addi r4, r4, lbl_80548648@l
/* 802FE420 002C79E0  4B FD FB 81 */	bl LogMsg_0
lbl_802FE424:
/* 802FE424 002C79E4  38 00 00 01 */	li r0, 1
/* 802FE428 002C79E8  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 802FE42C 002C79EC  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802FE430 002C79F0  38 A0 00 00 */	li r5, 0
/* 802FE434 002C79F4  88 9F 00 0D */	lbz r4, 0xd(r31)
/* 802FE438 002C79F8  48 00 2A BD */	bl func_80300EF4
lbl_802FE43C:
/* 802FE43C 002C79FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FE440 002C7A00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FE444 002C7A04  7C 08 03 A6 */	mtlr r0
/* 802FE448 002C7A08  38 21 00 10 */	addi r1, r1, 0x10
/* 802FE44C 002C7A0C  4E 80 00 20 */	blr 
