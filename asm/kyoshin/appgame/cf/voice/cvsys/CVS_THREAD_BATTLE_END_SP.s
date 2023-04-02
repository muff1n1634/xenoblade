.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__802AB5F0, global
/* 802AB5F0 00274BB0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802AB5F4 00274BB4  7C 08 02 A6 */	mflr r0
/* 802AB5F8 00274BB8  90 01 00 64 */	stw r0, 0x64(r1)
/* 802AB5FC 00274BBC  BE C1 00 38 */	stmw r22, 0x38(r1)
/* 802AB600 00274BC0  7C 3F 0B 78 */	mr r31, r1
/* 802AB604 00274BC4  4B E0 B5 A1 */	bl func_800B6BA4
/* 802AB608 00274BC8  80 83 00 04 */	lwz r4, 4(r3)
/* 802AB60C 00274BCC  7C 7D 1B 78 */	mr r29, r3
/* 802AB610 00274BD0  3B C0 00 00 */	li r30, 0
/* 802AB614 00274BD4  83 64 00 00 */	lwz r27, 0(r4)
/* 802AB618 00274BD8  48 00 00 44 */	b .L_802AB65C
.L_802AB61C:
/* 802AB61C 00274BDC  83 9B 00 08 */	lwz r28, 8(r27)
/* 802AB620 00274BE0  2C 1C 00 00 */	cmpwi r28, 0
/* 802AB624 00274BE4  41 82 00 08 */	beq .L_802AB62C
/* 802AB628 00274BE8  3B 9C C1 64 */	addi r28, r28, -16028
.L_802AB62C:
/* 802AB62C 00274BEC  81 9C 00 00 */	lwz r12, 0(r28)
/* 802AB630 00274BF0  7F 83 E3 78 */	mr r3, r28
/* 802AB634 00274BF4  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802AB638 00274BF8  7D 89 03 A6 */	mtctr r12
/* 802AB63C 00274BFC  4E 80 04 21 */	bctrl 
/* 802AB640 00274C00  2C 03 00 00 */	cmpwi r3, 0
/* 802AB644 00274C04  40 82 00 14 */	bne .L_802AB658
/* 802AB648 00274C08  57 C0 10 3A */	slwi r0, r30, 2
/* 802AB64C 00274C0C  38 7F 00 08 */	addi r3, r31, 8
/* 802AB650 00274C10  7F 83 01 2E */	stwx r28, r3, r0
/* 802AB654 00274C14  3B DE 00 01 */	addi r30, r30, 1
.L_802AB658:
/* 802AB658 00274C18  83 7B 00 00 */	lwz r27, 0(r27)
.L_802AB65C:
/* 802AB65C 00274C1C  80 1D 00 04 */	lwz r0, 4(r29)
/* 802AB660 00274C20  7C 1B 00 40 */	cmplw r27, r0
/* 802AB664 00274C24  40 82 FF B8 */	bne .L_802AB61C
/* 802AB668 00274C28  2C 1E 00 00 */	cmpwi r30, 0
/* 802AB66C 00274C2C  41 81 00 0C */	bgt .L_802AB678
/* 802AB670 00274C30  38 60 00 00 */	li r3, 0
/* 802AB674 00274C34  48 00 02 70 */	b .L_802AB8E4
.L_802AB678:
/* 802AB678 00274C38  3F A0 80 54 */	lis r29, lbl_8053D890@ha
/* 802AB67C 00274C3C  3B 60 00 00 */	li r27, 0
/* 802AB680 00274C40  3B BD D8 90 */	addi r29, r29, lbl_8053D890@l
/* 802AB684 00274C44  48 00 00 C8 */	b .L_802AB74C
.L_802AB688:
/* 802AB688 00274C48  83 43 00 00 */	lwz r26, 0(r3)
/* 802AB68C 00274C4C  88 1A 00 00 */	lbz r0, 0(r26)
/* 802AB690 00274C50  7C 00 07 74 */	extsb r0, r0
/* 802AB694 00274C54  7C 00 F0 00 */	cmpw r0, r30
/* 802AB698 00274C58  40 82 00 B0 */	bne .L_802AB748
/* 802AB69C 00274C5C  3B 20 00 01 */	li r25, 1
/* 802AB6A0 00274C60  3B 00 00 01 */	li r24, 1
/* 802AB6A4 00274C64  48 00 00 58 */	b .L_802AB6FC
.L_802AB6A8:
/* 802AB6A8 00274C68  3B 9F 00 08 */	addi r28, r31, 8
/* 802AB6AC 00274C6C  3A E0 00 00 */	li r23, 0
/* 802AB6B0 00274C70  3A C0 00 00 */	li r22, 0
/* 802AB6B4 00274C74  48 00 00 2C */	b .L_802AB6E0
.L_802AB6B8:
/* 802AB6B8 00274C78  80 7C 00 00 */	lwz r3, 0(r28)
/* 802AB6BC 00274C7C  4B FF C1 2D */	bl func_802A77E8
/* 802AB6C0 00274C80  7C 1A C0 AE */	lbzx r0, r26, r24
/* 802AB6C4 00274C84  7C 00 07 74 */	extsb r0, r0
/* 802AB6C8 00274C88  7C 00 18 00 */	cmpw r0, r3
/* 802AB6CC 00274C8C  40 82 00 0C */	bne .L_802AB6D8
/* 802AB6D0 00274C90  3A E0 00 01 */	li r23, 1
/* 802AB6D4 00274C94  48 00 00 14 */	b .L_802AB6E8
.L_802AB6D8:
/* 802AB6D8 00274C98  3B 9C 00 04 */	addi r28, r28, 4
/* 802AB6DC 00274C9C  3A D6 00 01 */	addi r22, r22, 1
.L_802AB6E0:
/* 802AB6E0 00274CA0  7C 16 F0 00 */	cmpw r22, r30
/* 802AB6E4 00274CA4  41 80 FF D4 */	blt .L_802AB6B8
.L_802AB6E8:
/* 802AB6E8 00274CA8  2C 17 00 00 */	cmpwi r23, 0
/* 802AB6EC 00274CAC  40 82 00 0C */	bne .L_802AB6F8
/* 802AB6F0 00274CB0  3B 20 00 00 */	li r25, 0
/* 802AB6F4 00274CB4  48 00 00 14 */	b .L_802AB708
.L_802AB6F8:
/* 802AB6F8 00274CB8  3B 18 00 01 */	addi r24, r24, 1
.L_802AB6FC:
/* 802AB6FC 00274CBC  38 1E 00 01 */	addi r0, r30, 1
/* 802AB700 00274CC0  7C 18 00 00 */	cmpw r24, r0
/* 802AB704 00274CC4  41 80 FF A4 */	blt .L_802AB6A8
.L_802AB708:
/* 802AB708 00274CC8  2C 19 00 00 */	cmpwi r25, 0
/* 802AB70C 00274CCC  41 82 00 3C */	beq .L_802AB748
/* 802AB710 00274CD0  82 DD 00 00 */	lwz r22, 0(r29)
/* 802AB714 00274CD4  38 60 00 00 */	li r3, 0
/* 802AB718 00274CD8  7E C4 B3 78 */	mr r4, r22
/* 802AB71C 00274CDC  48 00 00 0C */	b .L_802AB728
.L_802AB720:
/* 802AB720 00274CE0  38 84 00 04 */	addi r4, r4, 4
/* 802AB724 00274CE4  38 63 00 01 */	addi r3, r3, 1
.L_802AB728:
/* 802AB728 00274CE8  80 04 00 04 */	lwz r0, 4(r4)
/* 802AB72C 00274CEC  2C 00 00 00 */	cmpwi r0, 0
/* 802AB730 00274CF0  40 82 FF F0 */	bne .L_802AB720
/* 802AB734 00274CF4  48 18 A7 C9 */	bl mtRand__2mlFi
/* 802AB738 00274CF8  54 60 10 3A */	slwi r0, r3, 2
/* 802AB73C 00274CFC  7C 76 02 14 */	add r3, r22, r0
/* 802AB740 00274D00  83 63 00 04 */	lwz r27, 4(r3)
/* 802AB744 00274D04  48 00 00 14 */	b .L_802AB758
.L_802AB748:
/* 802AB748 00274D08  3B BD 00 04 */	addi r29, r29, 4
.L_802AB74C:
/* 802AB74C 00274D0C  80 7D 00 00 */	lwz r3, 0(r29)
/* 802AB750 00274D10  2C 03 00 00 */	cmpwi r3, 0
/* 802AB754 00274D14  40 82 FF 34 */	bne .L_802AB688
.L_802AB758:
/* 802AB758 00274D18  2C 1B 00 00 */	cmpwi r27, 0
/* 802AB75C 00274D1C  40 82 00 0C */	bne .L_802AB768
/* 802AB760 00274D20  38 60 00 00 */	li r3, 0
/* 802AB764 00274D24  48 00 01 80 */	b .L_802AB8E4
.L_802AB768:
/* 802AB768 00274D28  4B FF C9 D9 */	bl func_802A8140
/* 802AB76C 00274D2C  2C 03 00 00 */	cmpwi r3, 0
/* 802AB770 00274D30  41 82 00 18 */	beq .L_802AB788
/* 802AB774 00274D34  38 02 B2 D8 */	addi r0, r2, lbl_8066B658@sda21
/* 802AB778 00274D38  7C 1B 00 40 */	cmplw r27, r0
/* 802AB77C 00274D3C  40 82 00 0C */	bne .L_802AB788
/* 802AB780 00274D40  38 60 00 00 */	li r3, 0
/* 802AB784 00274D44  48 00 01 60 */	b .L_802AB8E4
.L_802AB788:
/* 802AB788 00274D48  38 60 00 46 */	li r3, 0x46
/* 802AB78C 00274D4C  38 80 00 01 */	li r4, 1
/* 802AB790 00274D50  4B FF 7B 7D */	bl func_802A330C
/* 802AB794 00274D54  2C 03 00 00 */	cmpwi r3, 0
/* 802AB798 00274D58  40 82 00 0C */	bne .L_802AB7A4
/* 802AB79C 00274D5C  38 60 00 00 */	li r3, 0
/* 802AB7A0 00274D60  48 00 01 44 */	b .L_802AB8E4
.L_802AB7A4:
/* 802AB7A4 00274D64  38 60 00 34 */	li r3, 0x34
/* 802AB7A8 00274D68  4B FF 7D 3D */	bl func_802A34E4
/* 802AB7AC 00274D6C  2C 03 00 00 */	cmpwi r3, 0
/* 802AB7B0 00274D70  7C 7D 1B 78 */	mr r29, r3
/* 802AB7B4 00274D74  40 82 00 0C */	bne .L_802AB7C0
/* 802AB7B8 00274D78  38 60 00 00 */	li r3, 0
/* 802AB7BC 00274D7C  48 00 01 28 */	b .L_802AB8E4
.L_802AB7C0:
/* 802AB7C0 00274D80  41 82 01 00 */	beq .L_802AB8C0
/* 802AB7C4 00274D84  90 3F 00 2C */	stw r1, 0x2c(r31)
/* 802AB7C8 00274D88  4B FF 82 B9 */	bl __ct__cf_CVS_THREAD
/* 802AB7CC 00274D8C  3C 60 80 54 */	lis r3, __vt__cf_CVS_THREAD_BATTLE_END_SP@ha
/* 802AB7D0 00274D90  2C 9E 00 00 */	cmpwi cr1, r30, 0
/* 802AB7D4 00274D94  38 63 D9 48 */	addi r3, r3, __vt__cf_CVS_THREAD_BATTLE_END_SP@l
/* 802AB7D8 00274D98  90 7D 00 1C */	stw r3, 0x1c(r29)
/* 802AB7DC 00274D9C  38 80 00 00 */	li r4, 0
/* 802AB7E0 00274DA0  93 DD 00 2C */	stw r30, 0x2c(r29)
/* 802AB7E4 00274DA4  93 7D 00 30 */	stw r27, 0x30(r29)
/* 802AB7E8 00274DA8  40 85 00 D8 */	ble cr1, .L_802AB8C0
/* 802AB7EC 00274DAC  2C 1E 00 08 */	cmpwi r30, 8
/* 802AB7F0 00274DB0  38 BE FF F8 */	addi r5, r30, -8
/* 802AB7F4 00274DB4  40 81 00 88 */	ble .L_802AB87C
/* 802AB7F8 00274DB8  38 C0 00 00 */	li r6, 0
/* 802AB7FC 00274DBC  41 84 00 18 */	blt cr1, .L_802AB814
/* 802AB800 00274DC0  3C 60 80 00 */	lis r3, 0x7FFFFFFE@ha
/* 802AB804 00274DC4  38 03 FF FE */	addi r0, r3, 0x7FFFFFFE@l
/* 802AB808 00274DC8  7C 1E 00 00 */	cmpw r30, r0
/* 802AB80C 00274DCC  41 81 00 08 */	bgt .L_802AB814
/* 802AB810 00274DD0  38 C0 00 01 */	li r6, 1
.L_802AB814:
/* 802AB814 00274DD4  2C 06 00 00 */	cmpwi r6, 0
/* 802AB818 00274DD8  41 82 00 64 */	beq .L_802AB87C
/* 802AB81C 00274DDC  7F A6 EB 78 */	mr r6, r29
/* 802AB820 00274DE0  38 7F 00 08 */	addi r3, r31, 8
/* 802AB824 00274DE4  48 00 00 50 */	b .L_802AB874
.L_802AB828:
/* 802AB828 00274DE8  80 03 00 00 */	lwz r0, 0(r3)
/* 802AB82C 00274DEC  38 84 00 08 */	addi r4, r4, 8
/* 802AB830 00274DF0  90 06 00 20 */	stw r0, 0x20(r6)
/* 802AB834 00274DF4  80 03 00 04 */	lwz r0, 4(r3)
/* 802AB838 00274DF8  90 06 00 24 */	stw r0, 0x24(r6)
/* 802AB83C 00274DFC  80 03 00 08 */	lwz r0, 8(r3)
/* 802AB840 00274E00  90 06 00 28 */	stw r0, 0x28(r6)
/* 802AB844 00274E04  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802AB848 00274E08  90 06 00 2C */	stw r0, 0x2c(r6)
/* 802AB84C 00274E0C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802AB850 00274E10  90 06 00 30 */	stw r0, 0x30(r6)
/* 802AB854 00274E14  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802AB858 00274E18  90 06 00 34 */	stw r0, 0x34(r6)
/* 802AB85C 00274E1C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802AB860 00274E20  90 06 00 38 */	stw r0, 0x38(r6)
/* 802AB864 00274E24  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802AB868 00274E28  38 63 00 20 */	addi r3, r3, 0x20
/* 802AB86C 00274E2C  90 06 00 3C */	stw r0, 0x3c(r6)
/* 802AB870 00274E30  38 C6 00 20 */	addi r6, r6, 0x20
.L_802AB874:
/* 802AB874 00274E34  7C 04 28 00 */	cmpw r4, r5
/* 802AB878 00274E38  41 80 FF B0 */	blt .L_802AB828
.L_802AB87C:
/* 802AB87C 00274E3C  54 80 10 3A */	slwi r0, r4, 2
/* 802AB880 00274E40  38 7F 00 08 */	addi r3, r31, 8
/* 802AB884 00274E44  7C 63 02 14 */	add r3, r3, r0
/* 802AB888 00274E48  7C BD 02 14 */	add r5, r29, r0
/* 802AB88C 00274E4C  48 00 00 18 */	b .L_802AB8A4
.L_802AB890:
/* 802AB890 00274E50  80 03 00 00 */	lwz r0, 0(r3)
/* 802AB894 00274E54  38 84 00 01 */	addi r4, r4, 1
/* 802AB898 00274E58  90 05 00 20 */	stw r0, 0x20(r5)
/* 802AB89C 00274E5C  38 A5 00 04 */	addi r5, r5, 4
/* 802AB8A0 00274E60  38 63 00 04 */	addi r3, r3, 4
.L_802AB8A4:
/* 802AB8A4 00274E64  7C 04 F0 00 */	cmpw r4, r30
/* 802AB8A8 00274E68  41 80 FF E8 */	blt .L_802AB890
/* 802AB8AC 00274E6C  48 00 00 14 */	b .L_802AB8C0
/* 802AB8B0 00274E70  38 60 00 00 */	li r3, 0
/* 802AB8B4 00274E74  38 80 00 00 */	li r4, 0
/* 802AB8B8 00274E78  38 A0 00 00 */	li r5, 0
/* 802AB8BC 00274E7C  48 01 03 01 */	bl __throw
.L_802AB8C0:
/* 802AB8C0 00274E80  3C A0 80 54 */	lis r5, lbl_8053D924@ha
/* 802AB8C4 00274E84  7F A3 EB 78 */	mr r3, r29
/* 802AB8C8 00274E88  38 A5 D9 24 */	addi r5, r5, lbl_8053D924@l
/* 802AB8CC 00274E8C  80 05 00 04 */	lwz r0, 4(r5)
/* 802AB8D0 00274E90  80 85 00 00 */	lwz r4, 0(r5)
/* 802AB8D4 00274E94  90 9D 00 00 */	stw r4, 0(r29)
/* 802AB8D8 00274E98  90 1D 00 04 */	stw r0, 4(r29)
/* 802AB8DC 00274E9C  80 05 00 08 */	lwz r0, 8(r5)
/* 802AB8E0 00274EA0  90 1D 00 08 */	stw r0, 8(r29)
.L_802AB8E4:
/* 802AB8E4 00274EA4  7F EA FB 78 */	mr r10, r31
/* 802AB8E8 00274EA8  BA CA 00 38 */	lmw r22, 0x38(r10)
/* 802AB8EC 00274EAC  81 41 00 00 */	lwz r10, 0(r1)
/* 802AB8F0 00274EB0  80 0A 00 04 */	lwz r0, 4(r10)
/* 802AB8F4 00274EB4  7D 41 53 78 */	mr r1, r10
/* 802AB8F8 00274EB8  7C 08 03 A6 */	mtlr r0
/* 802AB8FC 00274EBC  4E 80 00 20 */	blr 
.endfn __ct__802AB5F0

.fn func_802AB900, global
/* 802AB900 00274EC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AB904 00274EC4  7C 08 02 A6 */	mflr r0
/* 802AB908 00274EC8  3C A0 80 54 */	lis r5, lbl_8053D930@ha
/* 802AB90C 00274ECC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AB910 00274ED0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AB914 00274ED4  7C 7F 1B 78 */	mr r31, r3
/* 802AB918 00274ED8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AB91C 00274EDC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802AB920 00274EE0  93 81 00 10 */	stw r28, 0x10(r1)
/* 802AB924 00274EE4  84 85 D9 30 */	lwzu r4, lbl_8053D930@l(r5)
/* 802AB928 00274EE8  80 05 00 04 */	lwz r0, 4(r5)
/* 802AB92C 00274EEC  90 03 00 04 */	stw r0, 4(r3)
/* 802AB930 00274EF0  90 83 00 00 */	stw r4, 0(r3)
/* 802AB934 00274EF4  80 05 00 08 */	lwz r0, 8(r5)
/* 802AB938 00274EF8  90 03 00 08 */	stw r0, 8(r3)
.L_802AB93C:
/* 802AB93C 00274EFC  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802AB940 00274F00  8B C3 00 00 */	lbz r30, 0(r3)
/* 802AB944 00274F04  7F DE 07 75 */	extsb. r30, r30
/* 802AB948 00274F08  41 81 00 0C */	bgt .L_802AB954
/* 802AB94C 00274F0C  3B A0 00 00 */	li r29, 0
/* 802AB950 00274F10  48 00 00 50 */	b .L_802AB9A0
.L_802AB954:
/* 802AB954 00274F14  7F FC FB 78 */	mr r28, r31
/* 802AB958 00274F18  3B A0 00 00 */	li r29, 0
/* 802AB95C 00274F1C  48 00 00 34 */	b .L_802AB990
.L_802AB960:
/* 802AB960 00274F20  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 802AB964 00274F24  2C 03 00 00 */	cmpwi r3, 0
/* 802AB968 00274F28  41 82 00 20 */	beq .L_802AB988
/* 802AB96C 00274F2C  4B FF BE 7D */	bl func_802A77E8
/* 802AB970 00274F30  7C 1E 18 00 */	cmpw r30, r3
/* 802AB974 00274F34  40 82 00 14 */	bne .L_802AB988
/* 802AB978 00274F38  57 A0 10 3A */	slwi r0, r29, 2
/* 802AB97C 00274F3C  7C 7F 02 14 */	add r3, r31, r0
/* 802AB980 00274F40  83 A3 00 20 */	lwz r29, 0x20(r3)
/* 802AB984 00274F44  48 00 00 1C */	b .L_802AB9A0
.L_802AB988:
/* 802AB988 00274F48  3B 9C 00 04 */	addi r28, r28, 4
/* 802AB98C 00274F4C  3B BD 00 01 */	addi r29, r29, 1
.L_802AB990:
/* 802AB990 00274F50  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 802AB994 00274F54  7C 1D 00 00 */	cmpw r29, r0
/* 802AB998 00274F58  41 80 FF C8 */	blt .L_802AB960
/* 802AB99C 00274F5C  3B A0 00 00 */	li r29, 0
.L_802AB9A0:
/* 802AB9A0 00274F60  2C 1D 00 00 */	cmpwi r29, 0
/* 802AB9A4 00274F64  40 82 00 1C */	bne .L_802AB9C0
/* 802AB9A8 00274F68  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802AB9AC 00274F6C  7F E3 FB 78 */	mr r3, r31
/* 802AB9B0 00274F70  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AB9B4 00274F74  7D 89 03 A6 */	mtctr r12
/* 802AB9B8 00274F78  4E 80 04 21 */	bctrl 
/* 802AB9BC 00274F7C  48 00 00 94 */	b .L_802ABA50
.L_802AB9C0:
/* 802AB9C0 00274F80  81 9D 00 00 */	lwz r12, 0(r29)
/* 802AB9C4 00274F84  7F A3 EB 78 */	mr r3, r29
/* 802AB9C8 00274F88  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802AB9CC 00274F8C  7D 89 03 A6 */	mtctr r12
/* 802AB9D0 00274F90  4E 80 04 21 */	bctrl 
/* 802AB9D4 00274F94  2C 03 00 00 */	cmpwi r3, 0
/* 802AB9D8 00274F98  40 82 00 54 */	bne .L_802ABA2C
/* 802AB9DC 00274F9C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802AB9E0 00274FA0  88 63 00 01 */	lbz r3, 1(r3)
/* 802AB9E4 00274FA4  7C 63 07 74 */	extsb r3, r3
/* 802AB9E8 00274FA8  48 01 22 85 */	bl labs
/* 802AB9EC 00274FAC  2C 1D 00 00 */	cmpwi r29, 0
/* 802AB9F0 00274FB0  7C 65 1B 78 */	mr r5, r3
/* 802AB9F4 00274FB4  41 82 00 08 */	beq .L_802AB9FC
/* 802AB9F8 00274FB8  3B BD 3E 9C */	addi r29, r29, 0x3e9c
.L_802AB9FC:
/* 802AB9FC 00274FBC  7F E3 FB 78 */	mr r3, r31
/* 802ABA00 00274FC0  7F A4 EB 78 */	mr r4, r29
/* 802ABA04 00274FC4  38 A5 0C E4 */	addi r5, r5, 0xce4
/* 802ABA08 00274FC8  4B FF 82 3D */	bl func_802A3C44
/* 802ABA0C 00274FCC  2C 03 00 00 */	cmpwi r3, 0
/* 802ABA10 00274FD0  40 82 00 1C */	bne .L_802ABA2C
/* 802ABA14 00274FD4  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802ABA18 00274FD8  7F E3 FB 78 */	mr r3, r31
/* 802ABA1C 00274FDC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802ABA20 00274FE0  7D 89 03 A6 */	mtctr r12
/* 802ABA24 00274FE4  4E 80 04 21 */	bctrl 
/* 802ABA28 00274FE8  48 00 00 28 */	b .L_802ABA50
.L_802ABA2C:
/* 802ABA2C 00274FEC  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802ABA30 00274FF0  38 63 00 02 */	addi r3, r3, 2
/* 802ABA34 00274FF4  90 7F 00 30 */	stw r3, 0x30(r31)
/* 802ABA38 00274FF8  88 03 00 00 */	lbz r0, 0(r3)
/* 802ABA3C 00274FFC  7C 00 07 75 */	extsb. r0, r0
/* 802ABA40 00275000  41 82 00 10 */	beq .L_802ABA50
/* 802ABA44 00275004  88 03 00 01 */	lbz r0, 1(r3)
/* 802ABA48 00275008  7C 00 07 75 */	extsb. r0, r0
/* 802ABA4C 0027500C  40 81 FE F0 */	ble .L_802AB93C
.L_802ABA50:
/* 802ABA50 00275010  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802ABA54 00275014  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802ABA58 00275018  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802ABA5C 0027501C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802ABA60 00275020  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802ABA64 00275024  7C 08 03 A6 */	mtlr r0
/* 802ABA68 00275028  38 21 00 20 */	addi r1, r1, 0x20
/* 802ABA6C 0027502C  4E 80 00 20 */	blr 
.endfn func_802AB900

.fn func_802ABA70, global
/* 802ABA70 00275030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802ABA74 00275034  7C 08 02 A6 */	mflr r0
/* 802ABA78 00275038  90 01 00 14 */	stw r0, 0x14(r1)
/* 802ABA7C 0027503C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802ABA80 00275040  7C 7F 1B 78 */	mr r31, r3
/* 802ABA84 00275044  4B FF 84 05 */	bl func_802A3E88
/* 802ABA88 00275048  2C 03 00 00 */	cmpwi r3, 0
/* 802ABA8C 0027504C  40 82 00 20 */	bne .L_802ABAAC
/* 802ABA90 00275050  3C 80 80 54 */	lis r4, lbl_8053D93C@ha
/* 802ABA94 00275054  84 64 D9 3C */	lwzu r3, lbl_8053D93C@l(r4)
/* 802ABA98 00275058  80 04 00 04 */	lwz r0, 4(r4)
/* 802ABA9C 0027505C  90 1F 00 04 */	stw r0, 4(r31)
/* 802ABAA0 00275060  90 7F 00 00 */	stw r3, 0(r31)
/* 802ABAA4 00275064  80 04 00 08 */	lwz r0, 8(r4)
/* 802ABAA8 00275068  90 1F 00 08 */	stw r0, 8(r31)
.L_802ABAAC:
/* 802ABAAC 0027506C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802ABAB0 00275070  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802ABAB4 00275074  7C 08 03 A6 */	mtlr r0
/* 802ABAB8 00275078  38 21 00 10 */	addi r1, r1, 0x10
/* 802ABABC 0027507C  4E 80 00 20 */	blr 
.endfn func_802ABA70

.fn func_802ABAC0, global
/* 802ABAC0 00275080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802ABAC4 00275084  7C 08 02 A6 */	mflr r0
/* 802ABAC8 00275088  90 01 00 14 */	stw r0, 0x14(r1)
/* 802ABACC 0027508C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802ABAD0 00275090  7C 9F 23 78 */	mr r31, r4
/* 802ABAD4 00275094  93 C1 00 08 */	stw r30, 8(r1)
/* 802ABAD8 00275098  7C 7E 1B 78 */	mr r30, r3
/* 802ABADC 0027509C  4B FF 81 11 */	bl func_802A3BEC
/* 802ABAE0 002750A0  7F C5 F3 78 */	mr r5, r30
/* 802ABAE4 002750A4  38 C0 00 00 */	li r6, 0
/* 802ABAE8 002750A8  38 60 00 00 */	li r3, 0
/* 802ABAEC 002750AC  48 00 00 28 */	b .L_802ABB14
.L_802ABAF0:
/* 802ABAF0 002750B0  80 85 00 20 */	lwz r4, 0x20(r5)
/* 802ABAF4 002750B4  2C 04 00 00 */	cmpwi r4, 0
/* 802ABAF8 002750B8  41 82 00 08 */	beq .L_802ABB00
/* 802ABAFC 002750BC  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802ABB00:
/* 802ABB00 002750C0  7C 04 F8 40 */	cmplw r4, r31
/* 802ABB04 002750C4  40 82 00 08 */	bne .L_802ABB0C
/* 802ABB08 002750C8  90 65 00 20 */	stw r3, 0x20(r5)
.L_802ABB0C:
/* 802ABB0C 002750CC  38 A5 00 04 */	addi r5, r5, 4
/* 802ABB10 002750D0  38 C6 00 01 */	addi r6, r6, 1
.L_802ABB14:
/* 802ABB14 002750D4  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 802ABB18 002750D8  7C 06 00 00 */	cmpw r6, r0
/* 802ABB1C 002750DC  41 80 FF D4 */	blt .L_802ABAF0
/* 802ABB20 002750E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802ABB24 002750E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802ABB28 002750E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802ABB2C 002750EC  7C 08 03 A6 */	mtlr r0
/* 802ABB30 002750F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802ABB34 002750F4  4E 80 00 20 */	blr 
.endfn func_802ABAC0

.fn func_802ABB38, global
/* 802ABB38 002750F8  38 60 00 46 */	li r3, 0x46
/* 802ABB3C 002750FC  4E 80 00 20 */	blr 
.endfn func_802ABB38

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_8050BFE8, global
	.4byte 0x01040203
	.4byte 0x01050204
	.4byte 0
.endobj lbl_8050BFE8

.obj lbl_8050BFF4, global
	.4byte 0x02060108
	.4byte 0x04010109
	.4byte 0x02F90000
.endobj lbl_8050BFF4

.obj lbl_8050C000, global
	.4byte 0x02080501
	.4byte 0x0209010A
	.4byte 0
.endobj lbl_8050C000

.obj lbl_8050C00C, global
	.4byte 0x0601020A
	.4byte 0x0602020B
	.4byte 0x010B0000
.endobj lbl_8050C00C

.obj lbl_8050C018, global
	.4byte 0x010C0701
	.4byte 0x0702020C
	.4byte 0x010D0000
.endobj lbl_8050C018

.obj lbl_8050C024, global
	.4byte 0x04020303
	.4byte 0x010E0304
	.4byte 0x010F0305
	.4byte 0
.endobj lbl_8050C024

.obj lbl_8050C034, global
	.4byte 0x011003FA
	.4byte 0x05020111
	.4byte 0x03F90503
	.4byte 0
.endobj lbl_8050C034

.obj lbl_8050C044, global
	.4byte 0x06030308
	.4byte 0x06040112
	.4byte 0x0605010A
	.4byte 0x03F70000
.endobj lbl_8050C044

.obj lbl_8050C054, global
	.4byte 0x0113030A
	.4byte 0x07030114
	.4byte 0x03090704
	.4byte 0
.endobj lbl_8050C054

.obj lbl_8050C064, global
	.4byte 0x01150403
	.4byte 0x01160504
	.4byte 0
.endobj lbl_8050C064

.obj lbl_8050C070, global
	.4byte 0x01180403
	.4byte 0x01160705
	.4byte 0
.endobj lbl_8050C070

.obj lbl_8050C07C, global
	.4byte 0x06070505
	.4byte 0x06080119
	.4byte 0
.endobj lbl_8050C07C

.obj lbl_8050C088, global
	.4byte 0x0405030B
	.4byte 0x020E0406
	.4byte 0x020F030C
	.4byte 0
.endobj lbl_8050C088

.obj lbl_8050C098, global
	.4byte 0x060A030E
	.4byte 0x0211060B
	.4byte 0x0212030F
	.4byte 0
.endobj lbl_8050C098

.obj lbl_8050C0A8, global
	.4byte 0x02130310
	.4byte 0x07080214
	.4byte 0
.endobj lbl_8050C0A8

.obj lbl_8050C0B4, global
	.4byte 0x02150407
	.4byte 0x05090216
	.4byte 0
.endobj lbl_8050C0B4

.obj lbl_8050C0C0, global
	.4byte 0x0219050A
	.4byte 0x060D050B
	.4byte 0
.endobj lbl_8050C0C0

.obj lbl_8050C0CC, global
	.4byte 0x021A050C
	.4byte 0x070A021B
	.4byte 0
.endobj lbl_8050C0CC

.obj lbl_8050C0D8, global
	.4byte 0x070B060E
	.4byte 0x021C060F
	.4byte 0x021D0000
.endobj lbl_8050C0D8

.obj lbl_8050C0E4, global
	.4byte 0x0610040B
	.4byte 0x06110312
	.4byte 0
.endobj lbl_8050C0E4

.obj lbl_8050C0F0, global
	.4byte 0x0613040D
	.4byte 0x050E0614
	.4byte 0
.endobj lbl_8050C0F0

.obj lbl_8050C0FC, global
	.4byte 0x06160710
	.4byte 0x06170510
	.4byte 0
.endobj lbl_8050C0FC

.obj cf_CVS_THREAD_BATTLE_END_SP_typestr, global
	.asciz "cf::CVS_THREAD_BATTLE_END_SP"
	.balign 4
.endobj cf_CVS_THREAD_BATTLE_END_SP_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8053D6D8, global
	.4byte lbl_8066B560
	.4byte lbl_8066B564
	.4byte lbl_8066B56C
	.4byte lbl_8050BFE8
	.4byte 0
.endobj lbl_8053D6D8

.obj lbl_8053D6EC, global
	.4byte lbl_8066B574
	.4byte lbl_8066B578
	.4byte 0
.endobj lbl_8053D6EC

.obj lbl_8053D6F8, global
	.4byte lbl_8066B580
	.4byte lbl_8066B584
	.4byte 0
.endobj lbl_8053D6F8

.obj lbl_8053D704, global
	.4byte lbl_8066B58C
	.4byte lbl_8050BFF4
	.4byte 0
.endobj lbl_8053D704

.obj lbl_8053D710, global
	.4byte lbl_8066B590
	.4byte lbl_8050C000
	.4byte 0
.endobj lbl_8053D710

.obj lbl_8053D71C, global
	.4byte lbl_8066B594
	.4byte lbl_8050C00C
	.4byte 0
.endobj lbl_8053D71C

.obj lbl_8053D728, global
	.4byte lbl_8066B598
	.4byte lbl_8050C018
	.4byte 0
.endobj lbl_8053D728

.obj lbl_8053D734, global
	.4byte lbl_8066B59C
	.4byte lbl_8050C024
	.4byte 0
.endobj lbl_8053D734

.obj lbl_8053D740, global
	.4byte lbl_8066B5A0
	.4byte lbl_8050C034
	.4byte 0
.endobj lbl_8053D740

.obj lbl_8053D74C, global
	.4byte lbl_8066B5A4
	.4byte lbl_8050C044
	.4byte 0
.endobj lbl_8053D74C

.obj lbl_8053D758, global
	.4byte lbl_8066B5A8
	.4byte lbl_8050C054
	.4byte 0
.endobj lbl_8053D758

.obj lbl_8053D764, global
	.4byte lbl_8066B5AC
	.4byte lbl_8050C064
	.4byte 0
.endobj lbl_8053D764

.obj lbl_8053D770, global
	.4byte lbl_8066B5B0
	.4byte lbl_8066B5B4
	.4byte 0
.endobj lbl_8053D770

.obj lbl_8053D77C, global
	.4byte lbl_8066B5BC
	.4byte lbl_8050C070
	.4byte 0
.endobj lbl_8053D77C

.obj lbl_8053D788, global
	.4byte lbl_8066B5C0
	.4byte lbl_8050C07C
	.4byte 0
.endobj lbl_8053D788

.obj lbl_8053D794, global
	.4byte lbl_8066B5C4
	.4byte lbl_8066B5C8
	.4byte 0
.endobj lbl_8053D794

.obj lbl_8053D7A0, global
	.4byte lbl_8066B5D0
	.4byte lbl_8066B5D4
	.4byte 0
.endobj lbl_8053D7A0

.obj lbl_8053D7AC, global
	.4byte lbl_8066B5DC
	.4byte lbl_8066B5E0
	.4byte 0
.endobj lbl_8053D7AC

.obj lbl_8053D7B8, global
	.4byte lbl_8066B5E8
	.4byte lbl_8050C088
	.4byte 0
.endobj lbl_8053D7B8

.obj lbl_8053D7C4, global
	.4byte lbl_8066B5EC
	.4byte lbl_8066B5F0
	.4byte 0
.endobj lbl_8053D7C4

.obj lbl_8053D7D0, global
	.4byte lbl_8066B5F8
	.4byte lbl_8050C098
	.4byte 0
.endobj lbl_8053D7D0

.obj lbl_8053D7DC, global
	.4byte lbl_8066B5FC
	.4byte lbl_8050C0A8
	.4byte 0
.endobj lbl_8053D7DC

.obj lbl_8053D7E8, global
	.4byte lbl_8066B600
	.4byte lbl_8050C0B4
	.4byte 0
.endobj lbl_8053D7E8

.obj lbl_8053D7F4, global
	.4byte lbl_8066B604
	.4byte lbl_8066B608
	.4byte 0
.endobj lbl_8053D7F4

.obj lbl_8053D800, global
	.4byte lbl_8066B610
	.4byte lbl_8066B614
	.4byte 0
.endobj lbl_8053D800

.obj lbl_8053D80C, global
	.4byte lbl_8066B61C
	.4byte lbl_8050C0C0
	.4byte 0
.endobj lbl_8053D80C

.obj lbl_8053D818, global
	.4byte lbl_8066B620
	.4byte lbl_8050C0CC
	.4byte 0
.endobj lbl_8053D818

.obj lbl_8053D824, global
	.4byte lbl_8066B624
	.4byte lbl_8050C0D8
	.4byte 0
.endobj lbl_8053D824

.obj lbl_8053D830, global
	.4byte lbl_8066B628
	.4byte lbl_8066B62C
	.4byte 0
.endobj lbl_8053D830

.obj lbl_8053D83C, global
	.4byte lbl_8066B634
	.4byte lbl_8050C0E4
	.4byte 0
.endobj lbl_8053D83C

.obj lbl_8053D848, global
	.4byte lbl_8066B638
	.4byte lbl_8066B63C
	.4byte 0
.endobj lbl_8053D848

.obj lbl_8053D854, global
	.4byte lbl_8066B644
	.4byte lbl_8066B648
	.4byte 0
.endobj lbl_8053D854

.obj lbl_8053D860, global
	.4byte lbl_8066B650
	.4byte lbl_8050C0F0
	.4byte 0
.endobj lbl_8053D860

.obj lbl_8053D86C, global
	.4byte lbl_8066B654
	.4byte lbl_8066B658
	.4byte 0
.endobj lbl_8053D86C

.obj lbl_8053D878, global
	.4byte lbl_8066B660
	.4byte lbl_8066B664
	.4byte 0
.endobj lbl_8053D878

.obj lbl_8053D884, global
	.4byte lbl_8066B66C
	.4byte lbl_8050C0FC
	.4byte 0
.endobj lbl_8053D884


.obj lbl_8053D890, global
	.4byte lbl_8053D6D8
	.4byte lbl_8053D6EC
	.4byte lbl_8053D6F8
	.4byte lbl_8053D704
	.4byte lbl_8053D710
	.4byte lbl_8053D71C
	.4byte lbl_8053D728
	.4byte lbl_8053D734
	.4byte lbl_8053D740
	.4byte lbl_8053D74C
	.4byte lbl_8053D758
	.4byte lbl_8053D764
	.4byte lbl_8053D770
	.4byte lbl_8053D77C
	.4byte lbl_8053D788
	.4byte lbl_8053D794
	.4byte lbl_8053D7A0
	.4byte lbl_8053D7AC
	.4byte lbl_8053D7B8
	.4byte lbl_8053D7C4
	.4byte lbl_8053D7D0
	.4byte lbl_8053D7DC
	.4byte lbl_8053D7E8
	.4byte lbl_8053D7F4
	.4byte lbl_8053D800
	.4byte lbl_8053D80C
	.4byte lbl_8053D818
	.4byte lbl_8053D824
	.4byte lbl_8053D830
	.4byte lbl_8053D83C
	.4byte lbl_8053D848
	.4byte lbl_8053D854
	.4byte lbl_8053D860
	.4byte lbl_8053D86C
	.4byte lbl_8053D878
	.4byte lbl_8053D884
	.4byte 0
.endobj lbl_8053D890


.obj lbl_8053D924, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802AB900
.endobj lbl_8053D924

.obj lbl_8053D930, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802ABA70
.endobj lbl_8053D930

.obj lbl_8053D93C, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802AB900
.endobj lbl_8053D93C


.obj __vt__cf_CVS_THREAD_BATTLE_END_SP, global
	.4byte __RTTI__cf_CVS_THREAD_BATTLE_END_SP
	.4byte 0
	.4byte func_802A3B50
	.4byte func_802ABAC0
	.4byte func_802ABB38
	.4byte func_802A1EA0
	.4byte func_802A3740
.endobj __vt__cf_CVS_THREAD_BATTLE_END_SP

.obj cf_CVS_THREAD_BATTLE_END_SP_hierarchy, global
	.4byte __RTTI__cf_CVS_THREAD
	.4byte 0
	.4byte 0
.endobj cf_CVS_THREAD_BATTLE_END_SP_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__cf_CVS_THREAD_BATTLE_END_SP, global
	.4byte cf_CVS_THREAD_BATTLE_END_SP_typestr
	.4byte cf_CVS_THREAD_BATTLE_END_SP_hierarchy
.endobj __RTTI__cf_CVS_THREAD_BATTLE_END_SP

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj lbl_8066B560, global
	.4byte 0x02010200
.endobj lbl_8066B560

.obj lbl_8066B564, global
	.4byte 0x01010201
	.4byte 0
.endobj lbl_8066B564

.obj lbl_8066B56C, global
	.4byte 0x01020202
	.4byte 0x01030000
.endobj lbl_8066B56C

.obj lbl_8066B574, global
	.4byte 0x02010300
.endobj lbl_8066B574

.obj lbl_8066B578, global
	.4byte 0x01060301
	.4byte 0
.endobj lbl_8066B578

.obj lbl_8066B580, global
	.4byte 0x03010203
.endobj lbl_8066B580

.obj lbl_8066B584, global
	.4byte 0x02050302
	.4byte 0x01070000
.endobj lbl_8066B584

.obj lbl_8066B58C, global
	.4byte 0x03010204
.endobj lbl_8066B58C

.obj lbl_8066B590, global
	.4byte 0x03010205
.endobj lbl_8066B590

.obj lbl_8066B594, global
	.4byte 0x03010206
.endobj lbl_8066B594

.obj lbl_8066B598, global
	.4byte 0x03010207
.endobj lbl_8066B598

.obj lbl_8066B59C, global
	.4byte 0x03010304
.endobj lbl_8066B59C

.obj lbl_8066B5A0, global
	.4byte 0x03010305
.endobj lbl_8066B5A0

.obj lbl_8066B5A4, global
	.4byte 0x03010306
.endobj lbl_8066B5A4

.obj lbl_8066B5A8, global
	.4byte 0x03010307
.endobj lbl_8066B5A8

.obj lbl_8066B5AC, global
	.4byte 0x03010405
.endobj lbl_8066B5AC

.obj lbl_8066B5B0, global
	.4byte 0x03010406
.endobj lbl_8066B5B0

.obj lbl_8066B5B4, global
	.4byte 0x04040606
	.4byte 0x01170000
.endobj lbl_8066B5B4

.obj lbl_8066B5BC, global
	.4byte 0x03010407
.endobj lbl_8066B5BC

.obj lbl_8066B5C0, global
	.4byte 0x03010506
.endobj lbl_8066B5C0

.obj lbl_8066B5C4, global
	.4byte 0x03010507
.endobj lbl_8066B5C4

.obj lbl_8066B5C8, global
	.4byte 0x0706011A
	.4byte 0x05060000
.endobj lbl_8066B5C8

.obj lbl_8066B5D0, global
	.4byte 0x03010607
.endobj lbl_8066B5D0

.obj lbl_8066B5D4, global
	.4byte 0x06090707
	.4byte 0x011B0000
.endobj lbl_8066B5D4

.obj lbl_8066B5DC, global
	.4byte 0x02030500
.endobj lbl_8066B5DC

.obj lbl_8066B5E0, global
	.4byte 0x020D0507
	.4byte 0
.endobj lbl_8066B5E0

.obj lbl_8066B5E8, global
	.4byte 0x03020304
.endobj lbl_8066B5E8

.obj lbl_8066B5EC, global
	.4byte 0x03020305
.endobj lbl_8066B5EC

.obj lbl_8066B5F0, global
	.4byte 0x02100508
	.4byte 0x030D0000
.endobj lbl_8066B5F0

.obj lbl_8066B5F8, global
	.4byte 0x03020306
.endobj lbl_8066B5F8

.obj lbl_8066B5FC, global
	.4byte 0x03020307
.endobj lbl_8066B5FC

.obj lbl_8066B600, global
	.4byte 0x03020405
.endobj lbl_8066B600

.obj lbl_8066B604, global
	.4byte 0x03020406
.endobj lbl_8066B604

.obj lbl_8066B608, global
	.4byte 0x0217060C
	.4byte 0x04080000
.endobj lbl_8066B608

.obj lbl_8066B610, global
	.4byte 0x03020407
.endobj lbl_8066B610

.obj lbl_8066B614, global
	.4byte 0x02180709
	.4byte 0x04090000
.endobj lbl_8066B614

.obj lbl_8066B61C, global
	.4byte 0x03020506
.endobj lbl_8066B61C

.obj lbl_8066B620, global
	.4byte 0x03020507
.endobj lbl_8066B620

.obj lbl_8066B624, global
	.4byte 0x03020607
.endobj lbl_8066B624

.obj lbl_8066B628, global
	.4byte 0x03030405
.endobj lbl_8066B628

.obj lbl_8066B62C, global
	.4byte 0x040A0311
	.4byte 0x050D0000
.endobj lbl_8066B62C

.obj lbl_8066B634, global
	.4byte 0x03030406
.endobj lbl_8066B634

.obj lbl_8066B638, global
	.4byte 0x03030407
.endobj lbl_8066B638

.obj lbl_8066B63C, global
	.4byte 0x070C040C
	.4byte 0x03130000
.endobj lbl_8066B63C

.obj lbl_8066B644, global
	.4byte 0x03030607
.endobj lbl_8066B644

.obj lbl_8066B648, global
	.4byte 0x070D0612
	.4byte 0x03140000
.endobj lbl_8066B648

.obj lbl_8066B650, global
	.4byte 0x03040506
.endobj lbl_8066B650

.obj lbl_8066B654, global
	.4byte 0x03040507
.endobj lbl_8066B654


.obj lbl_8066B658, global
	.4byte 0x050F040E
	.4byte 0x070E0000
.endobj lbl_8066B658

.obj lbl_8066B660, global
	.4byte 0x03040607
.endobj lbl_8066B660

.obj lbl_8066B664, global
	.4byte 0x040F070F
	.4byte 0x06150000
.endobj lbl_8066B664

.obj lbl_8066B66C, global
	.4byte 0x03050607
.endobj lbl_8066B66C

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001B0C8", local
.hidden "@etb_8001B0C8"
	.4byte 0x50180000
	.4byte 0x000001DC
	.4byte 0x00000018
	.4byte 0x000002D0
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x90000000
	.4byte 0x00000000
	.4byte 0x000002C0
	.4byte 0x00000018
	.4byte 0x8D000018
.endobj "@etb_8001B0C8"

.obj "@etb_8001B0F4", local
.hidden "@etb_8001B0F4"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_8001B0F4"

.obj "@etb_8001B0FC", local
.hidden "@etb_8001B0FC"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001B0FC"

.obj "@etb_8001B104", local
.hidden "@etb_8001B104"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001B104"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80032EF4", local
.hidden "@eti_80032EF4"
	.4byte __ct__802AB5F0
	.4byte 0x00000310
	.4byte "@etb_8001B0C8"
.endobj "@eti_80032EF4"

.obj "@eti_80032F00", local
.hidden "@eti_80032F00"
	.4byte func_802AB900
	.4byte 0x00000170
	.4byte "@etb_8001B0F4"
.endobj "@eti_80032F00"

.obj "@eti_80032F0C", local
.hidden "@eti_80032F0C"
	.4byte func_802ABA70
	.4byte 0x00000050
	.4byte "@etb_8001B0FC"
.endobj "@eti_80032F0C"

.obj "@eti_80032F18", local
.hidden "@eti_80032F18"
	.4byte func_802ABAC0
	.4byte 0x00000078
	.4byte "@etb_8001B104"
.endobj "@eti_80032F18"
