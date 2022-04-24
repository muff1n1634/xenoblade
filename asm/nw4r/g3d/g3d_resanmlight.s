.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_803E0558
func_803E0558:
/* 803E0558 003A9B18  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803E055C 003A9B1C  7C 08 02 A6 */	mflr r0
/* 803E0560 003A9B20  90 01 00 64 */	stw r0, 0x64(r1)
/* 803E0564 003A9B24  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 803E0568 003A9B28  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 803E056C 003A9B2C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 803E0570 003A9B30  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 803E0574 003A9B34  39 61 00 40 */	addi r11, r1, 0x40
/* 803E0578 003A9B38  4B ED 9B CD */	bl _savegpr_23
/* 803E057C 003A9B3C  83 E3 00 00 */	lwz r31, 0(r3)
/* 803E0580 003A9B40  FF C0 08 90 */	fmr f30, f1
/* 803E0584 003A9B44  7C 9B 23 78 */	mr r27, r4
/* 803E0588 003A9B48  80 1F 00 04 */	lwz r0, 4(r31)
/* 803E058C 003A9B4C  83 DF 00 1C */	lwz r30, 0x1c(r31)
/* 803E0590 003A9B50  2C 00 00 00 */	cmpwi r0, 0
/* 803E0594 003A9B54  41 82 00 0C */	beq lbl_803E05A0
/* 803E0598 003A9B58  7C 7F 02 14 */	add r3, r31, r0
/* 803E059C 003A9B5C  48 00 00 08 */	b lbl_803E05A4
lbl_803E05A0:
/* 803E05A0 003A9B60  38 60 00 00 */	li r3, 0
lbl_803E05A4:
/* 803E05A4 003A9B64  C3 E2 BF A0 */	lfs f31, lbl_8066C320@sda21(r2)
/* 803E05A8 003A9B68  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 803E05AC 003A9B6C  4C 40 13 82 */	cror 2, 0, 2
/* 803E05B0 003A9B70  40 82 00 08 */	bne lbl_803E05B8
/* 803E05B4 003A9B74  48 00 00 44 */	b lbl_803E05F8
lbl_803E05B8:
/* 803E05B8 003A9B78  A0 63 00 34 */	lhz r3, 0x34(r3)
/* 803E05BC 003A9B7C  3C 00 43 30 */	lis r0, 0x4330
/* 803E05C0 003A9B80  90 01 00 08 */	stw r0, 8(r1)
/* 803E05C4 003A9B84  C8 42 BF A8 */	lfd f2, lbl_8066C328@sda21(r2)
/* 803E05C8 003A9B88  90 61 00 0C */	stw r3, 0xc(r1)
/* 803E05CC 003A9B8C  C8 01 00 08 */	lfd f0, 8(r1)
/* 803E05D0 003A9B90  EC 00 10 28 */	fsubs f0, f0, f2
/* 803E05D4 003A9B94  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803E05D8 003A9B98  4C 40 13 82 */	cror 2, 0, 2
/* 803E05DC 003A9B9C  40 82 00 18 */	bne lbl_803E05F4
/* 803E05E0 003A9BA0  90 61 00 14 */	stw r3, 0x14(r1)
/* 803E05E4 003A9BA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 803E05E8 003A9BA8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803E05EC 003A9BAC  EF E0 10 28 */	fsubs f31, f0, f2
/* 803E05F0 003A9BB0  48 00 00 08 */	b lbl_803E05F8
lbl_803E05F4:
/* 803E05F4 003A9BB4  FF E0 F0 90 */	fmr f31, f30
lbl_803E05F8:
/* 803E05F8 003A9BB8  57 C0 02 11 */	rlwinm. r0, r30, 0, 8, 8
/* 803E05FC 003A9BBC  57 C0 06 BE */	clrlwi r0, r30, 0x1a
/* 803E0600 003A9BC0  90 04 00 04 */	stw r0, 4(r4)
/* 803E0604 003A9BC4  40 82 00 50 */	bne lbl_803E0654
/* 803E0608 003A9BC8  FC 20 F8 90 */	fmr f1, f31
/* 803E060C 003A9BCC  4B EE A6 71 */	bl func_802CAC7C
/* 803E0610 003A9BD0  FC 00 08 18 */	frsp f0, f1
/* 803E0614 003A9BD4  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 803E0618 003A9BD8  3C 60 80 00 */	lis r3, 0x8000
/* 803E061C 003A9BDC  7C BF 02 14 */	add r5, r31, r0
/* 803E0620 003A9BE0  FC 00 00 1E */	fctiwz f0, f0
/* 803E0624 003A9BE4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803E0628 003A9BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E062C 003A9BEC  54 04 E8 FA */	rlwinm r4, r0, 0x1d, 3, 0x1d
/* 803E0630 003A9BF0  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 803E0634 003A9BF4  7C 85 22 14 */	add r4, r5, r4
/* 803E0638 003A9BF8  80 84 00 20 */	lwz r4, 0x20(r4)
/* 803E063C 003A9BFC  7C 60 04 30 */	srw r0, r3, r0
/* 803E0640 003A9C00  7C 80 00 39 */	and. r0, r4, r0
/* 803E0644 003A9C04  41 82 00 10 */	beq lbl_803E0654
/* 803E0648 003A9C08  80 1B 00 04 */	lwz r0, 4(r27)
/* 803E064C 003A9C0C  60 00 00 04 */	ori r0, r0, 4
/* 803E0650 003A9C10  90 1B 00 04 */	stw r0, 4(r27)
lbl_803E0654:
/* 803E0654 003A9C14  80 1B 00 04 */	lwz r0, 4(r27)
/* 803E0658 003A9C18  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 803E065C 003A9C1C  41 82 02 CC */	beq lbl_803E0928
/* 803E0660 003A9C20  57 DD 07 BF */	clrlwi. r29, r30, 0x1e
/* 803E0664 003A9C24  57 DC EF FE */	rlwinm r28, r30, 0x1d, 0x1f, 0x1f
/* 803E0668 003A9C28  3B 40 00 01 */	li r26, 1
/* 803E066C 003A9C2C  40 82 00 10 */	bne lbl_803E067C
/* 803E0670 003A9C30  2C 1C 00 00 */	cmpwi r28, 0
/* 803E0674 003A9C34  40 82 00 08 */	bne lbl_803E067C
/* 803E0678 003A9C38  3B 40 00 00 */	li r26, 0
lbl_803E067C:
/* 803E067C 003A9C3C  57 C0 03 19 */	rlwinm. r0, r30, 0, 0xc, 0xc
/* 803E0680 003A9C40  57 D9 67 FE */	rlwinm r25, r30, 0xc, 0x1f, 0x1f
/* 803E0684 003A9C44  57 D8 5F FE */	rlwinm r24, r30, 0xb, 0x1f, 0x1f
/* 803E0688 003A9C48  57 D7 57 FE */	rlwinm r23, r30, 0xa, 0x1f, 0x1f
/* 803E068C 003A9C4C  41 82 00 0C */	beq lbl_803E0698
/* 803E0690 003A9C50  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 803E0694 003A9C54  48 00 00 18 */	b lbl_803E06AC
lbl_803E0698:
/* 803E0698 003A9C58  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 803E069C 003A9C5C  FC 20 F0 90 */	fmr f1, f30
/* 803E06A0 003A9C60  7C 7F 02 14 */	add r3, r31, r0
/* 803E06A4 003A9C64  38 63 00 24 */	addi r3, r3, 0x24
/* 803E06A8 003A9C68  4B FF D4 01 */	bl func_803DDAA8
lbl_803E06AC:
/* 803E06AC 003A9C6C  2C 19 00 00 */	cmpwi r25, 0
/* 803E06B0 003A9C70  D0 3B 00 08 */	stfs f1, 8(r27)
/* 803E06B4 003A9C74  41 82 00 0C */	beq lbl_803E06C0
/* 803E06B8 003A9C78  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 803E06BC 003A9C7C  48 00 00 18 */	b lbl_803E06D4
lbl_803E06C0:
/* 803E06C0 003A9C80  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 803E06C4 003A9C84  FC 20 F0 90 */	fmr f1, f30
/* 803E06C8 003A9C88  7C 7F 02 14 */	add r3, r31, r0
/* 803E06CC 003A9C8C  38 63 00 28 */	addi r3, r3, 0x28
/* 803E06D0 003A9C90  4B FF D3 D9 */	bl func_803DDAA8
lbl_803E06D4:
/* 803E06D4 003A9C94  2C 18 00 00 */	cmpwi r24, 0
/* 803E06D8 003A9C98  D0 3B 00 0C */	stfs f1, 0xc(r27)
/* 803E06DC 003A9C9C  41 82 00 0C */	beq lbl_803E06E8
/* 803E06E0 003A9CA0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 803E06E4 003A9CA4  48 00 00 18 */	b lbl_803E06FC
lbl_803E06E8:
/* 803E06E8 003A9CA8  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 803E06EC 003A9CAC  FC 20 F0 90 */	fmr f1, f30
/* 803E06F0 003A9CB0  7C 7F 02 14 */	add r3, r31, r0
/* 803E06F4 003A9CB4  38 63 00 2C */	addi r3, r3, 0x2c
/* 803E06F8 003A9CB8  4B FF D3 B1 */	bl func_803DDAA8
lbl_803E06FC:
/* 803E06FC 003A9CBC  2C 17 00 00 */	cmpwi r23, 0
/* 803E0700 003A9CC0  D0 3B 00 10 */	stfs f1, 0x10(r27)
/* 803E0704 003A9CC4  41 82 00 0C */	beq lbl_803E0710
/* 803E0708 003A9CC8  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 803E070C 003A9CCC  48 00 00 18 */	b lbl_803E0724
lbl_803E0710:
/* 803E0710 003A9CD0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 803E0714 003A9CD4  FC 20 F8 90 */	fmr f1, f31
/* 803E0718 003A9CD8  7C 7F 02 14 */	add r3, r31, r0
/* 803E071C 003A9CDC  38 63 00 30 */	addi r3, r3, 0x30
/* 803E0720 003A9CE0  4B FF D4 B5 */	bl func_803DDBD4
lbl_803E0724:
/* 803E0724 003A9CE4  2C 1A 00 00 */	cmpwi r26, 0
/* 803E0728 003A9CE8  90 7B 00 20 */	stw r3, 0x20(r27)
/* 803E072C 003A9CEC  41 82 00 84 */	beq lbl_803E07B0
/* 803E0730 003A9CF0  57 C0 01 CF */	rlwinm. r0, r30, 0, 7, 7
/* 803E0734 003A9CF4  57 D7 3F FE */	rlwinm r23, r30, 7, 0x1f, 0x1f
/* 803E0738 003A9CF8  57 D8 37 FE */	rlwinm r24, r30, 6, 0x1f, 0x1f
/* 803E073C 003A9CFC  41 82 00 0C */	beq lbl_803E0748
/* 803E0740 003A9D00  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 803E0744 003A9D04  48 00 00 18 */	b lbl_803E075C
lbl_803E0748:
/* 803E0748 003A9D08  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 803E074C 003A9D0C  FC 20 F0 90 */	fmr f1, f30
/* 803E0750 003A9D10  7C 7F 02 14 */	add r3, r31, r0
/* 803E0754 003A9D14  38 63 00 34 */	addi r3, r3, 0x34
/* 803E0758 003A9D18  4B FF D3 51 */	bl func_803DDAA8
lbl_803E075C:
/* 803E075C 003A9D1C  2C 17 00 00 */	cmpwi r23, 0
/* 803E0760 003A9D20  D0 3B 00 14 */	stfs f1, 0x14(r27)
/* 803E0764 003A9D24  41 82 00 0C */	beq lbl_803E0770
/* 803E0768 003A9D28  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 803E076C 003A9D2C  48 00 00 18 */	b lbl_803E0784
lbl_803E0770:
/* 803E0770 003A9D30  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 803E0774 003A9D34  FC 20 F0 90 */	fmr f1, f30
/* 803E0778 003A9D38  7C 7F 02 14 */	add r3, r31, r0
/* 803E077C 003A9D3C  38 63 00 38 */	addi r3, r3, 0x38
/* 803E0780 003A9D40  4B FF D3 29 */	bl func_803DDAA8
lbl_803E0784:
/* 803E0784 003A9D44  2C 18 00 00 */	cmpwi r24, 0
/* 803E0788 003A9D48  D0 3B 00 18 */	stfs f1, 0x18(r27)
/* 803E078C 003A9D4C  41 82 00 0C */	beq lbl_803E0798
/* 803E0790 003A9D50  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 803E0794 003A9D54  48 00 00 18 */	b lbl_803E07AC
lbl_803E0798:
/* 803E0798 003A9D58  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 803E079C 003A9D5C  FC 20 F0 90 */	fmr f1, f30
/* 803E07A0 003A9D60  7C 7F 02 14 */	add r3, r31, r0
/* 803E07A4 003A9D64  38 63 00 3C */	addi r3, r3, 0x3c
/* 803E07A8 003A9D68  4B FF D3 01 */	bl func_803DDAA8
lbl_803E07AC:
/* 803E07AC 003A9D6C  D0 3B 00 1C */	stfs f1, 0x1c(r27)
lbl_803E07B0:
/* 803E07B0 003A9D70  2C 1D 00 01 */	cmpwi r29, 1
/* 803E07B4 003A9D74  41 82 01 10 */	beq lbl_803E08C4
/* 803E07B8 003A9D78  40 80 00 10 */	bge lbl_803E07C8
/* 803E07BC 003A9D7C  2C 1D 00 00 */	cmpwi r29, 0
/* 803E07C0 003A9D80  40 80 00 14 */	bge lbl_803E07D4
/* 803E07C4 003A9D84  48 00 01 00 */	b lbl_803E08C4
lbl_803E07C8:
/* 803E07C8 003A9D88  2C 1D 00 03 */	cmpwi r29, 3
/* 803E07CC 003A9D8C  40 80 00 F8 */	bge lbl_803E08C4
/* 803E07D0 003A9D90  48 00 00 64 */	b lbl_803E0834
lbl_803E07D4:
/* 803E07D4 003A9D94  57 C0 00 C7 */	rlwinm. r0, r30, 0, 3, 3
/* 803E07D8 003A9D98  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 803E07DC 003A9D9C  57 D7 1F FE */	rlwinm r23, r30, 3, 0x1f, 0x1f
/* 803E07E0 003A9DA0  90 1B 00 24 */	stw r0, 0x24(r27)
/* 803E07E4 003A9DA4  41 82 00 0C */	beq lbl_803E07F0
/* 803E07E8 003A9DA8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 803E07EC 003A9DAC  48 00 00 18 */	b lbl_803E0804
lbl_803E07F0:
/* 803E07F0 003A9DB0  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 803E07F4 003A9DB4  FC 20 F0 90 */	fmr f1, f30
/* 803E07F8 003A9DB8  7C 7F 02 14 */	add r3, r31, r0
/* 803E07FC 003A9DBC  38 63 00 44 */	addi r3, r3, 0x44
/* 803E0800 003A9DC0  4B FF D2 A9 */	bl func_803DDAA8
lbl_803E0804:
/* 803E0804 003A9DC4  2C 17 00 00 */	cmpwi r23, 0
/* 803E0808 003A9DC8  D0 3B 00 28 */	stfs f1, 0x28(r27)
/* 803E080C 003A9DCC  41 82 00 0C */	beq lbl_803E0818
/* 803E0810 003A9DD0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 803E0814 003A9DD4  48 00 00 18 */	b lbl_803E082C
lbl_803E0818:
/* 803E0818 003A9DD8  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 803E081C 003A9DDC  FC 20 F0 90 */	fmr f1, f30
/* 803E0820 003A9DE0  7C 7F 02 14 */	add r3, r31, r0
/* 803E0824 003A9DE4  38 63 00 48 */	addi r3, r3, 0x48
/* 803E0828 003A9DE8  4B FF D2 81 */	bl func_803DDAA8
lbl_803E082C:
/* 803E082C 003A9DEC  D0 3B 00 2C */	stfs f1, 0x2c(r27)
/* 803E0830 003A9DF0  48 00 00 94 */	b lbl_803E08C4
lbl_803E0834:
/* 803E0834 003A9DF4  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 803E0838 003A9DF8  57 C0 01 09 */	rlwinm. r0, r30, 0, 4, 4
/* 803E083C 003A9DFC  57 D7 27 FE */	rlwinm r23, r30, 4, 0x1f, 0x1f
/* 803E0840 003A9E00  57 D8 1F FE */	rlwinm r24, r30, 3, 0x1f, 0x1f
/* 803E0844 003A9E04  90 7B 00 24 */	stw r3, 0x24(r27)
/* 803E0848 003A9E08  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 803E084C 003A9E0C  90 1B 00 30 */	stw r0, 0x30(r27)
/* 803E0850 003A9E10  41 82 00 0C */	beq lbl_803E085C
/* 803E0854 003A9E14  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 803E0858 003A9E18  48 00 00 18 */	b lbl_803E0870
lbl_803E085C:
/* 803E085C 003A9E1C  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 803E0860 003A9E20  FC 20 F0 90 */	fmr f1, f30
/* 803E0864 003A9E24  7C 7F 02 14 */	add r3, r31, r0
/* 803E0868 003A9E28  38 63 00 50 */	addi r3, r3, 0x50
/* 803E086C 003A9E2C  4B FF D2 3D */	bl func_803DDAA8
lbl_803E0870:
/* 803E0870 003A9E30  2C 17 00 00 */	cmpwi r23, 0
/* 803E0874 003A9E34  D0 3B 00 34 */	stfs f1, 0x34(r27)
/* 803E0878 003A9E38  41 82 00 0C */	beq lbl_803E0884
/* 803E087C 003A9E3C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 803E0880 003A9E40  48 00 00 18 */	b lbl_803E0898
lbl_803E0884:
/* 803E0884 003A9E44  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 803E0888 003A9E48  FC 20 F0 90 */	fmr f1, f30
/* 803E088C 003A9E4C  7C 7F 02 14 */	add r3, r31, r0
/* 803E0890 003A9E50  38 63 00 44 */	addi r3, r3, 0x44
/* 803E0894 003A9E54  4B FF D2 15 */	bl func_803DDAA8
lbl_803E0898:
/* 803E0898 003A9E58  2C 18 00 00 */	cmpwi r24, 0
/* 803E089C 003A9E5C  D0 3B 00 28 */	stfs f1, 0x28(r27)
/* 803E08A0 003A9E60  41 82 00 0C */	beq lbl_803E08AC
/* 803E08A4 003A9E64  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 803E08A8 003A9E68  48 00 00 18 */	b lbl_803E08C0
lbl_803E08AC:
/* 803E08AC 003A9E6C  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 803E08B0 003A9E70  FC 20 F0 90 */	fmr f1, f30
/* 803E08B4 003A9E74  7C 7F 02 14 */	add r3, r31, r0
/* 803E08B8 003A9E78  38 63 00 48 */	addi r3, r3, 0x48
/* 803E08BC 003A9E7C  4B FF D1 ED */	bl func_803DDAA8
lbl_803E08C0:
/* 803E08C0 003A9E80  D0 3B 00 2C */	stfs f1, 0x2c(r27)
lbl_803E08C4:
/* 803E08C4 003A9E84  2C 1C 00 00 */	cmpwi r28, 0
/* 803E08C8 003A9E88  41 82 00 60 */	beq lbl_803E0928
/* 803E08CC 003A9E8C  57 C0 00 43 */	rlwinm. r0, r30, 0, 1, 1
/* 803E08D0 003A9E90  57 D7 0F FE */	srwi r23, r30, 0x1f
/* 803E08D4 003A9E94  41 82 00 0C */	beq lbl_803E08E0
/* 803E08D8 003A9E98  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 803E08DC 003A9E9C  48 00 00 18 */	b lbl_803E08F4
lbl_803E08E0:
/* 803E08E0 003A9EA0  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 803E08E4 003A9EA4  FC 20 F8 90 */	fmr f1, f31
/* 803E08E8 003A9EA8  7C 7F 02 14 */	add r3, r31, r0
/* 803E08EC 003A9EAC  38 63 00 54 */	addi r3, r3, 0x54
/* 803E08F0 003A9EB0  4B FF D2 E5 */	bl func_803DDBD4
lbl_803E08F4:
/* 803E08F4 003A9EB4  2C 17 00 00 */	cmpwi r23, 0
/* 803E08F8 003A9EB8  90 7B 00 38 */	stw r3, 0x38(r27)
/* 803E08FC 003A9EBC  41 82 00 0C */	beq lbl_803E0908
/* 803E0900 003A9EC0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 803E0904 003A9EC4  48 00 00 18 */	b lbl_803E091C
lbl_803E0908:
/* 803E0908 003A9EC8  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 803E090C 003A9ECC  FC 20 F0 90 */	fmr f1, f30
/* 803E0910 003A9ED0  7C 7F 02 14 */	add r3, r31, r0
/* 803E0914 003A9ED4  38 63 00 58 */	addi r3, r3, 0x58
/* 803E0918 003A9ED8  4B FF D1 91 */	bl func_803DDAA8
lbl_803E091C:
/* 803E091C 003A9EDC  D0 3B 00 3C */	stfs f1, 0x3c(r27)
/* 803E0920 003A9EE0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 803E0924 003A9EE4  90 1B 00 00 */	stw r0, 0(r27)
lbl_803E0928:
/* 803E0928 003A9EE8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 803E092C 003A9EEC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 803E0930 003A9EF0  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 803E0934 003A9EF4  39 61 00 40 */	addi r11, r1, 0x40
/* 803E0938 003A9EF8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 803E093C 003A9EFC  4B ED 98 55 */	bl _restgpr_23
/* 803E0940 003A9F00  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803E0944 003A9F04  7C 08 03 A6 */	mtlr r0
/* 803E0948 003A9F08  38 21 00 60 */	addi r1, r1, 0x60
/* 803E094C 003A9F0C  4E 80 00 20 */	blr 