.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__cf_CfResObjImpl, global
/* 8016C7F0 00135DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016C7F4 00135DB4  7C 08 02 A6 */	mflr r0
/* 8016C7F8 00135DB8  3C C0 80 53 */	lis r6, __vt__cf_CfResObjImpl@ha
/* 8016C7FC 00135DBC  C0 02 9B D0 */	lfs f0, float_80669F50@sda21(r2)
/* 8016C800 00135DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016C804 00135DC4  38 E0 FF FF */	li r7, -1
/* 8016C808 00135DC8  38 C6 47 18 */	addi r6, r6, __vt__cf_CfResObjImpl@l
/* 8016C80C 00135DCC  39 00 00 00 */	li r8, 0
/* 8016C810 00135DD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8016C814 00135DD4  38 00 00 01 */	li r0, 1
/* 8016C818 00135DD8  7C 7F 1B 78 */	mr r31, r3
/* 8016C81C 00135DDC  38 A0 00 08 */	li r5, 8
/* 8016C820 00135DE0  90 83 00 00 */	stw r4, 0(r3)
/* 8016C824 00135DE4  38 80 00 00 */	li r4, 0
/* 8016C828 00135DE8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8016C82C 00135DEC  B0 E3 00 0A */	sth r7, 0xa(r3)
/* 8016C830 00135DF0  B1 03 00 0C */	sth r8, 0xc(r3)
/* 8016C834 00135DF4  B0 E3 00 0E */	sth r7, 0xe(r3)
/* 8016C838 00135DF8  90 C3 00 10 */	stw r6, 0x10(r3)
/* 8016C83C 00135DFC  B0 03 00 08 */	sth r0, 8(r3)
/* 8016C840 00135E00  38 63 00 14 */	addi r3, r3, 0x14
/* 8016C844 00135E04  4B E9 7B 0D */	bl memset
/* 8016C848 00135E08  7F E3 FB 78 */	mr r3, r31
/* 8016C84C 00135E0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8016C850 00135E10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016C854 00135E14  7C 08 03 A6 */	mtlr r0
/* 8016C858 00135E18  38 21 00 10 */	addi r1, r1, 0x10
/* 8016C85C 00135E1C  4E 80 00 20 */	blr 
.endfn __ct__cf_CfResObjImpl

.fn func_8016C860, global
/* 8016C860 00135E20  A0 83 00 08 */	lhz r4, 8(r3)
/* 8016C864 00135E24  38 60 00 02 */	li r3, 2
/* 8016C868 00135E28  38 04 FF FE */	addi r0, r4, -2
/* 8016C86C 00135E2C  7C 83 1B 38 */	orc r3, r4, r3
/* 8016C870 00135E30  54 00 F8 7E */	srwi r0, r0, 1
/* 8016C874 00135E34  7C 00 18 50 */	subf r0, r0, r3
/* 8016C878 00135E38  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8016C87C 00135E3C  4E 80 00 20 */	blr 
.endfn func_8016C860

.fn func_8016C880, global
/* 8016C880 00135E40  38 60 00 80 */	li r3, 0x80
/* 8016C884 00135E44  4E 80 00 20 */	blr 
.endfn func_8016C880

.fn func_8016C888, global
/* 8016C888 00135E48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016C88C 00135E4C  7C 08 02 A6 */	mflr r0
/* 8016C890 00135E50  90 01 00 34 */	stw r0, 0x34(r1)
/* 8016C894 00135E54  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8016C898 00135E58  FF E0 10 90 */	fmr f31, f2
/* 8016C89C 00135E5C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8016C8A0 00135E60  FF C0 08 90 */	fmr f30, f1
/* 8016C8A4 00135E64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8016C8A8 00135E68  7C DF 33 78 */	mr r31, r6
/* 8016C8AC 00135E6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8016C8B0 00135E70  7C 9E 23 78 */	mr r30, r4
/* 8016C8B4 00135E74  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8016C8B8 00135E78  7C 7D 1B 78 */	mr r29, r3
/* 8016C8BC 00135E7C  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8016C8C0 00135E80  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8016C8C4 00135E84  7D 89 03 A6 */	mtctr r12
/* 8016C8C8 00135E88  4E 80 04 21 */	bctrl 
/* 8016C8CC 00135E8C  2C 03 00 00 */	cmpwi r3, 0
/* 8016C8D0 00135E90  41 82 00 5C */	beq .L_8016C92C
/* 8016C8D4 00135E94  81 9D 00 10 */	lwz r12, 0x10(r29)
/* 8016C8D8 00135E98  7F A3 EB 78 */	mr r3, r29
/* 8016C8DC 00135E9C  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8016C8E0 00135EA0  7D 89 03 A6 */	mtctr r12
/* 8016C8E4 00135EA4  4E 80 04 21 */	bctrl 
/* 8016C8E8 00135EA8  80 BD 00 00 */	lwz r5, 0(r29)
/* 8016C8EC 00135EAC  FC 20 F0 90 */	fmr f1, f30
/* 8016C8F0 00135EB0  FC 40 F8 90 */	fmr f2, f31
/* 8016C8F4 00135EB4  7F C4 F3 78 */	mr r4, r30
/* 8016C8F8 00135EB8  80 A5 00 74 */	lwz r5, 0x74(r5)
/* 8016C8FC 00135EBC  48 05 35 25 */	bl func_801BFE20
/* 8016C900 00135EC0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8016C904 00135EC4  48 05 31 E1 */	bl func_801BFAE4
/* 8016C908 00135EC8  2C 03 00 00 */	cmpwi r3, 0
/* 8016C90C 00135ECC  41 82 00 20 */	beq .L_8016C92C
/* 8016C910 00135ED0  2C 1F 00 00 */	cmpwi r31, 0
/* 8016C914 00135ED4  41 82 00 18 */	beq .L_8016C92C
/* 8016C918 00135ED8  80 63 00 00 */	lwz r3, 0(r3)
/* 8016C91C 00135EDC  2C 03 00 00 */	cmpwi r3, 0
/* 8016C920 00135EE0  41 82 00 0C */	beq .L_8016C92C
/* 8016C924 00135EE4  7F E4 FB 78 */	mr r4, r31
/* 8016C928 00135EE8  48 2A 6E 31 */	bl SetPlayerPriority__Q44nw4r3snd6detail10BasicSoundFi
.L_8016C92C:
/* 8016C92C 00135EEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016C930 00135EF0  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8016C934 00135EF4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8016C938 00135EF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016C93C 00135EFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8016C940 00135F00  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8016C944 00135F04  7C 08 03 A6 */	mtlr r0
/* 8016C948 00135F08  38 21 00 30 */	addi r1, r1, 0x30
/* 8016C94C 00135F0C  4E 80 00 20 */	blr 
.endfn func_8016C888

.fn func_8016C950, global
/* 8016C950 00135F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016C954 00135F14  7C 08 02 A6 */	mflr r0
/* 8016C958 00135F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016C95C 00135F1C  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8016C960 00135F20  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8016C964 00135F24  7D 89 03 A6 */	mtctr r12
/* 8016C968 00135F28  4E 80 04 21 */	bctrl 
/* 8016C96C 00135F2C  2C 03 00 00 */	cmpwi r3, 0
/* 8016C970 00135F30  38 60 FF FF */	li r3, -1
/* 8016C974 00135F34  41 82 00 08 */	beq .L_8016C97C
/* 8016C978 00135F38  38 60 00 01 */	li r3, 1
.L_8016C97C:
/* 8016C97C 00135F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016C980 00135F40  7C 08 03 A6 */	mtlr r0
/* 8016C984 00135F44  38 21 00 10 */	addi r1, r1, 0x10
/* 8016C988 00135F48  4E 80 00 20 */	blr 
.endfn func_8016C950

.fn func_8016C98C, global
/* 8016C98C 00135F4C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8016C990 00135F50  7C 08 02 A6 */	mflr r0
/* 8016C994 00135F54  90 01 00 74 */	stw r0, 0x74(r1)
/* 8016C998 00135F58  DB E1 00 68 */	stfd f31, 0x68(r1)
/* 8016C99C 00135F5C  93 E1 00 64 */	stw r31, 0x64(r1)
/* 8016C9A0 00135F60  93 C1 00 60 */	stw r30, 0x60(r1)
/* 8016C9A4 00135F64  7C 7E 1B 78 */	mr r30, r3
/* 8016C9A8 00135F68  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 8016C9AC 00135F6C  80 63 00 00 */	lwz r3, 0(r3)
/* 8016C9B0 00135F70  81 83 00 00 */	lwz r12, 0(r3)
/* 8016C9B4 00135F74  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 8016C9B8 00135F78  7D 89 03 A6 */	mtctr r12
/* 8016C9BC 00135F7C  4E 80 04 21 */	bctrl 
/* 8016C9C0 00135F80  80 7E 00 00 */	lwz r3, 0(r30)
/* 8016C9C4 00135F84  81 83 00 00 */	lwz r12, 0(r3)
/* 8016C9C8 00135F88  81 8C 01 78 */	lwz r12, 0x178(r12)
/* 8016C9CC 00135F8C  7D 89 03 A6 */	mtctr r12
/* 8016C9D0 00135F90  4E 80 04 21 */	bctrl 
/* 8016C9D4 00135F94  80 7E 00 00 */	lwz r3, 0(r30)
/* 8016C9D8 00135F98  38 00 00 00 */	li r0, 0
/* 8016C9DC 00135F9C  90 03 00 90 */	stw r0, 0x90(r3)
/* 8016C9E0 00135FA0  80 7E 00 00 */	lwz r3, 0(r30)
/* 8016C9E4 00135FA4  90 03 00 94 */	stw r0, 0x94(r3)
/* 8016C9E8 00135FA8  4B F1 5F 19 */	bl func_80082900
/* 8016C9EC 00135FAC  2C 03 00 00 */	cmpwi r3, 0
/* 8016C9F0 00135FB0  41 82 02 AC */	beq .L_8016CC9C
/* 8016C9F4 00135FB4  4B EF 66 45 */	bl func_80063038
/* 8016C9F8 00135FB8  7C 7F 1B 78 */	mr r31, r3
/* 8016C9FC 00135FBC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8016CA00 00135FC0  7F E4 FB 78 */	mr r4, r31
/* 8016CA04 00135FC4  3B A0 00 01 */	li r29, 1
/* 8016CA08 00135FC8  81 83 00 00 */	lwz r12, 0(r3)
/* 8016CA0C 00135FCC  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8016CA10 00135FD0  7D 89 03 A6 */	mtctr r12
/* 8016CA14 00135FD4  4E 80 04 21 */	bctrl 
/* 8016CA18 00135FD8  2C 03 00 00 */	cmpwi r3, 0
/* 8016CA1C 00135FDC  40 82 00 08 */	bne .L_8016CA24
/* 8016CA20 00135FE0  3B A0 00 00 */	li r29, 0
.L_8016CA24:
/* 8016CA24 00135FE4  2C 1D 00 00 */	cmpwi r29, 0
/* 8016CA28 00135FE8  41 82 02 74 */	beq .L_8016CC9C
/* 8016CA2C 00135FEC  A0 9E 00 08 */	lhz r4, 8(r30)
/* 8016CA30 00135FF0  38 60 00 00 */	li r3, 0
/* 8016CA34 00135FF4  38 04 00 01 */	addi r0, r4, 1
/* 8016CA38 00135FF8  B0 1E 00 08 */	sth r0, 8(r30)
/* 8016CA3C 00135FFC  48 2C 80 11 */	bl func_80434A4C
/* 8016CA40 00136000  80 7E 00 00 */	lwz r3, 0(r30)
/* 8016CA44 00136004  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 8016CA48 00136008  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8016CA4C 0013600C  41 82 00 F0 */	beq .L_8016CB3C
/* 8016CA50 00136010  80 03 00 98 */	lwz r0, 0x98(r3)
/* 8016CA54 00136014  2C 00 00 00 */	cmpwi r0, 0
/* 8016CA58 00136018  40 82 00 E4 */	bne .L_8016CB3C
/* 8016CA5C 0013601C  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 8016CA60 00136020  7F C3 F3 78 */	mr r3, r30
/* 8016CA64 00136024  38 80 00 01 */	li r4, 1
/* 8016CA68 00136028  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8016CA6C 0013602C  7D 89 03 A6 */	mtctr r12
/* 8016CA70 00136030  4E 80 04 21 */	bctrl 
/* 8016CA74 00136034  7C 64 1B 78 */	mr r4, r3
/* 8016CA78 00136038  7F E3 FB 78 */	mr r3, r31
/* 8016CA7C 0013603C  4B EF A4 01 */	bl func_80066E7C
/* 8016CA80 00136040  80 9E 00 00 */	lwz r4, 0(r30)
/* 8016CA84 00136044  90 64 00 90 */	stw r3, 0x90(r4)
/* 8016CA88 00136048  80 7E 00 00 */	lwz r3, 0(r30)
/* 8016CA8C 0013604C  81 83 00 00 */	lwz r12, 0(r3)
/* 8016CA90 00136050  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 8016CA94 00136054  7D 89 03 A6 */	mtctr r12
/* 8016CA98 00136058  4E 80 04 21 */	bctrl 
/* 8016CA9C 0013605C  80 9E 00 00 */	lwz r4, 0(r30)
/* 8016CAA0 00136060  FF E0 08 90 */	fmr f31, f1
/* 8016CAA4 00136064  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 8016CAA8 00136068  38 A0 00 06 */	li r5, 6
/* 8016CAAC 0013606C  80 84 00 90 */	lwz r4, 0x90(r4)
/* 8016CAB0 00136070  38 C0 00 01 */	li r6, 1
/* 8016CAB4 00136074  38 E0 00 00 */	li r7, 0
/* 8016CAB8 00136078  39 00 00 70 */	li r8, 0x70
/* 8016CABC 0013607C  48 31 CF A5 */	bl func_80489A60
/* 8016CAC0 00136080  7C 64 1B 78 */	mr r4, r3
/* 8016CAC4 00136084  80 7E 00 00 */	lwz r3, 0(r30)
/* 8016CAC8 00136088  4B F4 F0 15 */	bl func_800BBADC
/* 8016CACC 0013608C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8016CAD0 00136090  80 63 00 98 */	lwz r3, 0x98(r3)
/* 8016CAD4 00136094  2C 03 00 00 */	cmpwi r3, 0
/* 8016CAD8 00136098  41 82 00 4C */	beq .L_8016CB24
/* 8016CADC 0013609C  80 03 07 A4 */	lwz r0, 0x7a4(r3)
/* 8016CAE0 001360A0  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 8016CAE4 001360A4  41 82 00 40 */	beq .L_8016CB24
/* 8016CAE8 001360A8  4B F1 67 B1 */	bl func_80083298
/* 8016CAEC 001360AC  2C 03 00 00 */	cmpwi r3, 0
/* 8016CAF0 001360B0  41 82 00 34 */	beq .L_8016CB24
/* 8016CAF4 001360B4  4B F1 67 A5 */	bl func_80083298
/* 8016CAF8 001360B8  80 03 00 98 */	lwz r0, 0x98(r3)
/* 8016CAFC 001360BC  2C 00 00 00 */	cmpwi r0, 0
/* 8016CB00 001360C0  41 82 00 24 */	beq .L_8016CB24
/* 8016CB04 001360C4  4B F1 67 95 */	bl func_80083298
/* 8016CB08 001360C8  80 BE 00 00 */	lwz r5, 0(r30)
/* 8016CB0C 001360CC  80 83 00 98 */	lwz r4, 0x98(r3)
/* 8016CB10 001360D0  80 65 00 98 */	lwz r3, 0x98(r5)
/* 8016CB14 001360D4  81 83 00 00 */	lwz r12, 0(r3)
/* 8016CB18 001360D8  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 8016CB1C 001360DC  7D 89 03 A6 */	mtctr r12
/* 8016CB20 001360E0  4E 80 04 21 */	bctrl 
.L_8016CB24:
/* 8016CB24 001360E4  80 7E 00 00 */	lwz r3, 0(r30)
/* 8016CB28 001360E8  FC 20 F8 90 */	fmr f1, f31
/* 8016CB2C 001360EC  81 83 00 00 */	lwz r12, 0(r3)
/* 8016CB30 001360F0  81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 8016CB34 001360F4  7D 89 03 A6 */	mtctr r12
/* 8016CB38 001360F8  4E 80 04 21 */	bctrl 
.L_8016CB3C:
/* 8016CB3C 001360FC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8016CB40 00136100  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 8016CB44 00136104  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8016CB48 00136108  41 82 00 90 */	beq .L_8016CBD8
/* 8016CB4C 0013610C  38 00 00 00 */	li r0, 0
/* 8016CB50 00136110  98 01 00 08 */	stb r0, 8(r1)
/* 8016CB54 00136114  90 01 00 48 */	stw r0, 0x48(r1)
/* 8016CB58 00136118  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 8016CB5C 0013611C  2C 00 00 00 */	cmpwi r0, 0
/* 8016CB60 00136120  40 82 00 78 */	bne .L_8016CBD8
/* 8016CB64 00136124  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 8016CB68 00136128  7F C3 F3 78 */	mr r3, r30
/* 8016CB6C 0013612C  38 80 00 00 */	li r4, 0
/* 8016CB70 00136130  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8016CB74 00136134  7D 89 03 A6 */	mtctr r12
/* 8016CB78 00136138  4E 80 04 21 */	bctrl 
/* 8016CB7C 0013613C  7C 64 1B 78 */	mr r4, r3
/* 8016CB80 00136140  38 61 00 08 */	addi r3, r1, 8
/* 8016CB84 00136144  38 A0 00 00 */	li r5, 0
/* 8016CB88 00136148  38 C0 00 00 */	li r6, 0
/* 8016CB8C 0013614C  4B F3 D7 B1 */	bl func_800AA33C
/* 8016CB90 00136150  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 8016CB94 00136154  7F C3 F3 78 */	mr r3, r30
/* 8016CB98 00136158  38 80 00 00 */	li r4, 0
/* 8016CB9C 0013615C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8016CBA0 00136160  7D 89 03 A6 */	mtctr r12
/* 8016CBA4 00136164  4E 80 04 21 */	bctrl 
/* 8016CBA8 00136168  7C 64 1B 78 */	mr r4, r3
/* 8016CBAC 0013616C  7F E3 FB 78 */	mr r3, r31
/* 8016CBB0 00136170  4B EF A2 CD */	bl func_80066E7C
/* 8016CBB4 00136174  80 9E 00 00 */	lwz r4, 0(r30)
/* 8016CBB8 00136178  90 64 00 94 */	stw r3, 0x94(r4)
/* 8016CBBC 0013617C  4B EF 54 1D */	bl func_80061FD8
/* 8016CBC0 00136180  80 9E 00 00 */	lwz r4, 0(r30)
/* 8016CBC4 00136184  38 A1 00 08 */	addi r5, r1, 8
/* 8016CBC8 00136188  80 84 00 94 */	lwz r4, 0x94(r4)
/* 8016CBCC 0013618C  4B EE B8 ED */	bl func_800584B8
/* 8016CBD0 00136190  80 9E 00 00 */	lwz r4, 0(r30)
/* 8016CBD4 00136194  90 64 00 9C */	stw r3, 0x9c(r4)
.L_8016CBD8:
/* 8016CBD8 00136198  38 60 00 01 */	li r3, 1
/* 8016CBDC 0013619C  48 2C 7E 71 */	bl func_80434A4C
/* 8016CBE0 001361A0  80 7E 00 00 */	lwz r3, 0(r30)
/* 8016CBE4 001361A4  4B F5 03 BD */	bl func_800BCFA0
/* 8016CBE8 001361A8  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 8016CBEC 001361AC  7F C3 F3 78 */	mr r3, r30
/* 8016CBF0 001361B0  38 80 00 01 */	li r4, 1
/* 8016CBF4 001361B4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8016CBF8 001361B8  7D 89 03 A6 */	mtctr r12
/* 8016CBFC 001361BC  4E 80 04 21 */	bctrl 
/* 8016CC00 001361C0  7C 60 1B 78 */	mr r0, r3
/* 8016CC04 001361C4  7F E3 FB 78 */	mr r3, r31
/* 8016CC08 001361C8  54 00 01 7E */	clrlwi r0, r0, 5
/* 8016CC0C 001361CC  64 04 F0 00 */	oris r4, r0, 0xf000
/* 8016CC10 001361D0  4B EF A2 6D */	bl func_80066E7C
/* 8016CC14 001361D4  2C 03 00 00 */	cmpwi r3, 0
/* 8016CC18 001361D8  41 82 00 3C */	beq .L_8016CC54
/* 8016CC1C 001361DC  80 BE 00 00 */	lwz r5, 0(r30)
/* 8016CC20 001361E0  7C 64 1B 78 */	mr r4, r3
/* 8016CC24 001361E4  38 65 06 0C */	addi r3, r5, 0x60c
/* 8016CC28 001361E8  48 34 3E 45 */	bl func_804B0A6C
/* 8016CC2C 001361EC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8016CC30 001361F0  38 80 00 01 */	li r4, 1
/* 8016CC34 001361F4  4B F5 1B F1 */	bl func_800BE824
/* 8016CC38 001361F8  80 7E 00 00 */	lwz r3, 0(r30)
/* 8016CC3C 001361FC  38 00 00 02 */	li r0, 2
/* 8016CC40 00136200  90 03 06 B8 */	stw r0, 0x6b8(r3)
/* 8016CC44 00136204  80 7E 00 00 */	lwz r3, 0(r30)
/* 8016CC48 00136208  80 03 06 B4 */	lwz r0, 0x6b4(r3)
/* 8016CC4C 0013620C  60 00 08 00 */	ori r0, r0, 0x800
/* 8016CC50 00136210  90 03 06 B4 */	stw r0, 0x6b4(r3)
.L_8016CC54:
/* 8016CC54 00136214  80 7E 00 00 */	lwz r3, 0(r30)
/* 8016CC58 00136218  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8016CC5C 0013621C  2C 03 00 00 */	cmpwi r3, 0
/* 8016CC60 00136220  41 82 00 14 */	beq .L_8016CC74
/* 8016CC64 00136224  81 83 00 00 */	lwz r12, 0(r3)
/* 8016CC68 00136228  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 8016CC6C 0013622C  7D 89 03 A6 */	mtctr r12
/* 8016CC70 00136230  4E 80 04 21 */	bctrl 
.L_8016CC74:
/* 8016CC74 00136234  80 9E 00 00 */	lwz r4, 0(r30)
/* 8016CC78 00136238  80 64 00 98 */	lwz r3, 0x98(r4)
/* 8016CC7C 0013623C  2C 03 00 00 */	cmpwi r3, 0
/* 8016CC80 00136240  41 82 00 1C */	beq .L_8016CC9C
/* 8016CC84 00136244  81 83 00 00 */	lwz r12, 0(r3)
/* 8016CC88 00136248  80 04 00 6C */	lwz r0, 0x6c(r4)
/* 8016CC8C 0013624C  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 8016CC90 00136250  54 04 27 FE */	rlwinm r4, r0, 4, 0x1f, 0x1f
/* 8016CC94 00136254  7D 89 03 A6 */	mtctr r12
/* 8016CC98 00136258  4E 80 04 21 */	bctrl 
.L_8016CC9C:
/* 8016CC9C 0013625C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8016CCA0 00136260  CB E1 00 68 */	lfd f31, 0x68(r1)
/* 8016CCA4 00136264  83 E1 00 64 */	lwz r31, 0x64(r1)
/* 8016CCA8 00136268  83 C1 00 60 */	lwz r30, 0x60(r1)
/* 8016CCAC 0013626C  83 A1 00 5C */	lwz r29, 0x5c(r1)
/* 8016CCB0 00136270  7C 08 03 A6 */	mtlr r0
/* 8016CCB4 00136274  38 21 00 70 */	addi r1, r1, 0x70
/* 8016CCB8 00136278  4E 80 00 20 */	blr 
.endfn func_8016C98C

.fn func_8016CCBC, global
/* 8016CCBC 0013627C  2C 04 00 02 */	cmpwi r4, 2
/* 8016CCC0 00136280  40 80 00 14 */	bge .L_8016CCD4
/* 8016CCC4 00136284  54 80 10 3A */	slwi r0, r4, 2
/* 8016CCC8 00136288  7C 63 02 14 */	add r3, r3, r0
/* 8016CCCC 0013628C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8016CCD0 00136290  4E 80 00 20 */	blr
.L_8016CCD4:
/* 8016CCD4 00136294  38 60 00 00 */	li r3, 0
/* 8016CCD8 00136298  4E 80 00 20 */	blr 
.endfn func_8016CCBC

.fn func_8016CCDC, global
/* 8016CCDC 0013629C  4E 80 00 20 */	blr 
.endfn func_8016CCDC

.fn func_8016CCE0, global
/* 8016CCE0 001362A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016CCE4 001362A4  7C 08 02 A6 */	mflr r0
/* 8016CCE8 001362A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016CCEC 001362AC  88 0D A9 E0 */	lbz r0, lbl_80666B60@sda21(r13)
/* 8016CCF0 001362B0  7C 00 07 75 */	extsb. r0, r0
/* 8016CCF4 001362B4  40 82 00 2C */	bne .L_8016CD20
/* 8016CCF8 001362B8  3C 80 80 51 */	lis r4, __ptmf_null@ha
/* 8016CCFC 001362BC  84 C4 CE 10 */	lwzu r6, __ptmf_null@l(r4)
/* 8016CD00 001362C0  3C E0 80 53 */	lis r7, lbl_805346F0@ha
/* 8016CD04 001362C4  94 C7 46 F0 */	stwu r6, lbl_805346F0@l(r7)
/* 8016CD08 001362C8  80 A4 00 04 */	lwz r5, 4(r4)
/* 8016CD0C 001362CC  38 00 00 01 */	li r0, 1
/* 8016CD10 001362D0  80 84 00 08 */	lwz r4, 8(r4)
/* 8016CD14 001362D4  90 A7 00 04 */	stw r5, 4(r7)
/* 8016CD18 001362D8  90 87 00 08 */	stw r4, 8(r7)
/* 8016CD1C 001362DC  98 0D A9 E0 */	stb r0, lbl_80666B60@sda21(r13)
.L_8016CD20:
/* 8016CD20 001362E0  A0 03 00 08 */	lhz r0, 8(r3)
/* 8016CD24 001362E4  28 00 00 03 */	cmplwi r0, 3
/* 8016CD28 001362E8  40 80 00 1C */	bge .L_8016CD44
/* 8016CD2C 001362EC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8016CD30 001362F0  3C 80 80 53 */	lis r4, lbl_805346F0@ha
/* 8016CD34 001362F4  38 84 46 F0 */	addi r4, r4, lbl_805346F0@l
/* 8016CD38 001362F8  7D 84 02 14 */	add r12, r4, r0
/* 8016CD3C 001362FC  48 14 D0 21 */	bl __ptmf_scall
/* 8016CD40 00136300  60 00 00 00 */	nop 
.L_8016CD44:
/* 8016CD44 00136304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016CD48 00136308  7C 08 03 A6 */	mtlr r0
/* 8016CD4C 0013630C  38 21 00 10 */	addi r1, r1, 0x10
/* 8016CD50 00136310  4E 80 00 20 */	blr 
.endfn func_8016CCE0

.fn func_8016CD54, global
/* 8016CD54 00136314  38 60 00 00 */	li r3, 0
/* 8016CD58 00136318  4E 80 00 20 */	blr 
.endfn func_8016CD54

.fn func_8016CD5C, global
/* 8016CD5C 0013631C  38 60 00 00 */	li r3, 0
/* 8016CD60 00136320  4E 80 00 20 */	blr 
.endfn func_8016CD5C

.fn func_8016CD64, global
/* 8016CD64 00136324  4E 80 00 20 */	blr 
.endfn func_8016CD64

.fn func_8016CD68, global
/* 8016CD68 00136328  2C 04 00 02 */	cmpwi r4, 2
/* 8016CD6C 0013632C  4C 80 00 20 */	bgelr 
/* 8016CD70 00136330  54 80 10 3A */	slwi r0, r4, 2
/* 8016CD74 00136334  7C 63 02 14 */	add r3, r3, r0
/* 8016CD78 00136338  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8016CD7C 0013633C  4E 80 00 20 */	blr 
.endfn func_8016CD68

.fn __dt__cf_CfResObjImpl, global
/* 8016CD80 00136340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016CD84 00136344  7C 08 02 A6 */	mflr r0
/* 8016CD88 00136348  2C 03 00 00 */	cmpwi r3, 0
/* 8016CD8C 0013634C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016CD90 00136350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8016CD94 00136354  7C 7F 1B 78 */	mr r31, r3
/* 8016CD98 00136358  41 82 00 10 */	beq .L_8016CDA8
/* 8016CD9C 0013635C  2C 04 00 00 */	cmpwi r4, 0
/* 8016CDA0 00136360  40 81 00 08 */	ble .L_8016CDA8
/* 8016CDA4 00136364  48 2C 7E 89 */	bl __dl__FPv
.L_8016CDA8:
/* 8016CDA8 00136368  7F E3 FB 78 */	mr r3, r31
/* 8016CDAC 0013636C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8016CDB0 00136370  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016CDB4 00136374  7C 08 03 A6 */	mtlr r0
/* 8016CDB8 00136378  38 21 00 10 */	addi r1, r1, 0x10
/* 8016CDBC 0013637C  4E 80 00 20 */	blr 
.endfn __dt__cf_CfResObjImpl

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj cf_CfResObjImpl_typestr, global
	.asciz "cf::CfResObjImpl"
	.balign 4
.endobj cf_CfResObjImpl_typestr

.obj cf_CfResImpl_typestr, global
	.asciz "cf::CfResImpl"
	.balign 4
	.4byte 0
.endobj cf_CfResImpl_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_805344C0, global
	.asciz "ResUserData"
.endobj lbl_805344C0


.obj lbl_805344CC, global
	.asciz "%s::%s: Object not valid."
	.balign 4
.endobj lbl_805344CC


.obj lbl_805344E8, global
	.asciz "g3d_resuser_ac.h"
	.balign 4
.endobj lbl_805344E8


.obj lbl_805344FC, global
	.asciz "NW4R:Failed assertion !((u32)p & 0x3)"
	.balign 4
.endobj lbl_805344FC


.obj lbl_80534524, global
	.asciz "g3d_resuser_ac.h"
	.balign 4
.endobj lbl_80534524


.obj lbl_80534538, global
	.asciz "ResUserDataItem"
.endobj lbl_80534538


.obj lbl_80534548, global
	.asciz "%s::%s: Object not valid."
	.balign 4
.endobj lbl_80534548


.obj lbl_80534564, global
	.asciz "g3d_resuser_ac.h"
	.balign 4
.endobj lbl_80534564


.obj lbl_80534578, global
	.asciz "%s::%s: Object not valid."
	.balign 4
.endobj lbl_80534578


.obj lbl_80534594, global
	.asciz "g3d_resuser_ac.h"
	.balign 4
.endobj lbl_80534594


.obj lbl_805345A8, global
	.asciz "NW4R:Failed assertion GetValueType() == ResUserDataItemData::S32"
	.balign 4
.endobj lbl_805345A8


.obj lbl_805345EC, global
	.asciz "g3d_resuser_ac.h"
	.balign 4
.endobj lbl_805345EC


.obj lbl_80534600, global
	.asciz "NW4R:Failed assertion GetValueType() == ResUserDataItemData::F32"
	.balign 4
.endobj lbl_80534600


.obj lbl_80534644, global
	.asciz "g3d_resuser_ac.h"
	.balign 4
.endobj lbl_80534644


.obj lbl_80534658, global
	.asciz "NW4R:Failed assertion GetValueType() == ResUserDataItemData::STRING"
.endobj lbl_80534658


.obj lbl_8053469C, global
	.asciz "g3d_resuser_ac.h"
	.balign 4
.endobj lbl_8053469C


.obj lbl_805346B0, global
	.asciz "NW4R:Failed assertion !((u32)p & 0x3)"
	.balign 4
.endobj lbl_805346B0


.obj lbl_805346D8, global
	.asciz "g3d_resdict_ac.h"
	.balign 4
	.4byte 0
.endobj lbl_805346D8


.obj lbl_805346F0, global
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_8016C98C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_8016CCDC
	.4byte 0
.endobj lbl_805346F0


.obj __vt__cf_CfResObjImpl, global
	.4byte __RTTI__cf_CfResObjImpl
	.4byte 0
	.4byte __dt__cf_CfResObjImpl
	.4byte func_8016CCE0
	.4byte func_800BEA34
	.4byte func_8016C860
	.4byte func_800BE9AC
	.4byte func_8016CD64
	.4byte func_8016C880
	.4byte func_800BC2DC
	.4byte func_800BF2F4
	.4byte func_8016CD68
	.4byte func_8016CCBC
	.4byte func_800BEA38
	.4byte func_800BED64
	.4byte func_800BEE30
	.4byte func_800BC3AC
	.4byte func_800BEC44
	.4byte func_800BED5C
	.4byte func_8016CD5C
	.4byte func_8016C888
	.4byte func_800BF2C4
	.4byte func_800BF2C8
	.4byte func_8016C950
	.4byte func_8016CD54
	.4byte func_800BF30C
.endobj __vt__cf_CfResObjImpl

.obj cf_CfResObjImpl_hierarchy, global
	.4byte __RTTI__cf_CfResImpl
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_CfResObjImpl_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__cf_CfResObjImpl, global
	.4byte cf_CfResObjImpl_typestr
	.4byte cf_CfResObjImpl_hierarchy
.endobj __RTTI__cf_CfResObjImpl

.obj __RTTI__cf_CfResImpl, global
	.4byte cf_CfResImpl_typestr
	.4byte 0
.endobj __RTTI__cf_CfResImpl

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_80669F50, global
	.float 0
	.4byte 0
.endobj float_80669F50

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80666B60, global
	.skip 0x8
.endobj lbl_80666B60

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8000E048", local
.hidden "@etb_8000E048"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8000E048"

.obj "@etb_8000E050", local
.hidden "@etb_8000E050"
	.4byte 0x18880000
	.4byte 0x00000000
.endobj "@etb_8000E050"

.obj "@etb_8000E058", local
.hidden "@etb_8000E058"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000E058"

.obj "@etb_8000E060", local
.hidden "@etb_8000E060"
	.4byte 0x18480000
	.4byte 0x00000000
.endobj "@etb_8000E060"

.obj "@etb_8000E068", local
.hidden "@etb_8000E068"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000E068"

.obj "@etb_8000E070", local
.hidden "@etb_8000E070"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000E070"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80028FF4", local
.hidden "@eti_80028FF4"
	.4byte __ct__cf_CfResObjImpl
	.4byte 0x00000070
	.4byte "@etb_8000E048"
.endobj "@eti_80028FF4"

.obj "@eti_80029000", local
.hidden "@eti_80029000"
	.4byte func_8016C888
	.4byte 0x000000C8
	.4byte "@etb_8000E050"
.endobj "@eti_80029000"

.obj "@eti_8002900C", local
.hidden "@eti_8002900C"
	.4byte func_8016C950
	.4byte 0x0000003C
	.4byte "@etb_8000E058"
.endobj "@eti_8002900C"

.obj "@eti_80029018", local
.hidden "@eti_80029018"
	.4byte func_8016C98C
	.4byte 0x00000330
	.4byte "@etb_8000E060"
.endobj "@eti_80029018"

.obj "@eti_80029024", local
.hidden "@eti_80029024"
	.4byte func_8016CCE0
	.4byte 0x00000074
	.4byte "@etb_8000E068"
.endobj "@eti_80029024"

.obj "@eti_80029030", local
.hidden "@eti_80029030"
	.4byte __dt__cf_CfResObjImpl
	.4byte 0x00000040
	.4byte "@etb_8000E070"
.endobj "@eti_80029030"
