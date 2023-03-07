.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn RFCOMM_Init, global
/* 802FCA2C 002C5FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FCA30 002C5FF0  7C 08 02 A6 */	mflr r0
/* 802FCA34 002C5FF4  38 80 00 00 */	li r4, 0
/* 802FCA38 002C5FF8  38 A0 04 18 */	li r5, 0x418
/* 802FCA3C 002C5FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FCA40 002C6000  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FCA44 002C6004  3F E0 80 5C */	lis r31, rfc_cb@ha
/* 802FCA48 002C6008  38 7F 32 A8 */	addi r3, r31, rfc_cb@l
/* 802FCA4C 002C600C  4B D0 79 05 */	bl memset
/* 802FCA50 002C6010  38 7F 32 A8 */	addi r3, r31, rfc_cb@l
/* 802FCA54 002C6014  38 80 00 01 */	li r4, 1
/* 802FCA58 002C6018  38 00 00 05 */	li r0, 5
/* 802FCA5C 002C601C  98 83 00 65 */	stb r4, 0x65(r3)
/* 802FCA60 002C6020  98 03 04 14 */	stb r0, 0x414(r3)
/* 802FCA64 002C6024  48 00 19 ED */	bl rfcomm_l2cap_if_init
/* 802FCA68 002C6028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FCA6C 002C602C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FCA70 002C6030  7C 08 03 A6 */	mtlr r0
/* 802FCA74 002C6034  38 21 00 10 */	addi r1, r1, 0x10
/* 802FCA78 002C6038  4E 80 00 20 */	blr
.endfn RFCOMM_Init
