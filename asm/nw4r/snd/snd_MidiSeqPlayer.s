.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global lbl_8041759C
lbl_8041759C:
/* 8041759C 003E0B5C  48 00 2F D4 */	b lbl_8041A570
lbl_804175A0:
/* 804175A0 003E0B60  81 83 00 00 */	lwz r12, 0(r3)
/* 804175A4 003E0B64  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804175A8 003E0B68  7D 89 03 A6 */	mtctr r12
/* 804175AC 003E0B6C  4E 80 04 20 */	bctr 
lbl_804175B0:
/* 804175B0 003E0B70  4E 80 00 20 */	blr

/* 804175B4 003E0B74  4E 80 00 20 */	blr 

/* 804175B8 003E0B78  88 63 00 EE */	lbz r3, 0xee(r3)
/* 804175BC 003E0B7C  4E 80 00 20 */	blr 

/* 804175C0 003E0B80  88 63 00 ED */	lbz r3, 0xed(r3)
/* 804175C4 003E0B84  4E 80 00 20 */	blr 

/* 804175C8 003E0B88  88 63 00 EC */	lbz r3, 0xec(r3)
/* 804175CC 003E0B8C  4E 80 00 20 */	blr 

/* 804175D0 003E0B90  38 63 FF 2C */	addi r3, r3, -212
/* 804175D4 003E0B94  4B FF FF DC */	b lbl_804175B0
/* 804175D8 003E0B98  38 63 FF 2C */	addi r3, r3, -212
/* 804175DC 003E0B9C  48 00 2C 34 */	b lbl_8041A210
/* 804175E0 003E0BA0  38 63 FF 20 */	addi r3, r3, -224
/* 804175E4 003E0BA4  4B FF FF BC */	b lbl_804175A0
/* 804175E8 003E0BA8  38 63 FF 20 */	addi r3, r3, -224
/* 804175EC 003E0BAC  4B FF FF B0 */	b lbl_8041759C