.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global NWC24iSynchronizeRtcCounter
NWC24iSynchronizeRtcCounter:
/* 8035E1F0 003277B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035E1F4 003277B4  7C 08 02 A6 */	mflr r0
/* 8035E1F8 003277B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035E1FC 003277BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035E200 003277C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8035E204 003277C4  7C 7E 1B 78 */	mr r30, r3
lbl_8035E208:
/* 8035E208 003277C8  48 00 13 C9 */	bl SCCheckStatus
/* 8035E20C 003277CC  28 03 00 02 */	cmplwi r3, 2
/* 8035E210 003277D0  40 82 00 0C */	bne lbl_8035E21C
/* 8035E214 003277D4  38 60 FF FF */	li r3, -1
/* 8035E218 003277D8  48 00 00 34 */	b lbl_8035E24C
lbl_8035E21C:
/* 8035E21C 003277DC  2C 03 00 00 */	cmpwi r3, 0
/* 8035E220 003277E0  40 82 FF E8 */	bne lbl_8035E208
/* 8035E224 003277E4  48 00 2F 7D */	bl SCGetCounterBias
/* 8035E228 003277E8  7C 7F 1B 78 */	mr r31, r3
/* 8035E22C 003277EC  4B FF E7 35 */	bl OSGetTime
/* 8035E230 003277F0  3C C0 80 00 */	lis r6, 0x800000F8@ha
/* 8035E234 003277F4  38 A0 00 00 */	li r5, 0
/* 8035E238 003277F8  80 06 00 F8 */	lwz r0, 0x800000F8@l(r6)
/* 8035E23C 003277FC  54 06 F0 BE */	srwi r6, r0, 2
/* 8035E240 00327800  4B F5 C0 65 */	bl __div2i
/* 8035E244 00327804  7F FF 20 10 */	subfc r31, r31, r4
/* 8035E248 00327808  38 60 00 00 */	li r3, 0
lbl_8035E24C:
/* 8035E24C 0032780C  2C 03 00 00 */	cmpwi r3, 0
/* 8035E250 00327810  41 82 00 08 */	beq lbl_8035E258
/* 8035E254 00327814  48 00 00 18 */	b lbl_8035E26C
lbl_8035E258:
/* 8035E258 00327818  7C 1E 00 D0 */	neg r0, r30
/* 8035E25C 0032781C  7F E3 FB 78 */	mr r3, r31
/* 8035E260 00327820  7C 00 F3 78 */	or r0, r0, r30
/* 8035E264 00327824  54 04 0F FE */	srwi r4, r0, 0x1f
/* 8035E268 00327828  48 00 02 59 */	bl NWC24iSetRtcCounter
lbl_8035E26C:
/* 8035E26C 0032782C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035E270 00327830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035E274 00327834  83 C1 00 08 */	lwz r30, 8(r1)
/* 8035E278 00327838  7C 08 03 A6 */	mtlr r0
/* 8035E27C 0032783C  38 21 00 10 */	addi r1, r1, 0x10
/* 8035E280 00327840  4E 80 00 20 */	blr 
.balign 16, 0