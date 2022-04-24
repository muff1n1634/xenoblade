.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8042984C
func_8042984C:
/* 8042984C 003F2E0C  80 A4 00 00 */	lwz r5, 0(r4)
/* 80429850 003F2E10  38 C0 00 00 */	li r6, 0
/* 80429854 003F2E14  90 C3 00 00 */	stw r6, 0(r3)
/* 80429858 003F2E18  3C 05 AD A9 */	addis r0, r5, 0xada9
/* 8042985C 003F2E1C  28 00 41 52 */	cmplwi r0, 0x4152
/* 80429860 003F2E20  90 C3 00 04 */	stw r6, 4(r3)
/* 80429864 003F2E24  41 82 00 0C */	beq lbl_80429870
/* 80429868 003F2E28  38 00 00 00 */	li r0, 0
/* 8042986C 003F2E2C  48 00 00 30 */	b lbl_8042989C
lbl_80429870:
/* 80429870 003F2E30  A0 C4 00 06 */	lhz r6, 6(r4)
/* 80429874 003F2E34  28 06 01 00 */	cmplwi r6, 0x100
/* 80429878 003F2E38  40 80 00 0C */	bge lbl_80429884
/* 8042987C 003F2E3C  38 00 00 00 */	li r0, 0
/* 80429880 003F2E40  48 00 00 1C */	b lbl_8042989C
lbl_80429884:
/* 80429884 003F2E44  20 06 01 00 */	subfic r0, r6, 0x100
/* 80429888 003F2E48  38 A0 01 00 */	li r5, 0x100
/* 8042988C 003F2E4C  7C A5 33 38 */	orc r5, r5, r6
/* 80429890 003F2E50  54 00 F8 7E */	srwi r0, r0, 1
/* 80429894 003F2E54  7C 00 28 50 */	subf r0, r0, r5
/* 80429898 003F2E58  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_8042989C:
/* 8042989C 003F2E5C  2C 00 00 00 */	cmpwi r0, 0
/* 804298A0 003F2E60  4D 82 00 20 */	beqlr 
/* 804298A4 003F2E64  80 A4 00 18 */	lwz r5, 0x18(r4)
/* 804298A8 003F2E68  80 04 00 10 */	lwz r0, 0x10(r4)
/* 804298AC 003F2E6C  7C A5 22 14 */	add r5, r5, r4
/* 804298B0 003F2E70  7C 00 22 14 */	add r0, r0, r4
/* 804298B4 003F2E74  90 A3 00 04 */	stw r5, 4(r3)
/* 804298B8 003F2E78  90 03 00 00 */	stw r0, 0(r3)
/* 804298BC 003F2E7C  4E 80 00 20 */	blr 

.global func_804298C0
func_804298C0:
/* 804298C0 003F2E80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804298C4 003F2E84  7C 08 02 A6 */	mflr r0
/* 804298C8 003F2E88  80 C3 00 00 */	lwz r6, 0(r3)
/* 804298CC 003F2E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804298D0 003F2E90  2C 06 00 00 */	cmpwi r6, 0
/* 804298D4 003F2E94  40 82 00 0C */	bne lbl_804298E0
/* 804298D8 003F2E98  38 60 00 00 */	li r3, 0
/* 804298DC 003F2E9C  48 00 00 5C */	b lbl_80429938
lbl_804298E0:
/* 804298E0 003F2EA0  80 A3 00 04 */	lwz r5, 4(r3)
/* 804298E4 003F2EA4  2C 05 00 00 */	cmpwi r5, 0
/* 804298E8 003F2EA8  40 82 00 0C */	bne lbl_804298F4
/* 804298EC 003F2EAC  38 60 00 00 */	li r3, 0
/* 804298F0 003F2EB0  48 00 00 48 */	b lbl_80429938
lbl_804298F4:
/* 804298F4 003F2EB4  2C 04 00 00 */	cmpwi r4, 0
/* 804298F8 003F2EB8  40 80 00 0C */	bge lbl_80429904
/* 804298FC 003F2EBC  38 60 00 00 */	li r3, 0
/* 80429900 003F2EC0  48 00 00 38 */	b lbl_80429938
lbl_80429904:
/* 80429904 003F2EC4  80 06 00 08 */	lwz r0, 8(r6)
/* 80429908 003F2EC8  7C 04 00 40 */	cmplw r4, r0
/* 8042990C 003F2ECC  41 80 00 0C */	blt lbl_80429918
/* 80429910 003F2ED0  38 60 00 00 */	li r3, 0
/* 80429914 003F2ED4  48 00 00 24 */	b lbl_80429938
lbl_80429918:
/* 80429918 003F2ED8  1C 04 00 0C */	mulli r0, r4, 0xc
/* 8042991C 003F2EDC  7C 66 02 14 */	add r3, r6, r0
/* 80429920 003F2EE0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80429924 003F2EE4  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80429928 003F2EE8  90 01 00 08 */	stw r0, 8(r1)
/* 8042992C 003F2EEC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80429930 003F2EF0  88 61 00 08 */	lbz r3, 8(r1)
/* 80429934 003F2EF4  4B FF FE F5 */	bl func_80429828
lbl_80429938:
/* 80429938 003F2EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042993C 003F2EFC  7C 08 03 A6 */	mtlr r0
/* 80429940 003F2F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80429944 003F2F04  4E 80 00 20 */	blr 

.global func_80429948
func_80429948:
/* 80429948 003F2F08  38 00 00 00 */	li r0, 0
/* 8042994C 003F2F0C  90 03 00 00 */	stw r0, 0(r3)
/* 80429950 003F2F10  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80429954 003F2F14  7C 80 22 15 */	add. r4, r0, r4
/* 80429958 003F2F18  4D 82 00 20 */	beqlr 
/* 8042995C 003F2F1C  38 04 00 08 */	addi r0, r4, 8
/* 80429960 003F2F20  90 03 00 00 */	stw r0, 0(r3)
/* 80429964 003F2F24  4E 80 00 20 */	blr 

.global func_80429968
func_80429968:
/* 80429968 003F2F28  90 83 00 00 */	stw r4, 0(r3)
/* 8042996C 003F2F2C  4E 80 00 20 */	blr 

.global func_80429970
func_80429970:
/* 80429970 003F2F30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80429974 003F2F34  7C 08 02 A6 */	mflr r0
/* 80429978 003F2F38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042997C 003F2F3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80429980 003F2F40  4B E9 07 D5 */	bl _savegpr_27
/* 80429984 003F2F44  80 C3 00 00 */	lwz r6, 0(r3)
/* 80429988 003F2F48  7C 7B 1B 78 */	mr r27, r3
/* 8042998C 003F2F4C  7C 9D 23 78 */	mr r29, r4
/* 80429990 003F2F50  7C BC 2B 78 */	mr r28, r5
/* 80429994 003F2F54  88 06 00 00 */	lbz r0, 0(r6)
/* 80429998 003F2F58  2C 00 00 01 */	cmpwi r0, 1
/* 8042999C 003F2F5C  41 82 00 24 */	beq lbl_804299C0
/* 804299A0 003F2F60  40 80 00 10 */	bge lbl_804299B0
/* 804299A4 003F2F64  2C 00 00 00 */	cmpwi r0, 0
/* 804299A8 003F2F68  40 80 00 20 */	bge lbl_804299C8
/* 804299AC 003F2F6C  48 00 00 24 */	b lbl_804299D0
lbl_804299B0:
/* 804299B0 003F2F70  2C 00 00 03 */	cmpwi r0, 3
/* 804299B4 003F2F74  40 80 00 1C */	bge lbl_804299D0
/* 804299B8 003F2F78  3B C0 00 03 */	li r30, 3
/* 804299BC 003F2F7C  48 00 00 18 */	b lbl_804299D4
lbl_804299C0:
/* 804299C0 003F2F80  3B C0 00 01 */	li r30, 1
/* 804299C4 003F2F84  48 00 00 10 */	b lbl_804299D4
lbl_804299C8:
/* 804299C8 003F2F88  3B C0 00 02 */	li r30, 2
/* 804299CC 003F2F8C  48 00 00 08 */	b lbl_804299D4
lbl_804299D0:
/* 804299D0 003F2F90  3B C0 00 03 */	li r30, 3
lbl_804299D4:
/* 804299D4 003F2F94  80 E3 00 00 */	lwz r7, 0(r3)
/* 804299D8 003F2F98  7F C5 F3 78 */	mr r5, r30
/* 804299DC 003F2F9C  93 C4 00 00 */	stw r30, 0(r4)
/* 804299E0 003F2FA0  38 60 00 00 */	li r3, 0
/* 804299E4 003F2FA4  88 07 00 02 */	lbz r0, 2(r7)
/* 804299E8 003F2FA8  90 04 00 08 */	stw r0, 8(r4)
/* 804299EC 003F2FAC  88 C7 00 03 */	lbz r6, 3(r7)
/* 804299F0 003F2FB0  A0 07 00 04 */	lhz r0, 4(r7)
/* 804299F4 003F2FB4  54 C6 80 1E */	slwi r6, r6, 0x10
/* 804299F8 003F2FB8  7C 06 02 14 */	add r0, r6, r0
/* 804299FC 003F2FBC  90 04 00 0C */	stw r0, 0xc(r4)
/* 80429A00 003F2FC0  88 C7 00 01 */	lbz r6, 1(r7)
/* 80429A04 003F2FC4  7C 06 00 D0 */	neg r0, r6
/* 80429A08 003F2FC8  7C 00 33 78 */	or r0, r0, r6
/* 80429A0C 003F2FCC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80429A10 003F2FD0  98 04 00 04 */	stb r0, 4(r4)
/* 80429A14 003F2FD4  80 87 00 08 */	lwz r4, 8(r7)
/* 80429A18 003F2FD8  4B FE 4E 75 */	bl func_8040E88C
/* 80429A1C 003F2FDC  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80429A20 003F2FE0  7F C5 F3 78 */	mr r5, r30
/* 80429A24 003F2FE4  80 9B 00 00 */	lwz r4, 0(r27)
/* 80429A28 003F2FE8  38 60 00 00 */	li r3, 0
/* 80429A2C 003F2FEC  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80429A30 003F2FF0  4B FE 4E 5D */	bl func_8040E88C
/* 80429A34 003F2FF4  38 03 00 01 */	addi r0, r3, 1
/* 80429A38 003F2FF8  80 7B 00 00 */	lwz r3, 0(r27)
/* 80429A3C 003F2FFC  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80429A40 003F3000  3B FD 00 18 */	addi r31, r29, 0x18
/* 80429A44 003F3004  3B A0 00 00 */	li r29, 0
/* 80429A48 003F3008  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80429A4C 003F300C  7F C0 1A 14 */	add r30, r0, r3
/* 80429A50 003F3010  48 00 00 F4 */	b lbl_80429B44
lbl_80429A54:
/* 80429A54 003F3014  2C 1D 00 02 */	cmpwi r29, 2
/* 80429A58 003F3018  40 80 00 E0 */	bge lbl_80429B38
/* 80429A5C 003F301C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80429A60 003F3020  7C 80 1A 14 */	add r4, r0, r3
/* 80429A64 003F3024  80 04 00 04 */	lwz r0, 4(r4)
/* 80429A68 003F3028  2C 00 00 00 */	cmpwi r0, 0
/* 80429A6C 003F302C  41 82 00 BC */	beq lbl_80429B28
/* 80429A70 003F3030  7C A3 02 6E */	lhzux r5, r3, r0
/* 80429A74 003F3034  A0 03 00 02 */	lhz r0, 2(r3)
/* 80429A78 003F3038  B0 BF 00 04 */	sth r5, 4(r31)
/* 80429A7C 003F303C  B0 1F 00 06 */	sth r0, 6(r31)
/* 80429A80 003F3040  A0 A3 00 04 */	lhz r5, 4(r3)
/* 80429A84 003F3044  A0 03 00 06 */	lhz r0, 6(r3)
/* 80429A88 003F3048  B0 BF 00 08 */	sth r5, 8(r31)
/* 80429A8C 003F304C  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 80429A90 003F3050  A0 A3 00 08 */	lhz r5, 8(r3)
/* 80429A94 003F3054  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 80429A98 003F3058  B0 BF 00 0C */	sth r5, 0xc(r31)
/* 80429A9C 003F305C  B0 1F 00 0E */	sth r0, 0xe(r31)
/* 80429AA0 003F3060  A0 A3 00 0C */	lhz r5, 0xc(r3)
/* 80429AA4 003F3064  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 80429AA8 003F3068  B0 BF 00 10 */	sth r5, 0x10(r31)
/* 80429AAC 003F306C  B0 1F 00 12 */	sth r0, 0x12(r31)
/* 80429AB0 003F3070  A0 A3 00 10 */	lhz r5, 0x10(r3)
/* 80429AB4 003F3074  A0 03 00 12 */	lhz r0, 0x12(r3)
/* 80429AB8 003F3078  B0 BF 00 14 */	sth r5, 0x14(r31)
/* 80429ABC 003F307C  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 80429AC0 003F3080  A0 A3 00 14 */	lhz r5, 0x14(r3)
/* 80429AC4 003F3084  A0 03 00 16 */	lhz r0, 0x16(r3)
/* 80429AC8 003F3088  B0 BF 00 18 */	sth r5, 0x18(r31)
/* 80429ACC 003F308C  B0 1F 00 1A */	sth r0, 0x1a(r31)
/* 80429AD0 003F3090  A0 A3 00 18 */	lhz r5, 0x18(r3)
/* 80429AD4 003F3094  A0 03 00 1A */	lhz r0, 0x1a(r3)
/* 80429AD8 003F3098  B0 BF 00 1C */	sth r5, 0x1c(r31)
/* 80429ADC 003F309C  B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 80429AE0 003F30A0  A0 A3 00 1C */	lhz r5, 0x1c(r3)
/* 80429AE4 003F30A4  A0 03 00 1E */	lhz r0, 0x1e(r3)
/* 80429AE8 003F30A8  B0 BF 00 20 */	sth r5, 0x20(r31)
/* 80429AEC 003F30AC  B0 1F 00 22 */	sth r0, 0x22(r31)
/* 80429AF0 003F30B0  A0 03 00 20 */	lhz r0, 0x20(r3)
/* 80429AF4 003F30B4  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 80429AF8 003F30B8  A0 03 00 22 */	lhz r0, 0x22(r3)
/* 80429AFC 003F30BC  B0 1F 00 26 */	sth r0, 0x26(r31)
/* 80429B00 003F30C0  A0 03 00 24 */	lhz r0, 0x24(r3)
/* 80429B04 003F30C4  B0 1F 00 28 */	sth r0, 0x28(r31)
/* 80429B08 003F30C8  A0 03 00 26 */	lhz r0, 0x26(r3)
/* 80429B0C 003F30CC  B0 1F 00 2A */	sth r0, 0x2a(r31)
/* 80429B10 003F30D0  A0 03 00 28 */	lhz r0, 0x28(r3)
/* 80429B14 003F30D4  B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 80429B18 003F30D8  A0 03 00 2A */	lhz r0, 0x2a(r3)
/* 80429B1C 003F30DC  B0 1F 00 2E */	sth r0, 0x2e(r31)
/* 80429B20 003F30E0  A0 03 00 2C */	lhz r0, 0x2c(r3)
/* 80429B24 003F30E4  B0 1F 00 30 */	sth r0, 0x30(r31)
lbl_80429B28:
/* 80429B28 003F30E8  7F 63 DB 78 */	mr r3, r27
/* 80429B2C 003F30EC  7F 85 E3 78 */	mr r5, r28
/* 80429B30 003F30F0  48 00 00 41 */	bl func_80429B70
/* 80429B34 003F30F4  90 7F 00 00 */	stw r3, 0(r31)
lbl_80429B38:
/* 80429B38 003F30F8  3B FF 00 34 */	addi r31, r31, 0x34
/* 80429B3C 003F30FC  3B DE 00 04 */	addi r30, r30, 4
/* 80429B40 003F3100  3B BD 00 01 */	addi r29, r29, 1
lbl_80429B44:
/* 80429B44 003F3104  80 7B 00 00 */	lwz r3, 0(r27)
/* 80429B48 003F3108  88 03 00 02 */	lbz r0, 2(r3)
/* 80429B4C 003F310C  7C 1D 00 00 */	cmpw r29, r0
/* 80429B50 003F3110  41 80 FF 04 */	blt lbl_80429A54
/* 80429B54 003F3114  39 61 00 20 */	addi r11, r1, 0x20
/* 80429B58 003F3118  38 60 00 01 */	li r3, 1
/* 80429B5C 003F311C  4B E9 06 45 */	bl _restgpr_27
/* 80429B60 003F3120  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80429B64 003F3124  7C 08 03 A6 */	mtlr r0
/* 80429B68 003F3128  38 21 00 20 */	addi r1, r1, 0x20
/* 80429B6C 003F312C  4E 80 00 20 */	blr 

.global func_80429B70
func_80429B70:
/* 80429B70 003F3130  2C 05 00 00 */	cmpwi r5, 0
/* 80429B74 003F3134  7C A0 00 34 */	cntlzw r0, r5
/* 80429B78 003F3138  54 06 D9 7E */	srwi r6, r0, 5
/* 80429B7C 003F313C  40 82 00 08 */	bne lbl_80429B84
/* 80429B80 003F3140  80 A3 00 00 */	lwz r5, 0(r3)
lbl_80429B84:
/* 80429B84 003F3144  80 63 00 00 */	lwz r3, 0(r3)
/* 80429B88 003F3148  88 03 00 06 */	lbz r0, 6(r3)
/* 80429B8C 003F314C  2C 00 00 01 */	cmpwi r0, 1
/* 80429B90 003F3150  41 82 00 2C */	beq lbl_80429BBC
/* 80429B94 003F3154  40 80 00 30 */	bge lbl_80429BC4
/* 80429B98 003F3158  2C 00 00 00 */	cmpwi r0, 0
/* 80429B9C 003F315C  40 80 00 08 */	bge lbl_80429BA4
/* 80429BA0 003F3160  48 00 00 24 */	b lbl_80429BC4
lbl_80429BA4:
/* 80429BA4 003F3164  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80429BA8 003F3168  2C 06 00 00 */	cmpwi r6, 0
/* 80429BAC 003F316C  7C 60 2A 14 */	add r3, r0, r5
/* 80429BB0 003F3170  41 82 00 1C */	beq lbl_80429BCC
/* 80429BB4 003F3174  38 63 00 08 */	addi r3, r3, 8
/* 80429BB8 003F3178  48 00 00 14 */	b lbl_80429BCC
lbl_80429BBC:
/* 80429BBC 003F317C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80429BC0 003F3180  48 00 00 0C */	b lbl_80429BCC
lbl_80429BC4:
/* 80429BC4 003F3184  38 60 00 00 */	li r3, 0
/* 80429BC8 003F3188  4E 80 00 20 */	blr

.global lbl_80429BCC
lbl_80429BCC:
/* 80429BCC 003F318C  80 04 00 00 */	lwz r0, 0(r4)
/* 80429BD0 003F3190  7C 60 1A 14 */	add r3, r0, r3
/* 80429BD4 003F3194  4E 80 00 20 */	blr 