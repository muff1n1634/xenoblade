.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global DEBUGPrint
DEBUGPrint:
/* 80375B90 0033F150  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80375B94 0033F154  40 86 00 24 */	bne cr1, lbl_80375BB8
/* 80375B98 0033F158  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80375B9C 0033F15C  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80375BA0 0033F160  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80375BA4 0033F164  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80375BA8 0033F168  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80375BAC 0033F16C  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80375BB0 0033F170  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80375BB4 0033F174  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80375BB8:
/* 80375BB8 0033F178  90 61 00 08 */	stw r3, 8(r1)
/* 80375BBC 0033F17C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80375BC0 0033F180  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80375BC4 0033F184  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80375BC8 0033F188  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80375BCC 0033F18C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80375BD0 0033F190  91 21 00 20 */	stw r9, 0x20(r1)
/* 80375BD4 0033F194  91 41 00 24 */	stw r10, 0x24(r1)
/* 80375BD8 0033F198  38 21 00 70 */	addi r1, r1, 0x70
/* 80375BDC 0033F19C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80375BE0
func_80375BE0:
/* 80375BE0 0033F1A0  80 6D BB 78 */	lwz r3, lbl_80667CF8@sda21(r13)
/* 80375BE4 0033F1A4  4E 80 00 20 */	blr 
.balign 16, 0