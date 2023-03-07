.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn OSInitMutex, global
/* 80359C20 003231E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80359C24 003231E4  7C 08 02 A6 */	mflr r0
/* 80359C28 003231E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80359C2C 003231EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80359C30 003231F0  7C 7F 1B 78 */	mr r31, r3
/* 80359C34 003231F4  48 00 19 9D */	bl OSInitThreadQueue
/* 80359C38 003231F8  38 00 00 00 */	li r0, 0
/* 80359C3C 003231FC  90 1F 00 08 */	stw r0, 8(r31)
/* 80359C40 00323200  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80359C44 00323204  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80359C48 00323208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80359C4C 0032320C  7C 08 03 A6 */	mtlr r0
/* 80359C50 00323210  38 21 00 10 */	addi r1, r1, 0x10
/* 80359C54 00323214  4E 80 00 20 */	blr 
.endfn OSInitMutex

.balign 16, 0
.fn OSLockMutex, global
/* 80359C60 00323220  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80359C64 00323224  7C 08 02 A6 */	mflr r0
/* 80359C68 00323228  90 01 00 24 */	stw r0, 0x24(r1)
/* 80359C6C 0032322C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80359C70 00323230  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80359C74 00323234  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80359C78 00323238  93 81 00 10 */	stw r28, 0x10(r1)
/* 80359C7C 0032323C  7C 7C 1B 78 */	mr r28, r3
/* 80359C80 00323240  4B FF ED 31 */	bl OSDisableInterrupts
/* 80359C84 00323244  7C 7D 1B 78 */	mr r29, r3
/* 80359C88 00323248  48 00 19 59 */	bl OSGetCurrentThread
/* 80359C8C 0032324C  7C 7E 1B 78 */	mr r30, r3
/* 80359C90 00323250  3B E0 00 00 */	li r31, 0
.L_80359C94:
/* 80359C94 00323254  80 1C 00 08 */	lwz r0, 8(r28)
/* 80359C98 00323258  2C 00 00 00 */	cmpwi r0, 0
/* 80359C9C 0032325C  40 82 00 40 */	bne .L_80359CDC
/* 80359CA0 00323260  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80359CA4 00323264  93 DC 00 08 */	stw r30, 8(r28)
/* 80359CA8 00323268  38 03 00 01 */	addi r0, r3, 1
/* 80359CAC 0032326C  90 1C 00 0C */	stw r0, 0xc(r28)
/* 80359CB0 00323270  80 7E 02 F8 */	lwz r3, 0x2f8(r30)
/* 80359CB4 00323274  2C 03 00 00 */	cmpwi r3, 0
/* 80359CB8 00323278  40 82 00 0C */	bne .L_80359CC4
/* 80359CBC 0032327C  93 9E 02 F4 */	stw r28, 0x2f4(r30)
/* 80359CC0 00323280  48 00 00 08 */	b .L_80359CC8
.L_80359CC4:
/* 80359CC4 00323284  93 83 00 10 */	stw r28, 0x10(r3)
.L_80359CC8:
/* 80359CC8 00323288  38 00 00 00 */	li r0, 0
/* 80359CCC 0032328C  90 7C 00 14 */	stw r3, 0x14(r28)
/* 80359CD0 00323290  90 1C 00 10 */	stw r0, 0x10(r28)
/* 80359CD4 00323294  93 9E 02 F8 */	stw r28, 0x2f8(r30)
/* 80359CD8 00323298  48 00 00 3C */	b .L_80359D14
.L_80359CDC:
/* 80359CDC 0032329C  7C 00 F0 40 */	cmplw r0, r30
/* 80359CE0 003232A0  40 82 00 14 */	bne .L_80359CF4
/* 80359CE4 003232A4  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80359CE8 003232A8  38 03 00 01 */	addi r0, r3, 1
/* 80359CEC 003232AC  90 1C 00 0C */	stw r0, 0xc(r28)
/* 80359CF0 003232B0  48 00 00 24 */	b .L_80359D14
.L_80359CF4:
/* 80359CF4 003232B4  93 9E 02 F0 */	stw r28, 0x2f0(r30)
/* 80359CF8 003232B8  80 7C 00 08 */	lwz r3, 8(r28)
/* 80359CFC 003232BC  80 9E 02 D0 */	lwz r4, 0x2d0(r30)
/* 80359D00 003232C0  48 00 1B D1 */	bl __OSPromoteThread
/* 80359D04 003232C4  7F 83 E3 78 */	mr r3, r28
/* 80359D08 003232C8  48 00 29 69 */	bl OSSleepThread
/* 80359D0C 003232CC  93 FE 02 F0 */	stw r31, 0x2f0(r30)
/* 80359D10 003232D0  4B FF FF 84 */	b .L_80359C94
.L_80359D14:
/* 80359D14 003232D4  7F A3 EB 78 */	mr r3, r29
/* 80359D18 003232D8  4B FF EC D9 */	bl OSRestoreInterrupts
/* 80359D1C 003232DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80359D20 003232E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80359D24 003232E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80359D28 003232E8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80359D2C 003232EC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80359D30 003232F0  7C 08 03 A6 */	mtlr r0
/* 80359D34 003232F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80359D38 003232F8  4E 80 00 20 */	blr 
.endfn OSLockMutex

.balign 16, 0
.fn OSUnlockMutex, global
/* 80359D40 00323300  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80359D44 00323304  7C 08 02 A6 */	mflr r0
/* 80359D48 00323308  90 01 00 24 */	stw r0, 0x24(r1)
/* 80359D4C 0032330C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80359D50 00323310  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80359D54 00323314  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80359D58 00323318  7C 7D 1B 78 */	mr r29, r3
/* 80359D5C 0032331C  4B FF EC 55 */	bl OSDisableInterrupts
/* 80359D60 00323320  7C 7F 1B 78 */	mr r31, r3
/* 80359D64 00323324  48 00 18 7D */	bl OSGetCurrentThread
/* 80359D68 00323328  80 1D 00 08 */	lwz r0, 8(r29)
/* 80359D6C 0032332C  7C 7E 1B 78 */	mr r30, r3
/* 80359D70 00323330  7C 00 18 40 */	cmplw r0, r3
/* 80359D74 00323334  40 82 00 70 */	bne .L_80359DE4
/* 80359D78 00323338  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80359D7C 0032333C  34 00 FF FF */	addic. r0, r0, -1
/* 80359D80 00323340  90 1D 00 0C */	stw r0, 0xc(r29)
/* 80359D84 00323344  40 82 00 60 */	bne .L_80359DE4
/* 80359D88 00323348  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 80359D8C 0032334C  80 BD 00 14 */	lwz r5, 0x14(r29)
/* 80359D90 00323350  2C 04 00 00 */	cmpwi r4, 0
/* 80359D94 00323354  40 82 00 0C */	bne .L_80359DA0
/* 80359D98 00323358  90 A3 02 F8 */	stw r5, 0x2f8(r3)
/* 80359D9C 0032335C  48 00 00 08 */	b .L_80359DA4
.L_80359DA0:
/* 80359DA0 00323360  90 A4 00 14 */	stw r5, 0x14(r4)
.L_80359DA4:
/* 80359DA4 00323364  2C 05 00 00 */	cmpwi r5, 0
/* 80359DA8 00323368  40 82 00 0C */	bne .L_80359DB4
/* 80359DAC 0032336C  90 83 02 F4 */	stw r4, 0x2f4(r3)
/* 80359DB0 00323370  48 00 00 08 */	b .L_80359DB8
.L_80359DB4:
/* 80359DB4 00323374  90 85 00 10 */	stw r4, 0x10(r5)
.L_80359DB8:
/* 80359DB8 00323378  38 00 00 00 */	li r0, 0
/* 80359DBC 0032337C  90 1D 00 08 */	stw r0, 8(r29)
/* 80359DC0 00323380  80 83 02 D0 */	lwz r4, 0x2d0(r3)
/* 80359DC4 00323384  80 03 02 D4 */	lwz r0, 0x2d4(r3)
/* 80359DC8 00323388  7C 04 00 00 */	cmpw r4, r0
/* 80359DCC 0032338C  40 80 00 10 */	bge .L_80359DDC
/* 80359DD0 00323390  7F C3 F3 78 */	mr r3, r30
/* 80359DD4 00323394  48 00 19 0D */	bl __OSGetEffectivePriority
/* 80359DD8 00323398  90 7E 02 D0 */	stw r3, 0x2d0(r30)
.L_80359DDC:
/* 80359DDC 0032339C  7F A3 EB 78 */	mr r3, r29
/* 80359DE0 003233A0  48 00 29 81 */	bl OSWakeupThread
.L_80359DE4:
/* 80359DE4 003233A4  7F E3 FB 78 */	mr r3, r31
/* 80359DE8 003233A8  4B FF EC 09 */	bl OSRestoreInterrupts
/* 80359DEC 003233AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80359DF0 003233B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80359DF4 003233B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80359DF8 003233B8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80359DFC 003233BC  7C 08 03 A6 */	mtlr r0
/* 80359E00 003233C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80359E04 003233C4  4E 80 00 20 */	blr 
.endfn OSUnlockMutex

.balign 16, 0
.fn __OSUnlockAllMutex, global
/* 80359E10 003233D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80359E14 003233D4  7C 08 02 A6 */	mflr r0
/* 80359E18 003233D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80359E1C 003233DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80359E20 003233E0  3B E0 00 00 */	li r31, 0
/* 80359E24 003233E4  93 C1 00 08 */	stw r30, 8(r1)
/* 80359E28 003233E8  7C 7E 1B 78 */	mr r30, r3
/* 80359E2C 003233EC  48 00 00 2C */	b .L_80359E58
.L_80359E30:
/* 80359E30 003233F0  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80359E34 003233F4  2C 04 00 00 */	cmpwi r4, 0
/* 80359E38 003233F8  40 82 00 0C */	bne .L_80359E44
/* 80359E3C 003233FC  93 FE 02 F8 */	stw r31, 0x2f8(r30)
/* 80359E40 00323400  48 00 00 08 */	b .L_80359E48
.L_80359E44:
/* 80359E44 00323404  93 E4 00 14 */	stw r31, 0x14(r4)
.L_80359E48:
/* 80359E48 00323408  90 9E 02 F4 */	stw r4, 0x2f4(r30)
/* 80359E4C 0032340C  93 E3 00 0C */	stw r31, 0xc(r3)
/* 80359E50 00323410  93 E3 00 08 */	stw r31, 8(r3)
/* 80359E54 00323414  48 00 29 0D */	bl OSWakeupThread
.L_80359E58:
/* 80359E58 00323418  80 7E 02 F4 */	lwz r3, 0x2f4(r30)
/* 80359E5C 0032341C  2C 03 00 00 */	cmpwi r3, 0
/* 80359E60 00323420  40 82 FF D0 */	bne .L_80359E30
/* 80359E64 00323424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80359E68 00323428  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80359E6C 0032342C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80359E70 00323430  7C 08 03 A6 */	mtlr r0
/* 80359E74 00323434  38 21 00 10 */	addi r1, r1, 0x10
/* 80359E78 00323438  4E 80 00 20 */	blr 
.endfn __OSUnlockAllMutex
