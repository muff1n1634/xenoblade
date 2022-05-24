.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global OSSetResetCallback
OSSetResetCallback:
/* 8035D020 003265E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035D024 003265E4  7C 08 02 A6 */	mflr r0
/* 8035D028 003265E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035D02C 003265EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035D030 003265F0  7C 7F 1B 78 */	mr r31, r3
/* 8035D034 003265F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035D038 003265F8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035D03C 003265FC  4B FF B9 75 */	bl OSDisableInterrupts
/* 8035D040 00326600  2C 1F 00 00 */	cmpwi r31, 0
/* 8035D044 00326604  83 AD B9 7C */	lwz r29, lbl_80667AFC@sda21(r13)
/* 8035D048 00326608  7C 7E 1B 78 */	mr r30, r3
/* 8035D04C 0032660C  41 82 00 0C */	beq lbl_8035D058
/* 8035D050 00326610  93 ED B9 7C */	stw r31, lbl_80667AFC@sda21(r13)
/* 8035D054 00326614  48 00 00 10 */	b lbl_8035D064
lbl_8035D058:
/* 8035D058 00326618  3C 60 80 36 */	lis r3, lbl_8035D5B0@ha
/* 8035D05C 0032661C  38 63 D5 B0 */	addi r3, r3, lbl_8035D5B0@l
/* 8035D060 00326620  90 6D B9 7C */	stw r3, lbl_80667AFC@sda21(r13)
lbl_8035D064:
/* 8035D064 00326624  80 0D B9 70 */	lwz r0, lbl_80667AF0@sda21(r13)
/* 8035D068 00326628  2C 00 00 00 */	cmpwi r0, 0
/* 8035D06C 0032662C  40 82 00 60 */	bne lbl_8035D0CC
/* 8035D070 00326630  4B FF B9 41 */	bl OSDisableInterrupts
/* 8035D074 00326634  7C 7F 1B 78 */	mr r31, r3
/* 8035D078 00326638  3C A0 80 5D */	lis r5, lbl_805D5160@ha
/* 8035D07C 0032663C  3C E0 80 5D */	lis r7, lbl_805D5180@ha
/* 8035D080 00326640  3D 20 80 36 */	lis r9, lbl_8035D5D0@ha
/* 8035D084 00326644  80 6D B9 6C */	lwz r3, lbl_80667AEC@sda21(r13)
/* 8035D088 00326648  38 A5 51 60 */	addi r5, r5, lbl_805D5160@l
/* 8035D08C 0032664C  38 E7 51 80 */	addi r7, r7, lbl_805D5180@l
/* 8035D090 00326650  39 29 D5 D0 */	addi r9, r9, lbl_8035D5D0@l
/* 8035D094 00326654  38 80 10 00 */	li r4, 0x1000
/* 8035D098 00326658  38 C0 00 20 */	li r6, 0x20
/* 8035D09C 0032665C  39 00 00 20 */	li r8, 0x20
/* 8035D0A0 00326660  39 40 00 00 */	li r10, 0
/* 8035D0A4 00326664  4B FE 6A 8D */	bl IOS_IoctlAsync
/* 8035D0A8 00326668  2C 03 00 00 */	cmpwi r3, 0
/* 8035D0AC 0032666C  40 82 00 10 */	bne lbl_8035D0BC
/* 8035D0B0 00326670  38 00 00 01 */	li r0, 1
/* 8035D0B4 00326674  90 0D B9 70 */	stw r0, lbl_80667AF0@sda21(r13)
/* 8035D0B8 00326678  48 00 00 0C */	b lbl_8035D0C4
lbl_8035D0BC:
/* 8035D0BC 0032667C  38 00 00 00 */	li r0, 0
/* 8035D0C0 00326680  90 0D B9 70 */	stw r0, lbl_80667AF0@sda21(r13)
lbl_8035D0C4:
/* 8035D0C4 00326684  7F E3 FB 78 */	mr r3, r31
/* 8035D0C8 00326688  4B FF B9 29 */	bl OSRestoreInterrupts
lbl_8035D0CC:
/* 8035D0CC 0032668C  7F C3 F3 78 */	mr r3, r30
/* 8035D0D0 00326690  4B FF B9 21 */	bl OSRestoreInterrupts
/* 8035D0D4 00326694  3C 60 80 36 */	lis r3, lbl_8035D5B0@ha
/* 8035D0D8 00326698  38 63 D5 B0 */	addi r3, r3, lbl_8035D5B0@l
/* 8035D0DC 0032669C  7C 1D 18 40 */	cmplw r29, r3
/* 8035D0E0 003266A0  40 82 00 0C */	bne lbl_8035D0EC
/* 8035D0E4 003266A4  38 60 00 00 */	li r3, 0
/* 8035D0E8 003266A8  48 00 00 08 */	b lbl_8035D0F0
lbl_8035D0EC:
/* 8035D0EC 003266AC  7F A3 EB 78 */	mr r3, r29
lbl_8035D0F0:
/* 8035D0F0 003266B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035D0F4 003266B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035D0F8 003266B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035D0FC 003266BC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035D100 003266C0  7C 08 03 A6 */	mtlr r0
/* 8035D104 003266C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8035D108 003266C8  4E 80 00 20 */	blr 
/* 8035D10C 003266CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_8035D110
func_8035D110:
/* 8035D110 003266D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035D114 003266D4  7C 08 02 A6 */	mflr r0
/* 8035D118 003266D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035D11C 003266DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035D120 003266E0  7C 7F 1B 78 */	mr r31, r3
/* 8035D124 003266E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035D128 003266E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035D12C 003266EC  4B FF B8 85 */	bl OSDisableInterrupts
/* 8035D130 003266F0  2C 1F 00 00 */	cmpwi r31, 0
/* 8035D134 003266F4  83 AD B9 78 */	lwz r29, lbl_80667AF8@sda21(r13)
/* 8035D138 003266F8  7C 7E 1B 78 */	mr r30, r3
/* 8035D13C 003266FC  41 82 00 0C */	beq lbl_8035D148
/* 8035D140 00326700  93 ED B9 78 */	stw r31, lbl_80667AF8@sda21(r13)
/* 8035D144 00326704  48 00 00 10 */	b lbl_8035D154
lbl_8035D148:
/* 8035D148 00326708  3C 60 80 36 */	lis r3, lbl_8035D5C0@ha
/* 8035D14C 0032670C  38 63 D5 C0 */	addi r3, r3, lbl_8035D5C0@l
/* 8035D150 00326710  90 6D B9 78 */	stw r3, lbl_80667AF8@sda21(r13)
lbl_8035D154:
/* 8035D154 00326714  80 0D B9 70 */	lwz r0, lbl_80667AF0@sda21(r13)
/* 8035D158 00326718  2C 00 00 00 */	cmpwi r0, 0
/* 8035D15C 0032671C  40 82 00 60 */	bne lbl_8035D1BC
/* 8035D160 00326720  4B FF B8 51 */	bl OSDisableInterrupts
/* 8035D164 00326724  7C 7F 1B 78 */	mr r31, r3
/* 8035D168 00326728  3C A0 80 5D */	lis r5, lbl_805D5160@ha
/* 8035D16C 0032672C  3C E0 80 5D */	lis r7, lbl_805D5180@ha
/* 8035D170 00326730  3D 20 80 36 */	lis r9, lbl_8035D5D0@ha
/* 8035D174 00326734  80 6D B9 6C */	lwz r3, lbl_80667AEC@sda21(r13)
/* 8035D178 00326738  38 A5 51 60 */	addi r5, r5, lbl_805D5160@l
/* 8035D17C 0032673C  38 E7 51 80 */	addi r7, r7, lbl_805D5180@l
/* 8035D180 00326740  39 29 D5 D0 */	addi r9, r9, lbl_8035D5D0@l
/* 8035D184 00326744  38 80 10 00 */	li r4, 0x1000
/* 8035D188 00326748  38 C0 00 20 */	li r6, 0x20
/* 8035D18C 0032674C  39 00 00 20 */	li r8, 0x20
/* 8035D190 00326750  39 40 00 00 */	li r10, 0
/* 8035D194 00326754  4B FE 69 9D */	bl IOS_IoctlAsync
/* 8035D198 00326758  2C 03 00 00 */	cmpwi r3, 0
/* 8035D19C 0032675C  40 82 00 10 */	bne lbl_8035D1AC
/* 8035D1A0 00326760  38 00 00 01 */	li r0, 1
/* 8035D1A4 00326764  90 0D B9 70 */	stw r0, lbl_80667AF0@sda21(r13)
/* 8035D1A8 00326768  48 00 00 0C */	b lbl_8035D1B4
lbl_8035D1AC:
/* 8035D1AC 0032676C  38 00 00 00 */	li r0, 0
/* 8035D1B0 00326770  90 0D B9 70 */	stw r0, lbl_80667AF0@sda21(r13)
lbl_8035D1B4:
/* 8035D1B4 00326774  7F E3 FB 78 */	mr r3, r31
/* 8035D1B8 00326778  4B FF B8 39 */	bl OSRestoreInterrupts
lbl_8035D1BC:
/* 8035D1BC 0032677C  7F C3 F3 78 */	mr r3, r30
/* 8035D1C0 00326780  4B FF B8 31 */	bl OSRestoreInterrupts
/* 8035D1C4 00326784  3C 60 80 36 */	lis r3, lbl_8035D5C0@ha
/* 8035D1C8 00326788  38 63 D5 C0 */	addi r3, r3, lbl_8035D5C0@l
/* 8035D1CC 0032678C  7C 1D 18 40 */	cmplw r29, r3
/* 8035D1D0 00326790  40 82 00 0C */	bne lbl_8035D1DC
/* 8035D1D4 00326794  38 60 00 00 */	li r3, 0
/* 8035D1D8 00326798  48 00 00 08 */	b lbl_8035D1E0
lbl_8035D1DC:
/* 8035D1DC 0032679C  7F A3 EB 78 */	mr r3, r29
lbl_8035D1E0:
/* 8035D1E0 003267A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035D1E4 003267A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035D1E8 003267A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035D1EC 003267AC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035D1F0 003267B0  7C 08 03 A6 */	mtlr r0
/* 8035D1F4 003267B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8035D1F8 003267B8  4E 80 00 20 */	blr 
/* 8035D1FC 003267BC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global __OSInitSTM
__OSInitSTM:
/* 8035D200 003267C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035D204 003267C4  7C 08 02 A6 */	mflr r0
/* 8035D208 003267C8  3C 80 80 36 */	lis r4, lbl_8035D5C0@ha
/* 8035D20C 003267CC  3C 60 80 36 */	lis r3, lbl_8035D5B0@ha
/* 8035D210 003267D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035D214 003267D4  38 84 D5 C0 */	addi r4, r4, lbl_8035D5C0@l
/* 8035D218 003267D8  38 63 D5 B0 */	addi r3, r3, lbl_8035D5B0@l
/* 8035D21C 003267DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035D220 003267E0  3B E0 00 00 */	li r31, 0
/* 8035D224 003267E4  93 C1 00 08 */	stw r30, 8(r1)
/* 8035D228 003267E8  80 0D B9 64 */	lwz r0, lbl_80667AE4@sda21(r13)
/* 8035D22C 003267EC  90 8D B9 78 */	stw r4, lbl_80667AF8@sda21(r13)
/* 8035D230 003267F0  2C 00 00 00 */	cmpwi r0, 0
/* 8035D234 003267F4  90 6D B9 7C */	stw r3, lbl_80667AFC@sda21(r13)
/* 8035D238 003267F8  93 ED B9 60 */	stw r31, lbl_80667AE0@sda21(r13)
/* 8035D23C 003267FC  41 82 00 0C */	beq lbl_8035D248
/* 8035D240 00326800  38 60 00 01 */	li r3, 1
/* 8035D244 00326804  48 00 00 BC */	b lbl_8035D300
lbl_8035D248:
/* 8035D248 00326808  3C 60 80 56 */	lis r3, lbl_8055EBF8@ha
/* 8035D24C 0032680C  93 ED B9 74 */	stw r31, lbl_80667AF4@sda21(r13)
/* 8035D250 00326810  38 80 00 00 */	li r4, 0
/* 8035D254 00326814  38 63 EB F8 */	addi r3, r3, lbl_8055EBF8@l
/* 8035D258 00326818  4B FE 61 39 */	bl IOS_Open
/* 8035D25C 0032681C  2C 03 00 00 */	cmpwi r3, 0
/* 8035D260 00326820  90 6D B9 68 */	stw r3, lbl_80667AE8@sda21(r13)
/* 8035D264 00326824  40 80 00 10 */	bge lbl_8035D274
/* 8035D268 00326828  93 ED B9 64 */	stw r31, lbl_80667AE4@sda21(r13)
/* 8035D26C 0032682C  38 60 00 00 */	li r3, 0
/* 8035D270 00326830  48 00 00 90 */	b lbl_8035D300
lbl_8035D274:
/* 8035D274 00326834  3C 60 80 56 */	lis r3, lbl_8055EC0C@ha
/* 8035D278 00326838  38 80 00 00 */	li r4, 0
/* 8035D27C 0032683C  38 63 EC 0C */	addi r3, r3, lbl_8055EC0C@l
/* 8035D280 00326840  4B FE 61 11 */	bl IOS_Open
/* 8035D284 00326844  2C 03 00 00 */	cmpwi r3, 0
/* 8035D288 00326848  90 6D B9 6C */	stw r3, lbl_80667AEC@sda21(r13)
/* 8035D28C 0032684C  40 80 00 10 */	bge lbl_8035D29C
/* 8035D290 00326850  93 ED B9 64 */	stw r31, lbl_80667AE4@sda21(r13)
/* 8035D294 00326854  38 60 00 00 */	li r3, 0
/* 8035D298 00326858  48 00 00 68 */	b lbl_8035D300
lbl_8035D29C:
/* 8035D29C 0032685C  4B FF B7 15 */	bl OSDisableInterrupts
/* 8035D2A0 00326860  7C 7E 1B 78 */	mr r30, r3
/* 8035D2A4 00326864  3C A0 80 5D */	lis r5, lbl_805D5160@ha
/* 8035D2A8 00326868  3C E0 80 5D */	lis r7, lbl_805D5180@ha
/* 8035D2AC 0032686C  3D 20 80 36 */	lis r9, lbl_8035D5D0@ha
/* 8035D2B0 00326870  80 6D B9 6C */	lwz r3, lbl_80667AEC@sda21(r13)
/* 8035D2B4 00326874  38 A5 51 60 */	addi r5, r5, lbl_805D5160@l
/* 8035D2B8 00326878  38 E7 51 80 */	addi r7, r7, lbl_805D5180@l
/* 8035D2BC 0032687C  39 29 D5 D0 */	addi r9, r9, lbl_8035D5D0@l
/* 8035D2C0 00326880  38 80 10 00 */	li r4, 0x1000
/* 8035D2C4 00326884  38 C0 00 20 */	li r6, 0x20
/* 8035D2C8 00326888  39 00 00 20 */	li r8, 0x20
/* 8035D2CC 0032688C  39 40 00 00 */	li r10, 0
/* 8035D2D0 00326890  4B FE 68 61 */	bl IOS_IoctlAsync
/* 8035D2D4 00326894  2C 03 00 00 */	cmpwi r3, 0
/* 8035D2D8 00326898  40 82 00 10 */	bne lbl_8035D2E8
/* 8035D2DC 0032689C  38 00 00 01 */	li r0, 1
/* 8035D2E0 003268A0  90 0D B9 70 */	stw r0, lbl_80667AF0@sda21(r13)
/* 8035D2E4 003268A4  48 00 00 08 */	b lbl_8035D2EC
lbl_8035D2E8:
/* 8035D2E8 003268A8  93 ED B9 70 */	stw r31, lbl_80667AF0@sda21(r13)
lbl_8035D2EC:
/* 8035D2EC 003268AC  7F C3 F3 78 */	mr r3, r30
/* 8035D2F0 003268B0  4B FF B7 01 */	bl OSRestoreInterrupts
/* 8035D2F4 003268B4  38 00 00 01 */	li r0, 1
/* 8035D2F8 003268B8  90 0D B9 64 */	stw r0, lbl_80667AE4@sda21(r13)
/* 8035D2FC 003268BC  38 60 00 01 */	li r3, 1
lbl_8035D300:
/* 8035D300 003268C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035D304 003268C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035D308 003268C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8035D30C 003268CC  7C 08 03 A6 */	mtlr r0
/* 8035D310 003268D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8035D314 003268D4  4E 80 00 20 */	blr 
/* 8035D318 003268D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035D31C 003268DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_8035D320
func_8035D320:
/* 8035D320 003268E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035D324 003268E4  7C 08 02 A6 */	mflr r0
/* 8035D328 003268E8  3C 60 CC 00 */	lis r3, 0xCC002002@ha
/* 8035D32C 003268EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035D330 003268F0  38 00 00 00 */	li r0, 0
/* 8035D334 003268F4  B0 03 20 02 */	sth r0, 0xCC002002@l(r3)
/* 8035D338 003268F8  80 0D B9 64 */	lwz r0, lbl_80667AE4@sda21(r13)
/* 8035D33C 003268FC  2C 00 00 00 */	cmpwi r0, 0
/* 8035D340 00326900  40 82 00 20 */	bne lbl_8035D360
/* 8035D344 00326904  3C 60 80 56 */	lis r3, lbl_8055EC20@ha
/* 8035D348 00326908  3C A0 80 56 */	lis r5, lbl_8055EC2C@ha
/* 8035D34C 0032690C  38 63 EC 20 */	addi r3, r3, lbl_8055EC20@l
/* 8035D350 00326910  38 80 01 5C */	li r4, 0x15c
/* 8035D354 00326914  38 A5 EC 2C */	addi r5, r5, lbl_8055EC2C@l
/* 8035D358 00326918  4C C6 31 82 */	crclr 6
/* 8035D35C 0032691C  48 19 11 39 */	bl OSPanic
lbl_8035D360:
/* 8035D360 00326920  3C 80 80 5D */	lis r4, lbl_805D51A0@ha
/* 8035D364 00326924  38 00 00 00 */	li r0, 0
/* 8035D368 00326928  3C E0 80 5D */	lis r7, lbl_805D51C0@ha
/* 8035D36C 0032692C  90 04 51 A0 */	stw r0, lbl_805D51A0@l(r4)
/* 8035D370 00326930  38 A4 51 A0 */	addi r5, r4, lbl_805D51A0@l
/* 8035D374 00326934  80 6D B9 68 */	lwz r3, lbl_80667AE8@sda21(r13)
/* 8035D378 00326938  38 E7 51 C0 */	addi r7, r7, lbl_805D51C0@l
/* 8035D37C 0032693C  38 80 20 03 */	li r4, 0x2003
/* 8035D380 00326940  38 C0 00 20 */	li r6, 0x20
/* 8035D384 00326944  39 00 00 20 */	li r8, 0x20
/* 8035D388 00326948  4B FE 68 E9 */	bl func_80343C70
/* 8035D38C 0032694C  4B FF B6 25 */	bl OSDisableInterrupts
/* 8035D390 00326950  4B FF 6D 51 */	bl func_803540E0
/* 8035D394 00326954  60 00 00 00 */	nop 
lbl_8035D398:
/* 8035D398 00326958  48 00 00 00 */	b lbl_8035D398
/* 8035D39C 0032695C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global __OSHotReset
__OSHotReset:
/* 8035D3A0 00326960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035D3A4 00326964  7C 08 02 A6 */	mflr r0
/* 8035D3A8 00326968  3C 60 CC 00 */	lis r3, 0xCC002002@ha
/* 8035D3AC 0032696C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035D3B0 00326970  38 00 00 00 */	li r0, 0
/* 8035D3B4 00326974  B0 03 20 02 */	sth r0, 0xCC002002@l(r3)
/* 8035D3B8 00326978  80 0D B9 64 */	lwz r0, lbl_80667AE4@sda21(r13)
/* 8035D3BC 0032697C  2C 00 00 00 */	cmpwi r0, 0
/* 8035D3C0 00326980  40 82 00 20 */	bne lbl_8035D3E0
/* 8035D3C4 00326984  3C 60 80 56 */	lis r3, lbl_8055EC20@ha
/* 8035D3C8 00326988  3C A0 80 56 */	lis r5, lbl_8055EC64@ha
/* 8035D3CC 0032698C  38 63 EC 20 */	addi r3, r3, lbl_8055EC20@l
/* 8035D3D0 00326990  38 80 01 9C */	li r4, 0x19c
/* 8035D3D4 00326994  38 A5 EC 64 */	addi r5, r5, lbl_8055EC64@l
/* 8035D3D8 00326998  4C C6 31 82 */	crclr 6
/* 8035D3DC 0032699C  48 19 10 B9 */	bl OSPanic
lbl_8035D3E0:
/* 8035D3E0 003269A0  3C A0 80 5D */	lis r5, lbl_805D51A0@ha
/* 8035D3E4 003269A4  3C E0 80 5D */	lis r7, lbl_805D51C0@ha
/* 8035D3E8 003269A8  80 6D B9 68 */	lwz r3, lbl_80667AE8@sda21(r13)
/* 8035D3EC 003269AC  38 A5 51 A0 */	addi r5, r5, lbl_805D51A0@l
/* 8035D3F0 003269B0  38 E7 51 C0 */	addi r7, r7, lbl_805D51C0@l
/* 8035D3F4 003269B4  38 80 20 01 */	li r4, 0x2001
/* 8035D3F8 003269B8  38 C0 00 20 */	li r6, 0x20
/* 8035D3FC 003269BC  39 00 00 20 */	li r8, 0x20
/* 8035D400 003269C0  4B FE 68 71 */	bl func_80343C70
/* 8035D404 003269C4  4B FF B5 AD */	bl OSDisableInterrupts
/* 8035D408 003269C8  4B FF 6C D9 */	bl func_803540E0
/* 8035D40C 003269CC  60 00 00 00 */	nop 
lbl_8035D410:
/* 8035D410 003269D0  48 00 00 00 */	b lbl_8035D410
/* 8035D414 003269D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035D418 003269D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035D41C 003269DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_8035D420
func_8035D420:
/* 8035D420 003269E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035D424 003269E4  7C 08 02 A6 */	mflr r0
/* 8035D428 003269E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035D42C 003269EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035D430 003269F0  7C BF 2B 78 */	mr r31, r5
/* 8035D434 003269F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035D438 003269F8  7C 9E 23 78 */	mr r30, r4
/* 8035D43C 003269FC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035D440 00326A00  7C 7D 1B 78 */	mr r29, r3
/* 8035D444 00326A04  80 0D B9 64 */	lwz r0, lbl_80667AE4@sda21(r13)
/* 8035D448 00326A08  2C 00 00 00 */	cmpwi r0, 0
/* 8035D44C 00326A0C  40 82 00 0C */	bne lbl_8035D458
/* 8035D450 00326A10  38 60 FF F6 */	li r3, -10
/* 8035D454 00326A14  48 00 00 A8 */	b lbl_8035D4FC
lbl_8035D458:
/* 8035D458 00326A18  4B FF B5 59 */	bl OSDisableInterrupts
/* 8035D45C 00326A1C  80 0D B9 74 */	lwz r0, lbl_80667AF4@sda21(r13)
/* 8035D460 00326A20  2C 00 00 00 */	cmpwi r0, 0
/* 8035D464 00326A24  41 82 00 10 */	beq lbl_8035D474
/* 8035D468 00326A28  4B FF B5 89 */	bl OSRestoreInterrupts
/* 8035D46C 00326A2C  38 60 00 00 */	li r3, 0
/* 8035D470 00326A30  48 00 00 8C */	b lbl_8035D4FC
lbl_8035D474:
/* 8035D474 00326A34  38 00 00 01 */	li r0, 1
/* 8035D478 00326A38  90 0D B9 74 */	stw r0, lbl_80667AF4@sda21(r13)
/* 8035D47C 00326A3C  4B FF B5 75 */	bl OSRestoreInterrupts
/* 8035D480 00326A40  57 A4 38 30 */	slwi r4, r29, 7
/* 8035D484 00326A44  3C 60 80 5D */	lis r3, lbl_805D51E0@ha
/* 8035D488 00326A48  38 A3 51 E0 */	addi r5, r3, lbl_805D51E0@l
/* 8035D48C 00326A4C  57 C0 18 38 */	slwi r0, r30, 3
/* 8035D490 00326A50  39 80 00 00 */	li r12, 0
/* 8035D494 00326A54  7C 84 FB 78 */	or r4, r4, r31
/* 8035D498 00326A58  7C 84 03 78 */	or r4, r4, r0
/* 8035D49C 00326A5C  90 83 51 E0 */	stw r4, lbl_805D51E0@l(r3)
/* 8035D4A0 00326A60  39 60 FF FF */	li r11, -1
/* 8035D4A4 00326A64  3C 00 FF FF */	lis r0, 0xffff
/* 8035D4A8 00326A68  3C E0 80 5D */	lis r7, lbl_805D5200@ha
/* 8035D4AC 00326A6C  3D 20 80 36 */	lis r9, lbl_8035D5A0@ha
/* 8035D4B0 00326A70  80 6D B9 68 */	lwz r3, lbl_80667AE8@sda21(r13)
/* 8035D4B4 00326A74  38 E7 52 00 */	addi r7, r7, lbl_805D5200@l
/* 8035D4B8 00326A78  91 85 00 04 */	stw r12, 4(r5)
/* 8035D4BC 00326A7C  39 29 D5 A0 */	addi r9, r9, lbl_8035D5A0@l
/* 8035D4C0 00326A80  38 80 50 01 */	li r4, 0x5001
/* 8035D4C4 00326A84  38 C0 00 20 */	li r6, 0x20
/* 8035D4C8 00326A88  91 85 00 08 */	stw r12, 8(r5)
/* 8035D4CC 00326A8C  39 00 00 20 */	li r8, 0x20
/* 8035D4D0 00326A90  39 40 00 00 */	li r10, 0
/* 8035D4D4 00326A94  91 85 00 0C */	stw r12, 0xc(r5)
/* 8035D4D8 00326A98  91 85 00 10 */	stw r12, 0x10(r5)
/* 8035D4DC 00326A9C  91 65 00 14 */	stw r11, 0x14(r5)
/* 8035D4E0 00326AA0  90 05 00 18 */	stw r0, 0x18(r5)
/* 8035D4E4 00326AA4  91 85 00 1C */	stw r12, 0x1c(r5)
/* 8035D4E8 00326AA8  4B FE 66 49 */	bl IOS_IoctlAsync
/* 8035D4EC 00326AAC  2C 03 00 00 */	cmpwi r3, 0
/* 8035D4F0 00326AB0  41 82 00 08 */	beq lbl_8035D4F8
/* 8035D4F4 00326AB4  48 00 00 08 */	b lbl_8035D4FC
lbl_8035D4F8:
/* 8035D4F8 00326AB8  38 60 00 01 */	li r3, 1
lbl_8035D4FC:
/* 8035D4FC 00326ABC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035D500 00326AC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035D504 00326AC4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035D508 00326AC8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035D50C 00326ACC  7C 08 03 A6 */	mtlr r0
/* 8035D510 00326AD0  38 21 00 20 */	addi r1, r1, 0x20
/* 8035D514 00326AD4  4E 80 00 20 */	blr 
/* 8035D518 00326AD8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035D51C 00326ADC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global __OSUnRegisterStateEvent
__OSUnRegisterStateEvent:
/* 8035D520 00326AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035D524 00326AE4  7C 08 02 A6 */	mflr r0
/* 8035D528 00326AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035D52C 00326AEC  80 0D B9 70 */	lwz r0, lbl_80667AF0@sda21(r13)
/* 8035D530 00326AF0  2C 00 00 00 */	cmpwi r0, 0
/* 8035D534 00326AF4  40 82 00 0C */	bne lbl_8035D540
/* 8035D538 00326AF8  38 60 00 00 */	li r3, 0
/* 8035D53C 00326AFC  48 00 00 4C */	b lbl_8035D588
lbl_8035D540:
/* 8035D540 00326B00  80 0D B9 64 */	lwz r0, lbl_80667AE4@sda21(r13)
/* 8035D544 00326B04  2C 00 00 00 */	cmpwi r0, 0
/* 8035D548 00326B08  40 82 00 0C */	bne lbl_8035D554
/* 8035D54C 00326B0C  38 60 FF FA */	li r3, -6
/* 8035D550 00326B10  48 00 00 38 */	b lbl_8035D588
lbl_8035D554:
/* 8035D554 00326B14  3C A0 80 5D */	lis r5, lbl_805D51A0@ha
/* 8035D558 00326B18  3C E0 80 5D */	lis r7, lbl_805D51C0@ha
/* 8035D55C 00326B1C  80 6D B9 68 */	lwz r3, lbl_80667AE8@sda21(r13)
/* 8035D560 00326B20  38 A5 51 A0 */	addi r5, r5, lbl_805D51A0@l
/* 8035D564 00326B24  38 E7 51 C0 */	addi r7, r7, lbl_805D51C0@l
/* 8035D568 00326B28  38 80 30 02 */	li r4, 0x3002
/* 8035D56C 00326B2C  38 C0 00 20 */	li r6, 0x20
/* 8035D570 00326B30  39 00 00 20 */	li r8, 0x20
/* 8035D574 00326B34  4B FE 66 FD */	bl func_80343C70
/* 8035D578 00326B38  2C 03 00 00 */	cmpwi r3, 0
/* 8035D57C 00326B3C  40 82 00 0C */	bne lbl_8035D588
/* 8035D580 00326B40  38 00 00 00 */	li r0, 0
/* 8035D584 00326B44  90 0D B9 70 */	stw r0, lbl_80667AF0@sda21(r13)
lbl_8035D588:
/* 8035D588 00326B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035D58C 00326B4C  7C 08 03 A6 */	mtlr r0
/* 8035D590 00326B50  38 21 00 10 */	addi r1, r1, 0x10
/* 8035D594 00326B54  4E 80 00 20 */	blr 
/* 8035D598 00326B58  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035D59C 00326B5C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
lbl_8035D5A0:
/* 8035D5A0 00326B60  38 00 00 00 */	li r0, 0
/* 8035D5A4 00326B64  90 0D B9 74 */	stw r0, lbl_80667AF4@sda21(r13)
/* 8035D5A8 00326B68  38 60 00 00 */	li r3, 0
/* 8035D5AC 00326B6C  4E 80 00 20 */	blr

.global lbl_8035D5B0
lbl_8035D5B0:
/* 8035D5B0 00326B70  4E 80 00 20 */	blr 
/* 8035D5B4 00326B74  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035D5B8 00326B78  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035D5BC 00326B7C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
lbl_8035D5C0:
/* 8035D5C0 00326B80  4E 80 00 20 */	blr 
/* 8035D5C4 00326B84  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035D5C8 00326B88  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035D5CC 00326B8C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
lbl_8035D5D0:
/* 8035D5D0 00326B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035D5D4 00326B94  7C 08 02 A6 */	mflr r0
/* 8035D5D8 00326B98  2C 03 00 00 */	cmpwi r3, 0
/* 8035D5DC 00326B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035D5E0 00326BA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035D5E4 00326BA4  41 82 00 20 */	beq lbl_8035D604
/* 8035D5E8 00326BA8  3C 60 80 56 */	lis r3, lbl_8055EC20@ha
/* 8035D5EC 00326BAC  3C A0 80 56 */	lis r5, lbl_8055EC9C@ha
/* 8035D5F0 00326BB0  38 63 EC 20 */	addi r3, r3, lbl_8055EC20@l
/* 8035D5F4 00326BB4  38 80 03 34 */	li r4, 0x334
/* 8035D5F8 00326BB8  38 A5 EC 9C */	addi r5, r5, lbl_8055EC9C@l
/* 8035D5FC 00326BBC  4C C6 31 82 */	crclr 6
/* 8035D600 00326BC0  48 19 0E 95 */	bl OSPanic
lbl_8035D604:
/* 8035D604 00326BC4  3C 60 80 5D */	lis r3, lbl_805D5180@ha
/* 8035D608 00326BC8  38 00 00 00 */	li r0, 0
/* 8035D60C 00326BCC  80 63 51 80 */	lwz r3, lbl_805D5180@l(r3)
/* 8035D610 00326BD0  90 0D B9 70 */	stw r0, lbl_80667AF0@sda21(r13)
/* 8035D614 00326BD4  3C 03 FF FE */	addis r0, r3, 0xfffe
/* 8035D618 00326BD8  28 00 00 00 */	cmplwi r0, 0
/* 8035D61C 00326BDC  40 82 00 B8 */	bne lbl_8035D6D4
/* 8035D620 00326BE0  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 8035D624 00326BE4  80 03 30 00 */	lwz r0, 0xCC003000@l(r3)
/* 8035D628 00326BE8  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8035D62C 00326BEC  40 82 00 0C */	bne lbl_8035D638
/* 8035D630 00326BF0  38 00 00 01 */	li r0, 1
/* 8035D634 00326BF4  48 00 00 08 */	b lbl_8035D63C
lbl_8035D638:
/* 8035D638 00326BF8  38 00 00 00 */	li r0, 0
lbl_8035D63C:
/* 8035D63C 00326BFC  2C 00 00 00 */	cmpwi r0, 0
/* 8035D640 00326C00  41 82 00 38 */	beq lbl_8035D678
/* 8035D644 00326C04  4B FF B3 6D */	bl OSDisableInterrupts
/* 8035D648 00326C08  81 8D B9 7C */	lwz r12, lbl_80667AFC@sda21(r13)
/* 8035D64C 00326C0C  3C 80 80 36 */	lis r4, lbl_8035D5B0@ha
/* 8035D650 00326C10  38 84 D5 B0 */	addi r4, r4, lbl_8035D5B0@l
/* 8035D654 00326C14  38 00 00 01 */	li r0, 1
/* 8035D658 00326C18  7C 7F 1B 78 */	mr r31, r3
/* 8035D65C 00326C1C  90 0D B9 60 */	stw r0, lbl_80667AE0@sda21(r13)
/* 8035D660 00326C20  90 8D B9 7C */	stw r4, lbl_80667AFC@sda21(r13)
/* 8035D664 00326C24  7D 89 03 A6 */	mtctr r12
/* 8035D668 00326C28  4E 80 04 21 */	bctrl 
/* 8035D66C 00326C2C  7F E3 FB 78 */	mr r3, r31
/* 8035D670 00326C30  4B FF B3 81 */	bl OSRestoreInterrupts
/* 8035D674 00326C34  48 00 93 5D */	bl func_803669D0
lbl_8035D678:
/* 8035D678 00326C38  4B FF B3 39 */	bl OSDisableInterrupts
/* 8035D67C 00326C3C  7C 7F 1B 78 */	mr r31, r3
/* 8035D680 00326C40  3C A0 80 5D */	lis r5, lbl_805D5160@ha
/* 8035D684 00326C44  3C E0 80 5D */	lis r7, lbl_805D5180@ha
/* 8035D688 00326C48  3D 20 80 36 */	lis r9, lbl_8035D5D0@ha
/* 8035D68C 00326C4C  80 6D B9 6C */	lwz r3, lbl_80667AEC@sda21(r13)
/* 8035D690 00326C50  38 A5 51 60 */	addi r5, r5, lbl_805D5160@l
/* 8035D694 00326C54  38 E7 51 80 */	addi r7, r7, lbl_805D5180@l
/* 8035D698 00326C58  39 29 D5 D0 */	addi r9, r9, lbl_8035D5D0@l
/* 8035D69C 00326C5C  38 80 10 00 */	li r4, 0x1000
/* 8035D6A0 00326C60  38 C0 00 20 */	li r6, 0x20
/* 8035D6A4 00326C64  39 00 00 20 */	li r8, 0x20
/* 8035D6A8 00326C68  39 40 00 00 */	li r10, 0
/* 8035D6AC 00326C6C  4B FE 64 85 */	bl IOS_IoctlAsync
/* 8035D6B0 00326C70  2C 03 00 00 */	cmpwi r3, 0
/* 8035D6B4 00326C74  40 82 00 10 */	bne lbl_8035D6C4
/* 8035D6B8 00326C78  38 00 00 01 */	li r0, 1
/* 8035D6BC 00326C7C  90 0D B9 70 */	stw r0, lbl_80667AF0@sda21(r13)
/* 8035D6C0 00326C80  48 00 00 0C */	b lbl_8035D6CC
lbl_8035D6C4:
/* 8035D6C4 00326C84  38 00 00 00 */	li r0, 0
/* 8035D6C8 00326C88  90 0D B9 70 */	stw r0, lbl_80667AF0@sda21(r13)
lbl_8035D6CC:
/* 8035D6CC 00326C8C  7F E3 FB 78 */	mr r3, r31
/* 8035D6D0 00326C90  4B FF B3 21 */	bl OSRestoreInterrupts
lbl_8035D6D4:
/* 8035D6D4 00326C94  3C 60 80 5D */	lis r3, lbl_805D5180@ha
/* 8035D6D8 00326C98  80 03 51 80 */	lwz r0, lbl_805D5180@l(r3)
/* 8035D6DC 00326C9C  28 00 08 00 */	cmplwi r0, 0x800
/* 8035D6E0 00326CA0  40 82 00 2C */	bne lbl_8035D70C
/* 8035D6E4 00326CA4  4B FF B2 CD */	bl OSDisableInterrupts
/* 8035D6E8 00326CA8  81 8D B9 78 */	lwz r12, lbl_80667AF8@sda21(r13)
/* 8035D6EC 00326CAC  3C 80 80 36 */	lis r4, lbl_8035D5C0@ha
/* 8035D6F0 00326CB0  38 84 D5 C0 */	addi r4, r4, lbl_8035D5C0@l
/* 8035D6F4 00326CB4  7C 7F 1B 78 */	mr r31, r3
/* 8035D6F8 00326CB8  90 8D B9 78 */	stw r4, lbl_80667AF8@sda21(r13)
/* 8035D6FC 00326CBC  7D 89 03 A6 */	mtctr r12
/* 8035D700 00326CC0  4E 80 04 21 */	bctrl 
/* 8035D704 00326CC4  7F E3 FB 78 */	mr r3, r31
/* 8035D708 00326CC8  4B FF B2 E9 */	bl OSRestoreInterrupts
lbl_8035D70C:
/* 8035D70C 00326CCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035D710 00326CD0  38 60 00 00 */	li r3, 0
/* 8035D714 00326CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035D718 00326CD8  7C 08 03 A6 */	mtlr r0
/* 8035D71C 00326CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8035D720 00326CE0  4E 80 00 20 */	blr 
/* 8035D724 00326CE4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035D728 00326CE8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8035D72C 00326CEC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */