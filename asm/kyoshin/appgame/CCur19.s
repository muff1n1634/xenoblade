.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_8029BEDC, global
/* 8029BEDC 0026549C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029BEE0 002654A0  7C 08 02 A6 */	mflr r0
/* 8029BEE4 002654A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029BEE8 002654A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029BEEC 002654AC  7C 7F 1B 78 */	mr r31, r3
/* 8029BEF0 002654B0  4B F3 60 D1 */	bl func_801D1FC0
/* 8029BEF4 002654B4  3C 80 80 54 */	lis r4, __vt__CCur19@ha
/* 8029BEF8 002654B8  7F E3 FB 78 */	mr r3, r31
/* 8029BEFC 002654BC  38 84 CE 60 */	addi r4, r4, __vt__CCur19@l
/* 8029BF00 002654C0  90 9F 00 00 */	stw r4, 0x0(r31)
/* 8029BF04 002654C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029BF08 002654C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029BF0C 002654CC  7C 08 03 A6 */	mtlr r0
/* 8029BF10 002654D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8029BF14 002654D4  4E 80 00 20 */	blr
.endfn func_8029BEDC

.fn func_8029BF18, global
/* 8029BF18 002654D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029BF1C 002654DC  7C 08 02 A6 */	mflr r0
/* 8029BF20 002654E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8029BF24 002654E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029BF28 002654E8  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 8029BF2C 002654EC  7C 7E 1B 78 */	mr r30, r3
/* 8029BF30 002654F0  7C 9F 23 78 */	mr r31, r4
/* 8029BF34 002654F4  41 82 00 1C */	beq .L_8029BF50
/* 8029BF38 002654F8  38 80 00 00 */	li r4, 0x0
/* 8029BF3C 002654FC  4B F3 60 B1 */	bl func_801D1FEC
/* 8029BF40 00265500  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8029BF44 00265504  40 81 00 0C */	ble .L_8029BF50
/* 8029BF48 00265508  7F C3 F3 78 */	mr r3, r30
/* 8029BF4C 0026550C  48 19 8C E1 */	bl __dl__FPv
.L_8029BF50:
/* 8029BF50 00265510  7F C3 F3 78 */	mr r3, r30
/* 8029BF54 00265514  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 8029BF58 00265518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029BF5C 0026551C  7C 08 03 A6 */	mtlr r0
/* 8029BF60 00265520  38 21 00 10 */	addi r1, r1, 0x10
/* 8029BF64 00265524  4E 80 00 20 */	blr
.endfn func_8029BF18

.fn func_8029BF68, global
/* 8029BF68 00265528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029BF6C 0026552C  7C 08 02 A6 */	mflr r0
/* 8029BF70 00265530  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029BF74 00265534  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 8029BF78 00265538  3F E0 80 51 */	lis r31, lbl_8050B9C8@ha
/* 8029BF7C 0026553C  7C 7E 1B 78 */	mr r30, r3
/* 8029BF80 00265540  38 BF B9 C8 */	addi r5, r31, lbl_8050B9C8@l
/* 8029BF84 00265544  80 83 00 04 */	lwz r4, 0x4(r3)
/* 8029BF88 00265548  38 63 00 08 */	addi r3, r3, 0x8
/* 8029BF8C 0026554C  4B E9 AE F9 */	bl func_80136E84
/* 8029BF90 00265550  3B FF B9 C8 */	addi r31, r31, lbl_8050B9C8@l
/* 8029BF94 00265554  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8029BF98 00265558  80 BE 00 04 */	lwz r5, 0x4(r30)
/* 8029BF9C 0026555C  38 9E 00 0C */	addi r4, r30, 0xc
/* 8029BFA0 00265560  38 DF 00 18 */	addi r6, r31, 0x18
/* 8029BFA4 00265564  4B E9 AF 65 */	bl func_80136F08
/* 8029BFA8 00265568  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8029BFAC 0026556C  38 9E 00 10 */	addi r4, r30, 0x10
/* 8029BFB0 00265570  80 BE 00 04 */	lwz r5, 0x4(r30)
/* 8029BFB4 00265574  38 DF 00 35 */	addi r6, r31, 0x35
/* 8029BFB8 00265578  4B E9 AF 51 */	bl func_80136F08
/* 8029BFBC 0026557C  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8029BFC0 00265580  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8029BFC4 00265584  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8029BFC8 00265588  7D 89 03 A6 */	mtctr r12
/* 8029BFCC 0026558C  4E 80 04 21 */	bctrl
/* 8029BFD0 00265590  7F C3 F3 78 */	mr r3, r30
/* 8029BFD4 00265594  4B F3 61 F9 */	bl func_801D21CC
/* 8029BFD8 00265598  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8029BFDC 0026559C  38 9F 00 50 */	addi r4, r31, 0x50
/* 8029BFE0 002655A0  38 A0 00 01 */	li r5, 0x1
/* 8029BFE4 002655A4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029BFE8 002655A8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8029BFEC 002655AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029BFF0 002655B0  7D 89 03 A6 */	mtctr r12
/* 8029BFF4 002655B4  4E 80 04 21 */	bctrl
/* 8029BFF8 002655B8  38 80 00 00 */	li r4, 0x0
/* 8029BFFC 002655BC  4B E8 82 75 */	bl func_80124270
/* 8029C000 002655C0  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8029C004 002655C4  38 9F 00 5E */	addi r4, r31, 0x5e
/* 8029C008 002655C8  38 A0 00 01 */	li r5, 0x1
/* 8029C00C 002655CC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029C010 002655D0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8029C014 002655D4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029C018 002655D8  7D 89 03 A6 */	mtctr r12
/* 8029C01C 002655DC  4E 80 04 21 */	bctrl
/* 8029C020 002655E0  38 80 00 00 */	li r4, 0x0
/* 8029C024 002655E4  4B E8 82 4D */	bl func_80124270
/* 8029C028 002655E8  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 8029C02C 002655EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029C030 002655F0  7C 08 03 A6 */	mtlr r0
/* 8029C034 002655F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8029C038 002655F8  4E 80 00 20 */	blr
.endfn func_8029BF68

.fn func_8029C03C, global
/* 8029C03C 002655FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029C040 00265600  7C 08 02 A6 */	mflr r0
/* 8029C044 00265604  38 A0 00 01 */	li r5, 0x1
/* 8029C048 00265608  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029C04C 0026560C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 8029C050 00265610  3F E0 80 51 */	lis r31, lbl_8050B9C8@ha
/* 8029C054 00265614  7C 7E 1B 78 */	mr r30, r3
/* 8029C058 00265618  3B FF B9 C8 */	addi r31, r31, lbl_8050B9C8@l
/* 8029C05C 0026561C  80 83 00 08 */	lwz r4, 0x8(r3)
/* 8029C060 00265620  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8029C064 00265624  38 9F 00 50 */	addi r4, r31, 0x50
/* 8029C068 00265628  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8029C06C 0026562C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029C070 00265630  7D 89 03 A6 */	mtctr r12
/* 8029C074 00265634  4E 80 04 21 */	bctrl
/* 8029C078 00265638  38 80 00 01 */	li r4, 0x1
/* 8029C07C 0026563C  4B E8 81 F5 */	bl func_80124270
/* 8029C080 00265640  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8029C084 00265644  38 9F 00 5E */	addi r4, r31, 0x5e
/* 8029C088 00265648  38 A0 00 01 */	li r5, 0x1
/* 8029C08C 0026564C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029C090 00265650  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8029C094 00265654  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029C098 00265658  7D 89 03 A6 */	mtctr r12
/* 8029C09C 0026565C  4E 80 04 21 */	bctrl
/* 8029C0A0 00265660  38 80 00 00 */	li r4, 0x0
/* 8029C0A4 00265664  4B E8 81 CD */	bl func_80124270
/* 8029C0A8 00265668  7F C3 F3 78 */	mr r3, r30
/* 8029C0AC 0026566C  4B F3 60 C9 */	bl func_801D2174
/* 8029C0B0 00265670  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 8029C0B4 00265674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029C0B8 00265678  7C 08 03 A6 */	mtlr r0
/* 8029C0BC 0026567C  38 21 00 10 */	addi r1, r1, 0x10
/* 8029C0C0 00265680  4E 80 00 20 */	blr
.endfn func_8029C03C

.fn func_8029C0C4, global
/* 8029C0C4 00265684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029C0C8 00265688  7C 08 02 A6 */	mflr r0
/* 8029C0CC 0026568C  38 A0 00 01 */	li r5, 0x1
/* 8029C0D0 00265690  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029C0D4 00265694  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 8029C0D8 00265698  3F E0 80 51 */	lis r31, lbl_8050B9C8@ha
/* 8029C0DC 0026569C  7C 7E 1B 78 */	mr r30, r3
/* 8029C0E0 002656A0  3B FF B9 C8 */	addi r31, r31, lbl_8050B9C8@l
/* 8029C0E4 002656A4  80 83 00 08 */	lwz r4, 0x8(r3)
/* 8029C0E8 002656A8  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8029C0EC 002656AC  38 9F 00 50 */	addi r4, r31, 0x50
/* 8029C0F0 002656B0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8029C0F4 002656B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029C0F8 002656B8  7D 89 03 A6 */	mtctr r12
/* 8029C0FC 002656BC  4E 80 04 21 */	bctrl
/* 8029C100 002656C0  38 80 00 00 */	li r4, 0x0
/* 8029C104 002656C4  4B E8 81 6D */	bl func_80124270
/* 8029C108 002656C8  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8029C10C 002656CC  38 9F 00 5E */	addi r4, r31, 0x5e
/* 8029C110 002656D0  38 A0 00 01 */	li r5, 0x1
/* 8029C114 002656D4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029C118 002656D8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8029C11C 002656DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029C120 002656E0  7D 89 03 A6 */	mtctr r12
/* 8029C124 002656E4  4E 80 04 21 */	bctrl
/* 8029C128 002656E8  38 80 00 01 */	li r4, 0x1
/* 8029C12C 002656EC  4B E8 81 45 */	bl func_80124270
/* 8029C130 002656F0  7F C3 F3 78 */	mr r3, r30
/* 8029C134 002656F4  4B F3 60 41 */	bl func_801D2174
/* 8029C138 002656F8  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 8029C13C 002656FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029C140 00265700  7C 08 03 A6 */	mtlr r0
/* 8029C144 00265704  38 21 00 10 */	addi r1, r1, 0x10
/* 8029C148 00265708  4E 80 00 20 */	blr
.endfn func_8029C0C4

.fn func_8029C14C, global
/* 8029C14C 0026570C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029C150 00265710  7C 08 02 A6 */	mflr r0
/* 8029C154 00265714  C0 22 B1 38 */	lfs f1, lbl_8066B4B8@sda21(r2)
/* 8029C158 00265718  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029C15C 0026571C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029C160 00265720  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8029C164 00265724  7C 7E 1B 78 */	mr r30, r3
/* 8029C168 00265728  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029C16C 0026572C  4B E9 B2 D9 */	bl func_80137444
/* 8029C170 00265730  2C 03 00 00 */	cmpwi r3, 0x0
/* 8029C174 00265734  41 82 00 6C */	beq .L_8029C1E0
/* 8029C178 00265738  38 00 00 00 */	li r0, 0x0
/* 8029C17C 0026573C  98 1E 00 14 */	stb r0, 0x14(r30)
/* 8029C180 00265740  7F C3 F3 78 */	mr r3, r30
/* 8029C184 00265744  4B F3 60 49 */	bl func_801D21CC
/* 8029C188 00265748  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8029C18C 0026574C  3F E0 80 51 */	lis r31, lbl_8050B9C8@ha
/* 8029C190 00265750  3B FF B9 C8 */	addi r31, r31, lbl_8050B9C8@l
/* 8029C194 00265754  38 A0 00 01 */	li r5, 0x1
/* 8029C198 00265758  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029C19C 0026575C  38 9F 00 50 */	addi r4, r31, 0x50
/* 8029C1A0 00265760  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8029C1A4 00265764  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029C1A8 00265768  7D 89 03 A6 */	mtctr r12
/* 8029C1AC 0026576C  4E 80 04 21 */	bctrl
/* 8029C1B0 00265770  38 80 00 00 */	li r4, 0x0
/* 8029C1B4 00265774  4B E8 80 BD */	bl func_80124270
/* 8029C1B8 00265778  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 8029C1BC 0026577C  38 9F 00 5E */	addi r4, r31, 0x5e
/* 8029C1C0 00265780  38 A0 00 01 */	li r5, 0x1
/* 8029C1C4 00265784  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8029C1C8 00265788  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8029C1CC 0026578C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8029C1D0 00265790  7D 89 03 A6 */	mtctr r12
/* 8029C1D4 00265794  4E 80 04 21 */	bctrl
/* 8029C1D8 00265798  38 80 00 00 */	li r4, 0x0
/* 8029C1DC 0026579C  4B E8 80 95 */	bl func_80124270
.L_8029C1E0:
/* 8029C1E0 002657A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029C1E4 002657A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029C1E8 002657A8  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8029C1EC 002657AC  7C 08 03 A6 */	mtlr r0
/* 8029C1F0 002657B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8029C1F4 002657B4  4E 80 00 20 */	blr
.endfn func_8029C14C

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001A308", local
.hidden "@etb_8001A308"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001A308"

.obj "@etb_8001A310", local
.hidden "@etb_8001A310"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001A310"

.obj "@etb_8001A318", local
.hidden "@etb_8001A318"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001A318"

.obj "@etb_8001A320", local
.hidden "@etb_8001A320"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001A320"

.obj "@etb_8001A328", local
.hidden "@etb_8001A328"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001A328"

.obj "@etb_8001A330", local
.hidden "@etb_8001A330"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_8001A330"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8003224C", local
.hidden "@eti_8003224C"
	.4byte func_8029BEDC
	.4byte 0x0000003C
	.4byte "@etb_8001A308"
.endobj "@eti_8003224C"

.obj "@eti_80032258", local
.hidden "@eti_80032258"
	.4byte func_8029BF18
	.4byte 0x00000050
	.4byte "@etb_8001A310"
.endobj "@eti_80032258"

.obj "@eti_80032264", local
.hidden "@eti_80032264"
	.4byte func_8029BF68
	.4byte 0x000000D4
	.4byte "@etb_8001A318"
.endobj "@eti_80032264"

.obj "@eti_80032270", local
.hidden "@eti_80032270"
	.4byte func_8029C03C
	.4byte 0x00000088
	.4byte "@etb_8001A320"
.endobj "@eti_80032270"

.obj "@eti_8003227C", local
.hidden "@eti_8003227C"
	.4byte func_8029C0C4
	.4byte 0x00000088
	.4byte "@etb_8001A328"
.endobj "@eti_8003227C"

.obj "@eti_80032288", local
.hidden "@eti_80032288"
	.4byte func_8029C14C
	.4byte 0x000000AC
	.4byte "@etb_8001A330"
.endobj "@eti_80032288"
