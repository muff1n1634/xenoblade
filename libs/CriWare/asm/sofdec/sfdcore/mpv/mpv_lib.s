.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn MPV_Init, global
/* 803A7F30 003714F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A7F34 003714F4  7C 08 02 A6 */	mflr r0
/* 803A7F38 003714F8  3C A0 80 52 */	lis r5, MPVLIB_version_str@ha
/* 803A7F3C 003714FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A7F40 00371500  38 A5 F7 78 */	addi r5, r5, MPVLIB_version_str@l
/* 803A7F44 00371504  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 803A7F48 00371508  3F E0 80 60 */	lis r31, mpvlib_use_lc@ha
/* 803A7F4C 0037150C  3B FF 60 40 */	addi r31, r31, mpvlib_use_lc@l
/* 803A7F50 00371510  7C 7B 1B 78 */	mr r27, r3
/* 803A7F54 00371514  7C 9C 23 78 */	mr r28, r4
/* 803A7F58 00371518  90 BF 00 04 */	stw r5, 4(r31)
/* 803A7F5C 0037151C  48 00 01 75 */	bl mpvlib_ChkFatal
/* 803A7F60 00371520  2C 03 00 00 */	cmpwi r3, 0
/* 803A7F64 00371524  41 82 00 18 */	beq .L_803A7F7C
/* 803A7F68 00371528  3C 03 00 FD */	addis r0, r3, 0xfd
/* 803A7F6C 0037152C  28 00 FF 05 */	cmplwi r0, 0xff05
/* 803A7F70 00371530  40 82 00 08 */	bne .L_803A7F78
/* 803A7F74 00371534  48 00 01 48 */	b .L_803A80BC
.L_803A7F78:
/* 803A7F78 00371538  48 00 00 00 */	b .L_803A7F78
.L_803A7F7C:
/* 803A7F7C 0037153C  38 1C 00 1F */	addi r0, r28, 0x1f
/* 803A7F80 00371540  57 63 68 24 */	slwi r3, r27, 0xd
/* 803A7F84 00371544  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 803A7F88 00371548  38 80 00 00 */	li r4, 0
/* 803A7F8C 0037154C  38 03 20 00 */	addi r0, r3, 0x2000
/* 803A7F90 00371550  7F C3 F3 78 */	mr r3, r30
/* 803A7F94 00371554  54 05 F0 BE */	srwi r5, r0, 2
/* 803A7F98 00371558  48 02 C5 39 */	bl UTY_MemsetDword
/* 803A7F9C 0037155C  38 7F 00 08 */	addi r3, r31, 8
/* 803A7FA0 00371560  80 03 00 48 */	lwz r0, 0x48(r3)
/* 803A7FA4 00371564  1C 7B 0D C0 */	mulli r3, r27, 0xdc0
/* 803A7FA8 00371568  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 803A7FAC 0037156C  7F 9E 1A 14 */	add r28, r30, r3
/* 803A7FB0 00371570  3B BC 04 20 */	addi r29, r28, 0x420
/* 803A7FB4 00371574  41 82 00 20 */	beq .L_803A7FD4
/* 803A7FB8 00371578  38 00 00 DF */	li r0, 0xdf
/* 803A7FBC 0037157C  38 60 00 00 */	li r3, 0
/* 803A7FC0 00371580  7C 09 03 A6 */	mtctr r0
.L_803A7FC4:
/* 803A7FC4 00371584  7C 1D 1B AC */	dcbi r29, r3
/* 803A7FC8 00371588  10 1D 1F EC */	dcbz_l r29, r3
/* 803A7FCC 0037158C  38 63 00 20 */	addi r3, r3, 0x20
/* 803A7FD0 00371590  42 00 FF F4 */	bdnz .L_803A7FC4
.L_803A7FD4:
/* 803A7FD4 00371594  3C 80 80 52 */	lis r4, mpvlib_cond_dfl@ha
/* 803A7FD8 00371598  38 7F 00 08 */	addi r3, r31, 8
/* 803A7FDC 0037159C  38 84 F7 D0 */	addi r4, r4, mpvlib_cond_dfl@l
/* 803A7FE0 003715A0  38 A0 00 40 */	li r5, 0x40
/* 803A7FE4 003715A4  48 01 37 49 */	bl MEM_Copy
/* 803A7FE8 003715A8  38 7F 00 08 */	addi r3, r31, 8
/* 803A7FEC 003715AC  93 83 00 4C */	stw r28, 0x4c(r3)
/* 803A7FF0 003715B0  93 A3 00 50 */	stw r29, 0x50(r3)
/* 803A7FF4 003715B4  93 63 00 54 */	stw r27, 0x54(r3)
/* 803A7FF8 003715B8  93 C3 00 58 */	stw r30, 0x58(r3)
/* 803A7FFC 003715BC  4B FF E1 59 */	bl MPVERR_Init
/* 803A8000 003715C0  4B FF D9 B1 */	bl criware_803A59B0
/* 803A8004 003715C4  4B FF E7 19 */	bl MPVHDEC_Init
/* 803A8008 003715C8  4B FF E2 BD */	bl MPVFRM_Init
/* 803A800C 003715CC  48 01 16 E9 */	bl MPVSL_Init
/* 803A8010 003715D0  7F A4 EB 78 */	mr r4, r29
/* 803A8014 003715D4  38 7D 12 30 */	addi r3, r29, 0x1230
/* 803A8018 003715D8  48 00 17 01 */	bl MPVVLC_Init
/* 803A801C 003715DC  7F A3 EB 78 */	mr r3, r29
/* 803A8020 003715E0  4B FF BB 8D */	bl MPVBDEC_Init
/* 803A8024 003715E4  48 00 44 45 */	bl MPVUMC_Init
/* 803A8028 003715E8  7F A3 EB 78 */	mr r3, r29
/* 803A802C 003715EC  4B FF BF 61 */	bl MPVCDEC_Init
/* 803A8030 003715F0  48 00 01 39 */	bl mpvlib_InitClip0255
/* 803A8034 003715F4  34 7D 17 E0 */	addic. r3, r29, 0x17e0
/* 803A8038 003715F8  41 82 00 18 */	beq .L_803A8050
/* 803A803C 003715FC  38 9F 00 68 */	addi r4, r31, 0x68
/* 803A8040 00371600  38 A0 01 00 */	li r5, 0x100
/* 803A8044 00371604  48 02 C3 C9 */	bl UTY_MemcpyDword
/* 803A8048 00371608  38 1D 19 60 */	addi r0, r29, 0x1960
/* 803A804C 0037160C  90 1F 04 68 */	stw r0, 0x468(r31)
.L_803A8050:
/* 803A8050 00371610  38 9F 00 08 */	addi r4, r31, 8
/* 803A8054 00371614  38 60 00 01 */	li r3, 1
/* 803A8058 00371618  80 A4 00 54 */	lwz r5, 0x54(r4)
/* 803A805C 0037161C  80 84 00 58 */	lwz r4, 0x58(r4)
/* 803A8060 00371620  2C 05 00 00 */	cmpwi r5, 0
/* 803A8064 00371624  40 81 00 50 */	ble .L_803A80B4
/* 803A8068 00371628  54 A0 E8 FF */	rlwinm. r0, r5, 0x1d, 3, 0x1f
/* 803A806C 0037162C  7C 09 03 A6 */	mtctr r0
/* 803A8070 00371630  41 82 00 34 */	beq .L_803A80A4
.L_803A8074:
/* 803A8074 00371634  90 64 0B 08 */	stw r3, 0xb08(r4)
/* 803A8078 00371638  90 64 18 C8 */	stw r3, 0x18c8(r4)
/* 803A807C 0037163C  90 64 26 88 */	stw r3, 0x2688(r4)
/* 803A8080 00371640  90 64 34 48 */	stw r3, 0x3448(r4)
/* 803A8084 00371644  90 64 42 08 */	stw r3, 0x4208(r4)
/* 803A8088 00371648  90 64 4F C8 */	stw r3, 0x4fc8(r4)
/* 803A808C 0037164C  90 64 5D 88 */	stw r3, 0x5d88(r4)
/* 803A8090 00371650  90 64 6B 48 */	stw r3, 0x6b48(r4)
/* 803A8094 00371654  38 84 6E 00 */	addi r4, r4, 0x6e00
/* 803A8098 00371658  42 00 FF DC */	bdnz .L_803A8074
/* 803A809C 0037165C  70 A5 00 07 */	andi. r5, r5, 7
/* 803A80A0 00371660  41 82 00 14 */	beq .L_803A80B4
.L_803A80A4:
/* 803A80A4 00371664  7C A9 03 A6 */	mtctr r5
.L_803A80A8:
/* 803A80A8 00371668  90 64 0B 08 */	stw r3, 0xb08(r4)
/* 803A80AC 0037166C  38 84 0D C0 */	addi r4, r4, 0xdc0
/* 803A80B0 00371670  42 00 FF F8 */	bdnz .L_803A80A8
.L_803A80B4:
/* 803A80B4 00371674  48 00 6F 15 */	bl MPVM2V_Init
/* 803A80B8 00371678  38 60 00 00 */	li r3, 0
.L_803A80BC:
/* 803A80BC 0037167C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 803A80C0 00371680  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A80C4 00371684  7C 08 03 A6 */	mtlr r0
/* 803A80C8 00371688  38 21 00 20 */	addi r1, r1, 0x20
/* 803A80CC 0037168C  4E 80 00 20 */	blr 
.endfn MPV_Init

.fn mpvlib_ChkFatal, local
/* 803A80D0 00371690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A80D4 00371694  7C 08 02 A6 */	mflr r0
/* 803A80D8 00371698  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A80DC 0037169C  48 00 16 35 */	bl MPVVLC_IsVlcSizErr
/* 803A80E0 003716A0  2C 03 00 00 */	cmpwi r3, 0
/* 803A80E4 003716A4  41 82 00 18 */	beq .L_803A80FC
/* 803A80E8 003716A8  3C 80 FF 04 */	lis r4, 0xFF03FF03@ha
/* 803A80EC 003716AC  38 60 00 00 */	li r3, 0
/* 803A80F0 003716B0  38 84 FF 03 */	addi r4, r4, 0xFF03FF03@l
/* 803A80F4 003716B4  4B FF E1 49 */	bl MPVERR_SetCode
/* 803A80F8 003716B8  48 00 00 60 */	b .L_803A8158
.L_803A80FC:
/* 803A80FC 003716BC  3C 60 80 52 */	lis r3, lbl_8051F814@ha
/* 803A8100 003716C0  38 80 0D AC */	li r4, 0xdac
/* 803A8104 003716C4  38 63 F8 14 */	addi r3, r3, lbl_8051F814@l
/* 803A8108 003716C8  38 A0 00 80 */	li r5, 0x80
/* 803A810C 003716CC  4B FF C5 F9 */	bl MPVDEC_CheckVersion
/* 803A8110 003716D0  2C 03 00 00 */	cmpwi r3, 0
/* 803A8114 003716D4  41 82 00 18 */	beq .L_803A812C
/* 803A8118 003716D8  3C 80 FF 04 */	lis r4, 0xFF03FF07@ha
/* 803A811C 003716DC  38 60 00 00 */	li r3, 0
/* 803A8120 003716E0  38 84 FF 07 */	addi r4, r4, 0xFF03FF07@l
/* 803A8124 003716E4  4B FF E1 19 */	bl MPVERR_SetCode
/* 803A8128 003716E8  48 00 00 30 */	b .L_803A8158
.L_803A812C:
/* 803A812C 003716EC  3C 60 01 02 */	lis r3, 0x01020304@ha
/* 803A8130 003716F0  38 03 03 04 */	addi r0, r3, 0x01020304@l
/* 803A8134 003716F4  90 01 00 08 */	stw r0, 8(r1)
/* 803A8138 003716F8  88 01 00 08 */	lbz r0, 8(r1)
/* 803A813C 003716FC  28 00 00 01 */	cmplwi r0, 1
/* 803A8140 00371700  41 82 00 14 */	beq .L_803A8154
.L_803A8144:
/* 803A8144 00371704  39 80 FF FF */	li r12, -1
/* 803A8148 00371708  7D 89 03 A6 */	mtctr r12
/* 803A814C 0037170C  4E 80 04 21 */	bctrl 
/* 803A8150 00371710  4B FF FF F4 */	b .L_803A8144
.L_803A8154:
/* 803A8154 00371714  38 60 00 00 */	li r3, 0
.L_803A8158:
/* 803A8158 00371718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A815C 0037171C  7C 08 03 A6 */	mtlr r0
/* 803A8160 00371720  38 21 00 10 */	addi r1, r1, 0x10
/* 803A8164 00371724  4E 80 00 20 */	blr 
.endfn mpvlib_ChkFatal

.fn mpvlib_InitClip0255, local
/* 803A8168 00371728  3D 40 80 60 */	lis r10, mpv_clip_0_255_tbl@ha
/* 803A816C 0037172C  38 00 00 08 */	li r0, 8
/* 803A8170 00371730  39 4A 60 A8 */	addi r10, r10, mpv_clip_0_255_tbl@l
/* 803A8174 00371734  38 60 00 00 */	li r3, 0
/* 803A8178 00371738  7C 09 03 A6 */	mtctr r0
.L_803A817C:
/* 803A817C 0037173C  98 6A 00 00 */	stb r3, 0(r10)
/* 803A8180 00371740  98 6A 00 01 */	stb r3, 1(r10)
/* 803A8184 00371744  98 6A 00 02 */	stb r3, 2(r10)
/* 803A8188 00371748  98 6A 00 03 */	stb r3, 3(r10)
/* 803A818C 0037174C  98 6A 00 04 */	stb r3, 4(r10)
/* 803A8190 00371750  98 6A 00 05 */	stb r3, 5(r10)
/* 803A8194 00371754  98 6A 00 06 */	stb r3, 6(r10)
/* 803A8198 00371758  98 6A 00 07 */	stb r3, 7(r10)
/* 803A819C 0037175C  98 6A 00 08 */	stb r3, 8(r10)
/* 803A81A0 00371760  98 6A 00 09 */	stb r3, 9(r10)
/* 803A81A4 00371764  98 6A 00 0A */	stb r3, 0xa(r10)
/* 803A81A8 00371768  98 6A 00 0B */	stb r3, 0xb(r10)
/* 803A81AC 0037176C  98 6A 00 0C */	stb r3, 0xc(r10)
/* 803A81B0 00371770  98 6A 00 0D */	stb r3, 0xd(r10)
/* 803A81B4 00371774  98 6A 00 0E */	stb r3, 0xe(r10)
/* 803A81B8 00371778  98 6A 00 0F */	stb r3, 0xf(r10)
/* 803A81BC 0037177C  98 6A 00 10 */	stb r3, 0x10(r10)
/* 803A81C0 00371780  98 6A 00 11 */	stb r3, 0x11(r10)
/* 803A81C4 00371784  98 6A 00 12 */	stb r3, 0x12(r10)
/* 803A81C8 00371788  98 6A 00 13 */	stb r3, 0x13(r10)
/* 803A81CC 0037178C  98 6A 00 14 */	stb r3, 0x14(r10)
/* 803A81D0 00371790  98 6A 00 15 */	stb r3, 0x15(r10)
/* 803A81D4 00371794  98 6A 00 16 */	stb r3, 0x16(r10)
/* 803A81D8 00371798  98 6A 00 17 */	stb r3, 0x17(r10)
/* 803A81DC 0037179C  98 6A 00 18 */	stb r3, 0x18(r10)
/* 803A81E0 003717A0  98 6A 00 19 */	stb r3, 0x19(r10)
/* 803A81E4 003717A4  98 6A 00 1A */	stb r3, 0x1a(r10)
/* 803A81E8 003717A8  98 6A 00 1B */	stb r3, 0x1b(r10)
/* 803A81EC 003717AC  98 6A 00 1C */	stb r3, 0x1c(r10)
/* 803A81F0 003717B0  98 6A 00 1D */	stb r3, 0x1d(r10)
/* 803A81F4 003717B4  98 6A 00 1E */	stb r3, 0x1e(r10)
/* 803A81F8 003717B8  98 6A 00 1F */	stb r3, 0x1f(r10)
/* 803A81FC 003717BC  98 6A 00 20 */	stb r3, 0x20(r10)
/* 803A8200 003717C0  98 6A 00 21 */	stb r3, 0x21(r10)
/* 803A8204 003717C4  98 6A 00 22 */	stb r3, 0x22(r10)
/* 803A8208 003717C8  98 6A 00 23 */	stb r3, 0x23(r10)
/* 803A820C 003717CC  98 6A 00 24 */	stb r3, 0x24(r10)
/* 803A8210 003717D0  98 6A 00 25 */	stb r3, 0x25(r10)
/* 803A8214 003717D4  98 6A 00 26 */	stb r3, 0x26(r10)
/* 803A8218 003717D8  98 6A 00 27 */	stb r3, 0x27(r10)
/* 803A821C 003717DC  98 6A 00 28 */	stb r3, 0x28(r10)
/* 803A8220 003717E0  98 6A 00 29 */	stb r3, 0x29(r10)
/* 803A8224 003717E4  98 6A 00 2A */	stb r3, 0x2a(r10)
/* 803A8228 003717E8  98 6A 00 2B */	stb r3, 0x2b(r10)
/* 803A822C 003717EC  98 6A 00 2C */	stb r3, 0x2c(r10)
/* 803A8230 003717F0  98 6A 00 2D */	stb r3, 0x2d(r10)
/* 803A8234 003717F4  98 6A 00 2E */	stb r3, 0x2e(r10)
/* 803A8238 003717F8  98 6A 00 2F */	stb r3, 0x2f(r10)
/* 803A823C 003717FC  39 4A 00 30 */	addi r10, r10, 0x30
/* 803A8240 00371800  42 00 FF 3C */	bdnz .L_803A817C
/* 803A8244 00371804  38 00 00 08 */	li r0, 8
/* 803A8248 00371808  39 20 00 00 */	li r9, 0
/* 803A824C 0037180C  7C 09 03 A6 */	mtctr r0
.L_803A8250:
/* 803A8250 00371810  99 2A 00 00 */	stb r9, 0(r10)
/* 803A8254 00371814  39 09 00 01 */	addi r8, r9, 1
/* 803A8258 00371818  38 E9 00 02 */	addi r7, r9, 2
/* 803A825C 0037181C  38 C9 00 03 */	addi r6, r9, 3
/* 803A8260 00371820  99 0A 00 01 */	stb r8, 1(r10)
/* 803A8264 00371824  38 A9 00 04 */	addi r5, r9, 4
/* 803A8268 00371828  38 89 00 05 */	addi r4, r9, 5
/* 803A826C 0037182C  38 69 00 06 */	addi r3, r9, 6
/* 803A8270 00371830  98 EA 00 02 */	stb r7, 2(r10)
/* 803A8274 00371834  38 09 00 07 */	addi r0, r9, 7
/* 803A8278 00371838  39 09 00 09 */	addi r8, r9, 9
/* 803A827C 0037183C  38 E9 00 0A */	addi r7, r9, 0xa
/* 803A8280 00371840  98 CA 00 03 */	stb r6, 3(r10)
/* 803A8284 00371844  38 C9 00 0B */	addi r6, r9, 0xb
/* 803A8288 00371848  98 AA 00 04 */	stb r5, 4(r10)
/* 803A828C 0037184C  38 A9 00 0C */	addi r5, r9, 0xc
/* 803A8290 00371850  98 8A 00 05 */	stb r4, 5(r10)
/* 803A8294 00371854  38 89 00 0D */	addi r4, r9, 0xd
/* 803A8298 00371858  98 6A 00 06 */	stb r3, 6(r10)
/* 803A829C 0037185C  38 69 00 0E */	addi r3, r9, 0xe
/* 803A82A0 00371860  98 0A 00 07 */	stb r0, 7(r10)
/* 803A82A4 00371864  38 09 00 0F */	addi r0, r9, 0xf
/* 803A82A8 00371868  39 29 00 08 */	addi r9, r9, 8
/* 803A82AC 0037186C  99 2A 00 08 */	stb r9, 8(r10)
/* 803A82B0 00371870  99 0A 00 09 */	stb r8, 9(r10)
/* 803A82B4 00371874  39 09 00 09 */	addi r8, r9, 9
/* 803A82B8 00371878  98 EA 00 0A */	stb r7, 0xa(r10)
/* 803A82BC 0037187C  38 E9 00 0A */	addi r7, r9, 0xa
/* 803A82C0 00371880  98 CA 00 0B */	stb r6, 0xb(r10)
/* 803A82C4 00371884  38 C9 00 0B */	addi r6, r9, 0xb
/* 803A82C8 00371888  98 AA 00 0C */	stb r5, 0xc(r10)
/* 803A82CC 0037188C  38 A9 00 0C */	addi r5, r9, 0xc
/* 803A82D0 00371890  98 8A 00 0D */	stb r4, 0xd(r10)
/* 803A82D4 00371894  38 89 00 0D */	addi r4, r9, 0xd
/* 803A82D8 00371898  98 6A 00 0E */	stb r3, 0xe(r10)
/* 803A82DC 0037189C  38 69 00 0E */	addi r3, r9, 0xe
/* 803A82E0 003718A0  98 0A 00 0F */	stb r0, 0xf(r10)
/* 803A82E4 003718A4  38 09 00 0F */	addi r0, r9, 0xf
/* 803A82E8 003718A8  39 29 00 08 */	addi r9, r9, 8
/* 803A82EC 003718AC  99 2A 00 10 */	stb r9, 0x10(r10)
/* 803A82F0 003718B0  99 0A 00 11 */	stb r8, 0x11(r10)
/* 803A82F4 003718B4  39 09 00 09 */	addi r8, r9, 9
/* 803A82F8 003718B8  98 EA 00 12 */	stb r7, 0x12(r10)
/* 803A82FC 003718BC  38 E9 00 0A */	addi r7, r9, 0xa
/* 803A8300 003718C0  98 CA 00 13 */	stb r6, 0x13(r10)
/* 803A8304 003718C4  38 C9 00 0B */	addi r6, r9, 0xb
/* 803A8308 003718C8  98 AA 00 14 */	stb r5, 0x14(r10)
/* 803A830C 003718CC  38 A9 00 0C */	addi r5, r9, 0xc
/* 803A8310 003718D0  98 8A 00 15 */	stb r4, 0x15(r10)
/* 803A8314 003718D4  38 89 00 0D */	addi r4, r9, 0xd
/* 803A8318 003718D8  98 6A 00 16 */	stb r3, 0x16(r10)
/* 803A831C 003718DC  38 69 00 0E */	addi r3, r9, 0xe
/* 803A8320 003718E0  98 0A 00 17 */	stb r0, 0x17(r10)
/* 803A8324 003718E4  38 09 00 0F */	addi r0, r9, 0xf
/* 803A8328 003718E8  39 29 00 08 */	addi r9, r9, 8
/* 803A832C 003718EC  99 2A 00 18 */	stb r9, 0x18(r10)
/* 803A8330 003718F0  39 29 00 08 */	addi r9, r9, 8
/* 803A8334 003718F4  99 0A 00 19 */	stb r8, 0x19(r10)
/* 803A8338 003718F8  98 EA 00 1A */	stb r7, 0x1a(r10)
/* 803A833C 003718FC  98 CA 00 1B */	stb r6, 0x1b(r10)
/* 803A8340 00371900  98 AA 00 1C */	stb r5, 0x1c(r10)
/* 803A8344 00371904  98 8A 00 1D */	stb r4, 0x1d(r10)
/* 803A8348 00371908  98 6A 00 1E */	stb r3, 0x1e(r10)
/* 803A834C 0037190C  98 0A 00 1F */	stb r0, 0x1f(r10)
/* 803A8350 00371910  39 4A 00 20 */	addi r10, r10, 0x20
/* 803A8354 00371914  42 00 FE FC */	bdnz .L_803A8250
/* 803A8358 00371918  38 00 00 08 */	li r0, 8
/* 803A835C 0037191C  38 60 00 FF */	li r3, 0xff
/* 803A8360 00371920  7C 09 03 A6 */	mtctr r0
.L_803A8364:
/* 803A8364 00371924  98 6A 00 00 */	stb r3, 0(r10)
/* 803A8368 00371928  98 6A 00 01 */	stb r3, 1(r10)
/* 803A836C 0037192C  98 6A 00 02 */	stb r3, 2(r10)
/* 803A8370 00371930  98 6A 00 03 */	stb r3, 3(r10)
/* 803A8374 00371934  98 6A 00 04 */	stb r3, 4(r10)
/* 803A8378 00371938  98 6A 00 05 */	stb r3, 5(r10)
/* 803A837C 0037193C  98 6A 00 06 */	stb r3, 6(r10)
/* 803A8380 00371940  98 6A 00 07 */	stb r3, 7(r10)
/* 803A8384 00371944  98 6A 00 08 */	stb r3, 8(r10)
/* 803A8388 00371948  98 6A 00 09 */	stb r3, 9(r10)
/* 803A838C 0037194C  98 6A 00 0A */	stb r3, 0xa(r10)
/* 803A8390 00371950  98 6A 00 0B */	stb r3, 0xb(r10)
/* 803A8394 00371954  98 6A 00 0C */	stb r3, 0xc(r10)
/* 803A8398 00371958  98 6A 00 0D */	stb r3, 0xd(r10)
/* 803A839C 0037195C  98 6A 00 0E */	stb r3, 0xe(r10)
/* 803A83A0 00371960  98 6A 00 0F */	stb r3, 0xf(r10)
/* 803A83A4 00371964  98 6A 00 10 */	stb r3, 0x10(r10)
/* 803A83A8 00371968  98 6A 00 11 */	stb r3, 0x11(r10)
/* 803A83AC 0037196C  98 6A 00 12 */	stb r3, 0x12(r10)
/* 803A83B0 00371970  98 6A 00 13 */	stb r3, 0x13(r10)
/* 803A83B4 00371974  98 6A 00 14 */	stb r3, 0x14(r10)
/* 803A83B8 00371978  98 6A 00 15 */	stb r3, 0x15(r10)
/* 803A83BC 0037197C  98 6A 00 16 */	stb r3, 0x16(r10)
/* 803A83C0 00371980  98 6A 00 17 */	stb r3, 0x17(r10)
/* 803A83C4 00371984  98 6A 00 18 */	stb r3, 0x18(r10)
/* 803A83C8 00371988  98 6A 00 19 */	stb r3, 0x19(r10)
/* 803A83CC 0037198C  98 6A 00 1A */	stb r3, 0x1a(r10)
/* 803A83D0 00371990  98 6A 00 1B */	stb r3, 0x1b(r10)
/* 803A83D4 00371994  98 6A 00 1C */	stb r3, 0x1c(r10)
/* 803A83D8 00371998  98 6A 00 1D */	stb r3, 0x1d(r10)
/* 803A83DC 0037199C  98 6A 00 1E */	stb r3, 0x1e(r10)
/* 803A83E0 003719A0  98 6A 00 1F */	stb r3, 0x1f(r10)
/* 803A83E4 003719A4  98 6A 00 20 */	stb r3, 0x20(r10)
/* 803A83E8 003719A8  98 6A 00 21 */	stb r3, 0x21(r10)
/* 803A83EC 003719AC  98 6A 00 22 */	stb r3, 0x22(r10)
/* 803A83F0 003719B0  98 6A 00 23 */	stb r3, 0x23(r10)
/* 803A83F4 003719B4  98 6A 00 24 */	stb r3, 0x24(r10)
/* 803A83F8 003719B8  98 6A 00 25 */	stb r3, 0x25(r10)
/* 803A83FC 003719BC  98 6A 00 26 */	stb r3, 0x26(r10)
/* 803A8400 003719C0  98 6A 00 27 */	stb r3, 0x27(r10)
/* 803A8404 003719C4  98 6A 00 28 */	stb r3, 0x28(r10)
/* 803A8408 003719C8  98 6A 00 29 */	stb r3, 0x29(r10)
/* 803A840C 003719CC  98 6A 00 2A */	stb r3, 0x2a(r10)
/* 803A8410 003719D0  98 6A 00 2B */	stb r3, 0x2b(r10)
/* 803A8414 003719D4  98 6A 00 2C */	stb r3, 0x2c(r10)
/* 803A8418 003719D8  98 6A 00 2D */	stb r3, 0x2d(r10)
/* 803A841C 003719DC  98 6A 00 2E */	stb r3, 0x2e(r10)
/* 803A8420 003719E0  98 6A 00 2F */	stb r3, 0x2f(r10)
/* 803A8424 003719E4  39 4A 00 30 */	addi r10, r10, 0x30
/* 803A8428 003719E8  42 00 FF 3C */	bdnz .L_803A8364
/* 803A842C 003719EC  3C 80 80 60 */	lis r4, mpv_clip_0_255_tbl@ha
/* 803A8430 003719F0  3C 60 80 60 */	lis r3, mpv_clip_0_255_base@ha
/* 803A8434 003719F4  38 84 60 A8 */	addi r4, r4, mpv_clip_0_255_tbl@l
/* 803A8438 003719F8  38 04 01 80 */	addi r0, r4, 0x180
/* 803A843C 003719FC  90 03 64 A8 */	stw r0, mpv_clip_0_255_base@l(r3)
/* 803A8440 00371A00  4E 80 00 20 */	blr 
.endfn mpvlib_InitClip0255

.fn mpvlib_InitPicAtr, local
/* 803A8444 00371A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A8448 00371A08  7C 08 02 A6 */	mflr r0
/* 803A844C 00371A0C  38 80 00 00 */	li r4, 0
/* 803A8450 00371A10  38 A0 00 04 */	li r5, 4
/* 803A8454 00371A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A8458 00371A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A845C 00371A1C  7C 7F 1B 78 */	mr r31, r3
/* 803A8460 00371A20  4B C5 BE F1 */	bl memset
/* 803A8464 00371A24  38 C0 00 00 */	li r6, 0
/* 803A8468 00371A28  38 60 FF FF */	li r3, -1
/* 803A846C 00371A2C  38 80 00 01 */	li r4, 1
/* 803A8470 00371A30  38 00 00 FF */	li r0, 0xff
/* 803A8474 00371A34  38 A0 00 03 */	li r5, 3
/* 803A8478 00371A38  90 DF 00 00 */	stw r6, 0(r31)
/* 803A847C 00371A3C  90 DF 00 04 */	stw r6, 4(r31)
/* 803A8480 00371A40  90 DF 00 08 */	stw r6, 8(r31)
/* 803A8484 00371A44  90 DF 00 0C */	stw r6, 0xc(r31)
/* 803A8488 00371A48  90 DF 00 10 */	stw r6, 0x10(r31)
/* 803A848C 00371A4C  90 DF 00 14 */	stw r6, 0x14(r31)
/* 803A8490 00371A50  90 DF 00 18 */	stw r6, 0x18(r31)
/* 803A8494 00371A54  90 DF 00 1C */	stw r6, 0x1c(r31)
/* 803A8498 00371A58  90 DF 00 20 */	stw r6, 0x20(r31)
/* 803A849C 00371A5C  90 DF 00 24 */	stw r6, 0x24(r31)
/* 803A84A0 00371A60  90 DF 00 28 */	stw r6, 0x28(r31)
/* 803A84A4 00371A64  90 DF 00 2C */	stw r6, 0x2c(r31)
/* 803A84A8 00371A68  90 DF 00 30 */	stw r6, 0x30(r31)
/* 803A84AC 00371A6C  90 DF 00 34 */	stw r6, 0x34(r31)
/* 803A84B0 00371A70  90 BF 00 38 */	stw r5, 0x38(r31)
/* 803A84B4 00371A74  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 803A84B8 00371A78  90 9F 00 40 */	stw r4, 0x40(r31)
/* 803A84BC 00371A7C  90 9F 00 44 */	stw r4, 0x44(r31)
/* 803A84C0 00371A80  90 DF 00 48 */	stw r6, 0x48(r31)
/* 803A84C4 00371A84  90 DF 00 4C */	stw r6, 0x4c(r31)
/* 803A84C8 00371A88  B0 7F 00 50 */	sth r3, 0x50(r31)
/* 803A84CC 00371A8C  B0 7F 00 52 */	sth r3, 0x52(r31)
/* 803A84D0 00371A90  98 DF 00 54 */	stb r6, 0x54(r31)
/* 803A84D4 00371A94  98 7F 00 55 */	stb r3, 0x55(r31)
/* 803A84D8 00371A98  98 7F 00 56 */	stb r3, 0x56(r31)
/* 803A84DC 00371A9C  98 7F 00 57 */	stb r3, 0x57(r31)
/* 803A84E0 00371AA0  98 DF 00 58 */	stb r6, 0x58(r31)
/* 803A84E4 00371AA4  98 9F 00 59 */	stb r4, 0x59(r31)
/* 803A84E8 00371AA8  98 DF 00 5A */	stb r6, 0x5a(r31)
/* 803A84EC 00371AAC  98 DF 00 5B */	stb r6, 0x5b(r31)
/* 803A84F0 00371AB0  98 DF 00 5C */	stb r6, 0x5c(r31)
/* 803A84F4 00371AB4  98 1F 00 5D */	stb r0, 0x5d(r31)
/* 803A84F8 00371AB8  98 7F 00 5E */	stb r3, 0x5e(r31)
/* 803A84FC 00371ABC  98 7F 00 5F */	stb r3, 0x5f(r31)
/* 803A8500 00371AC0  98 7F 00 60 */	stb r3, 0x60(r31)
/* 803A8504 00371AC4  98 DF 00 61 */	stb r6, 0x61(r31)
/* 803A8508 00371AC8  98 1F 00 62 */	stb r0, 0x62(r31)
/* 803A850C 00371ACC  98 1F 00 63 */	stb r0, 0x63(r31)
/* 803A8510 00371AD0  98 1F 00 64 */	stb r0, 0x64(r31)
/* 803A8514 00371AD4  90 DF 00 68 */	stw r6, 0x68(r31)
/* 803A8518 00371AD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A851C 00371ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A8520 00371AE0  7C 08 03 A6 */	mtlr r0
/* 803A8524 00371AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 803A8528 00371AE8  4E 80 00 20 */	blr 
.endfn mpvlib_InitPicAtr

.fn MPV_Finish, global
/* 803A852C 00371AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A8530 00371AF0  7C 08 02 A6 */	mflr r0
/* 803A8534 00371AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A8538 00371AF8  48 00 3F E1 */	bl MPVUMC_Finish
/* 803A853C 00371AFC  48 01 11 BD */	bl MPVSL_Finish
/* 803A8540 00371B00  48 00 6A 8D */	bl MPVM2V_Finish
/* 803A8544 00371B04  3C 60 80 60 */	lis r3, mpvlib_libwork@ha
/* 803A8548 00371B08  38 63 60 48 */	addi r3, r3, mpvlib_libwork@l
/* 803A854C 00371B0C  80 03 00 48 */	lwz r0, 0x48(r3)
/* 803A8550 00371B10  80 63 00 50 */	lwz r3, 0x50(r3)
/* 803A8554 00371B14  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 803A8558 00371B18  41 82 00 1C */	beq .L_803A8574
/* 803A855C 00371B1C  38 00 00 DF */	li r0, 0xdf
/* 803A8560 00371B20  38 80 00 00 */	li r4, 0
/* 803A8564 00371B24  7C 09 03 A6 */	mtctr r0
.L_803A8568:
/* 803A8568 00371B28  7C 03 23 AC */	dcbi r3, r4
/* 803A856C 00371B2C  38 84 00 20 */	addi r4, r4, 0x20
/* 803A8570 00371B30  42 00 FF F8 */	bdnz .L_803A8568
.L_803A8574:
/* 803A8574 00371B34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A8578 00371B38  7C 08 03 A6 */	mtlr r0
/* 803A857C 00371B3C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A8580 00371B40  4E 80 00 20 */	blr 
.endfn MPV_Finish

.fn MPV_Create, global
/* 803A8584 00371B44  3C 60 80 60 */	lis r3, mpvlib_libwork@ha
/* 803A8588 00371B48  38 63 60 48 */	addi r3, r3, mpvlib_libwork@l
/* 803A858C 00371B4C  80 03 00 54 */	lwz r0, 0x54(r3)
/* 803A8590 00371B50  80 63 00 58 */	lwz r3, 0x58(r3)
/* 803A8594 00371B54  7C 09 03 A6 */	mtctr r0
/* 803A8598 00371B58  2C 00 00 00 */	cmpwi r0, 0
/* 803A859C 00371B5C  40 81 00 1C */	ble .L_803A85B8
.L_803A85A0:
/* 803A85A0 00371B60  80 03 0B 08 */	lwz r0, 0xb08(r3)
/* 803A85A4 00371B64  2C 00 00 01 */	cmpwi r0, 1
/* 803A85A8 00371B68  40 82 00 08 */	bne .L_803A85B0
/* 803A85AC 00371B6C  48 00 00 10 */	b .L_803A85BC
.L_803A85B0:
/* 803A85B0 00371B70  38 63 0D C0 */	addi r3, r3, 0xdc0
/* 803A85B4 00371B74  42 00 FF EC */	bdnz .L_803A85A0
.L_803A85B8:
/* 803A85B8 00371B78  38 60 00 00 */	li r3, 0
.L_803A85BC:
/* 803A85BC 00371B7C  2C 03 00 00 */	cmpwi r3, 0
/* 803A85C0 00371B80  40 82 00 0C */	bne .L_803A85CC
/* 803A85C4 00371B84  38 60 00 00 */	li r3, 0
/* 803A85C8 00371B88  4E 80 00 20 */	blr
.L_803A85CC:
/* 803A85CC 00371B8C  3C 80 80 60 */	lis r4, mpvlib_libwork@ha
/* 803A85D0 00371B90  38 84 60 48 */	addi r4, r4, mpvlib_libwork@l
/* 803A85D4 00371B94  80 04 00 48 */	lwz r0, 0x48(r4)
/* 803A85D8 00371B98  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 803A85DC 00371B9C  41 82 00 20 */	beq .L_803A85FC
/* 803A85E0 00371BA0  38 00 00 6E */	li r0, 0x6e
/* 803A85E4 00371BA4  38 80 00 00 */	li r4, 0
/* 803A85E8 00371BA8  7C 09 03 A6 */	mtctr r0
.L_803A85EC:
/* 803A85EC 00371BAC  7C 03 23 AC */	dcbi r3, r4
/* 803A85F0 00371BB0  10 03 27 EC */	dcbz_l r3, r4
/* 803A85F4 00371BB4  38 84 00 20 */	addi r4, r4, 0x20
/* 803A85F8 00371BB8  42 00 FF F4 */	bdnz .L_803A85EC
.L_803A85FC:
/* 803A85FC 00371BBC  48 00 00 08 */	b mpvlib_InitHn
/* 803A8600 00371BC0  4E 80 00 20 */	blr
.endfn MPV_Create

.fn mpvlib_InitHn, local
/* 803A8604 00371BC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A8608 00371BC8  7C 08 02 A6 */	mflr r0
/* 803A860C 00371BCC  3C 80 80 60 */	lis r4, mpvlib_libwork@ha
/* 803A8610 00371BD0  39 63 03 80 */	addi r11, r3, 0x380
/* 803A8614 00371BD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A8618 00371BD8  3C A0 80 60 */	lis r5, mpvvlc_run_level_8@ha
/* 803A861C 00371BDC  38 84 60 48 */	addi r4, r4, mpvlib_libwork@l
/* 803A8620 00371BE0  3C C0 80 60 */	lis r6, mpvvlc_run_level_4@ha
/* 803A8624 00371BE4  BE E1 00 0C */	stmw r23, 0xc(r1)
/* 803A8628 00371BE8  3E E0 80 60 */	lis r23, mpvvlc_run_level_1@ha
/* 803A862C 00371BEC  3F 00 80 60 */	lis r24, mpvvlc_run_level_0a@ha
/* 803A8630 00371BF0  3F 20 80 60 */	lis r25, mpvvlc_run_level_0b@ha
/* 803A8634 00371BF4  3F 40 80 60 */	lis r26, mpvvlc_run_level_0c@ha
/* 803A8638 00371BF8  3D 80 80 60 */	lis r12, mpv_clip_0_255_base@ha
/* 803A863C 00371BFC  39 4B 01 80 */	addi r10, r11, 0x180
/* 803A8640 00371C00  39 23 01 00 */	addi r9, r3, 0x100
/* 803A8644 00371C04  39 03 01 80 */	addi r8, r3, 0x180
/* 803A8648 00371C08  3B C0 00 00 */	li r30, 0
/* 803A864C 00371C0C  7C 7F 1B 78 */	mr r31, r3
/* 803A8650 00371C10  80 E4 00 50 */	lwz r7, 0x50(r4)
/* 803A8654 00371C14  80 05 7B 24 */	lwz r0, mpvvlc_run_level_8@l(r5)
/* 803A8658 00371C18  3C A0 80 60 */	lis r5, mpvvlc_run_level_2@ha
/* 803A865C 00371C1C  3B 67 11 E0 */	addi r27, r7, 0x11e0
/* 803A8660 00371C20  3B 87 12 00 */	addi r28, r7, 0x1200
/* 803A8664 00371C24  90 03 09 90 */	stw r0, 0x990(r3)
/* 803A8668 00371C28  3B A7 11 00 */	addi r29, r7, 0x1100
/* 803A866C 00371C2C  38 E3 02 00 */	addi r7, r3, 0x200
/* 803A8670 00371C30  80 C6 7B 20 */	lwz r6, mpvvlc_run_level_4@l(r6)
/* 803A8674 00371C34  38 06 FF F0 */	addi r0, r6, -16
/* 803A8678 00371C38  38 C3 02 80 */	addi r6, r3, 0x280
/* 803A867C 00371C3C  90 03 09 94 */	stw r0, 0x994(r3)
/* 803A8680 00371C40  38 03 00 80 */	addi r0, r3, 0x80
/* 803A8684 00371C44  80 A5 7B 1C */	lwz r5, mpvvlc_run_level_2@l(r5)
/* 803A8688 00371C48  38 A5 FF E0 */	addi r5, r5, -32
/* 803A868C 00371C4C  90 A3 09 98 */	stw r5, 0x998(r3)
/* 803A8690 00371C50  38 A0 00 40 */	li r5, 0x40
/* 803A8694 00371C54  82 F7 7B 18 */	lwz r23, mpvvlc_run_level_1@l(r23)
/* 803A8698 00371C58  3A F7 FF E0 */	addi r23, r23, -32
/* 803A869C 00371C5C  92 E3 09 9C */	stw r23, 0x99c(r3)
/* 803A86A0 00371C60  83 18 7B 14 */	lwz r24, mpvvlc_run_level_0a@l(r24)
/* 803A86A4 00371C64  93 03 09 A0 */	stw r24, 0x9a0(r3)
/* 803A86A8 00371C68  83 39 7B 10 */	lwz r25, mpvvlc_run_level_0b@l(r25)
/* 803A86AC 00371C6C  93 23 09 A4 */	stw r25, 0x9a4(r3)
/* 803A86B0 00371C70  83 5A 7B 0C */	lwz r26, mpvvlc_run_level_0c@l(r26)
/* 803A86B4 00371C74  93 43 09 A8 */	stw r26, 0x9a8(r3)
/* 803A86B8 00371C78  93 63 09 B8 */	stw r27, 0x9b8(r3)
/* 803A86BC 00371C7C  93 83 09 BC */	stw r28, 0x9bc(r3)
/* 803A86C0 00371C80  93 A3 09 B0 */	stw r29, 0x9b0(r3)
/* 803A86C4 00371C84  81 8C 64 A8 */	lwz r12, mpv_clip_0_255_base@l(r12)
/* 803A86C8 00371C88  91 83 09 C0 */	stw r12, 0x9c0(r3)
/* 803A86CC 00371C8C  91 83 0A 90 */	stw r12, 0xa90(r3)
/* 803A86D0 00371C90  90 63 0A 94 */	stw r3, 0xa94(r3)
/* 803A86D4 00371C94  91 63 0A 98 */	stw r11, 0xa98(r3)
/* 803A86D8 00371C98  91 43 0A 9C */	stw r10, 0xa9c(r3)
/* 803A86DC 00371C9C  91 23 0D 0C */	stw r9, 0xd0c(r3)
/* 803A86E0 00371CA0  91 03 0D 10 */	stw r8, 0xd10(r3)
/* 803A86E4 00371CA4  90 E3 0D 14 */	stw r7, 0xd14(r3)
/* 803A86E8 00371CA8  90 C3 0D 18 */	stw r6, 0xd18(r3)
/* 803A86EC 00371CAC  90 63 0D 1C */	stw r3, 0xd1c(r3)
/* 803A86F0 00371CB0  90 03 0D 20 */	stw r0, 0xd20(r3)
/* 803A86F4 00371CB4  93 C3 0B 0C */	stw r30, 0xb0c(r3)
/* 803A86F8 00371CB8  38 63 0B 10 */	addi r3, r3, 0xb10
/* 803A86FC 00371CBC  48 01 30 31 */	bl MEM_Copy
/* 803A8700 00371CC0  3C 60 80 00 */	lis r3, 0x7FFFFFFF@ha
/* 803A8704 00371CC4  93 DF 0B 54 */	stw r30, 0xb54(r31)
/* 803A8708 00371CC8  38 03 FF FF */	addi r0, r3, 0x7FFFFFFF@l
/* 803A870C 00371CCC  93 DF 0B 58 */	stw r30, 0xb58(r31)
/* 803A8710 00371CD0  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 803A8714 00371CD4  90 1F 0B 50 */	stw r0, 0xb50(r31)
/* 803A8718 00371CD8  4B FF DA 61 */	bl MPVERR_InitErrInf
/* 803A871C 00371CDC  7F E3 FB 78 */	mr r3, r31
/* 803A8720 00371CE0  4B FF BE ED */	bl MPVCMC_InitObj
/* 803A8724 00371CE4  38 7F 0B 5C */	addi r3, r31, 0xb5c
/* 803A8728 00371CE8  4B FF FD 1D */	bl mpvlib_InitPicAtr
/* 803A872C 00371CEC  93 DF 0D 24 */	stw r30, 0xd24(r31)
/* 803A8730 00371CF0  3A E0 00 00 */	li r23, 0
/* 803A8734 00371CF4  93 DF 0D 28 */	stw r30, 0xd28(r31)
/* 803A8738 00371CF8  93 DF 0C FC */	stw r30, 0xcfc(r31)
/* 803A873C 00371CFC  93 DF 0D 00 */	stw r30, 0xd00(r31)
/* 803A8740 00371D00  93 DF 0D 04 */	stw r30, 0xd04(r31)
/* 803A8744 00371D04  93 DF 0D 08 */	stw r30, 0xd08(r31)
/* 803A8748 00371D08  93 DF 0D 38 */	stw r30, 0xd38(r31)
.L_803A874C:
/* 803A874C 00371D0C  7F E3 FB 78 */	mr r3, r31
/* 803A8750 00371D10  7E E4 BB 78 */	mr r4, r23
/* 803A8754 00371D14  38 A0 00 00 */	li r5, 0
/* 803A8758 00371D18  38 C0 00 00 */	li r6, 0
/* 803A875C 00371D1C  38 E0 00 00 */	li r7, 0
/* 803A8760 00371D20  4B FF E0 C1 */	bl MPV_SetUsrSj
/* 803A8764 00371D24  3A F7 00 01 */	addi r23, r23, 1
/* 803A8768 00371D28  2C 17 00 04 */	cmpwi r23, 4
/* 803A876C 00371D2C  41 80 FF E0 */	blt .L_803A874C
/* 803A8770 00371D30  7F E3 FB 78 */	mr r3, r31
/* 803A8774 00371D34  38 80 00 00 */	li r4, 0
/* 803A8778 00371D38  38 A0 00 00 */	li r5, 0
/* 803A877C 00371D3C  4B FF E0 BD */	bl MPV_SetPicUsrBuf
/* 803A8780 00371D40  38 00 00 00 */	li r0, 0
/* 803A8784 00371D44  7F E3 FB 78 */	mr r3, r31
/* 803A8788 00371D48  90 1F 0D A8 */	stw r0, 0xda8(r31)
/* 803A878C 00371D4C  48 01 0F 71 */	bl MPVSL_Create
/* 803A8790 00371D50  7F E3 FB 78 */	mr r3, r31
/* 803A8794 00371D54  48 00 68 3D */	bl MPVM2V_Create
/* 803A8798 00371D58  38 00 00 02 */	li r0, 2
/* 803A879C 00371D5C  90 7F 0D 54 */	stw r3, 0xd54(r31)
/* 803A87A0 00371D60  7F E3 FB 78 */	mr r3, r31
/* 803A87A4 00371D64  90 1F 0B 08 */	stw r0, 0xb08(r31)
/* 803A87A8 00371D68  BA E1 00 0C */	lmw r23, 0xc(r1)
/* 803A87AC 00371D6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A87B0 00371D70  7C 08 03 A6 */	mtlr r0
/* 803A87B4 00371D74  38 21 00 30 */	addi r1, r1, 0x30
/* 803A87B8 00371D78  4E 80 00 20 */	blr 
.endfn mpvlib_InitHn

.fn MPV_GetDctCnt, global
/* 803A87BC 00371D7C  80 03 0A 10 */	lwz r0, 0xa10(r3)
/* 803A87C0 00371D80  90 04 00 00 */	stw r0, 0(r4)
/* 803A87C4 00371D84  80 03 0A 14 */	lwz r0, 0xa14(r3)
/* 803A87C8 00371D88  90 05 00 00 */	stw r0, 0(r5)
/* 803A87CC 00371D8C  4E 80 00 20 */	blr 
.endfn MPV_GetDctCnt

.fn MPV_Destroy, global
/* 803A87D0 00371D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A87D4 00371D94  7C 08 02 A6 */	mflr r0
/* 803A87D8 00371D98  2C 03 00 00 */	cmpwi r3, 0
/* 803A87DC 00371D9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A87E0 00371DA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A87E4 00371DA4  7C 7F 1B 78 */	mr r31, r3
/* 803A87E8 00371DA8  40 82 00 0C */	bne .L_803A87F4
/* 803A87EC 00371DAC  38 00 FF FF */	li r0, -1
/* 803A87F0 00371DB0  48 00 00 24 */	b .L_803A8814
.L_803A87F4:
/* 803A87F4 00371DB4  80 03 0B 08 */	lwz r0, 0xb08(r3)
/* 803A87F8 00371DB8  2C 00 00 02 */	cmpwi r0, 2
/* 803A87FC 00371DBC  41 82 00 0C */	beq .L_803A8808
/* 803A8800 00371DC0  38 00 FF FF */	li r0, -1
/* 803A8804 00371DC4  48 00 00 10 */	b .L_803A8814
.L_803A8808:
/* 803A8808 00371DC8  3C 80 80 60 */	lis r4, mpvlib_mpvobj@ha
/* 803A880C 00371DCC  38 00 00 00 */	li r0, 0
/* 803A8810 00371DD0  90 64 64 AC */	stw r3, mpvlib_mpvobj@l(r4)
.L_803A8814:
/* 803A8814 00371DD4  2C 00 00 00 */	cmpwi r0, 0
/* 803A8818 00371DD8  41 82 00 18 */	beq .L_803A8830
/* 803A881C 00371DDC  3C 80 FF 03 */	lis r4, 0xFF030201@ha
/* 803A8820 00371DE0  38 60 00 00 */	li r3, 0
/* 803A8824 00371DE4  38 84 02 01 */	addi r4, r4, 0xFF030201@l
/* 803A8828 00371DE8  4B FF DA 15 */	bl MPVERR_SetCode
/* 803A882C 00371DEC  48 00 00 4C */	b .L_803A8878
.L_803A8830:
/* 803A8830 00371DF0  7F E3 FB 78 */	mr r3, r31
/* 803A8834 00371DF4  48 00 67 A5 */	bl MPVM2V_Destroy
/* 803A8838 00371DF8  7F E3 FB 78 */	mr r3, r31
/* 803A883C 00371DFC  48 01 0E C5 */	bl MPVSL_Destroy
/* 803A8840 00371E00  3C 60 80 60 */	lis r3, mpvlib_libwork@ha
/* 803A8844 00371E04  38 63 60 48 */	addi r3, r3, mpvlib_libwork@l
/* 803A8848 00371E08  80 03 00 48 */	lwz r0, 0x48(r3)
/* 803A884C 00371E0C  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 803A8850 00371E10  41 82 00 1C */	beq .L_803A886C
/* 803A8854 00371E14  38 00 00 6E */	li r0, 0x6e
/* 803A8858 00371E18  38 60 00 00 */	li r3, 0
/* 803A885C 00371E1C  7C 09 03 A6 */	mtctr r0
.L_803A8860:
/* 803A8860 00371E20  7C 1F 1B AC */	dcbi r31, r3
/* 803A8864 00371E24  38 63 00 20 */	addi r3, r3, 0x20
/* 803A8868 00371E28  42 00 FF F8 */	bdnz .L_803A8860
.L_803A886C:
/* 803A886C 00371E2C  38 00 00 01 */	li r0, 1
/* 803A8870 00371E30  38 60 00 00 */	li r3, 0
/* 803A8874 00371E34  90 1F 0B 08 */	stw r0, 0xb08(r31)
.L_803A8878:
/* 803A8878 00371E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A887C 00371E3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A8880 00371E40  7C 08 03 A6 */	mtlr r0
/* 803A8884 00371E44  38 21 00 10 */	addi r1, r1, 0x10
/* 803A8888 00371E48  4E 80 00 20 */	blr 
.endfn MPV_Destroy

.fn MPV_SetCond, global
/* 803A888C 00371E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A8890 00371E50  7C 08 02 A6 */	mflr r0
/* 803A8894 00371E54  2C 03 00 00 */	cmpwi r3, 0
/* 803A8898 00371E58  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A889C 00371E5C  40 82 00 50 */	bne .L_803A88EC
/* 803A88A0 00371E60  3C C0 80 60 */	lis r6, mpvlib_libwork@ha
/* 803A88A4 00371E64  54 80 10 3A */	slwi r0, r4, 2
/* 803A88A8 00371E68  38 C6 60 48 */	addi r6, r6, mpvlib_libwork@l
/* 803A88AC 00371E6C  80 E6 00 58 */	lwz r7, 0x58(r6)
/* 803A88B0 00371E70  80 C6 00 54 */	lwz r6, 0x54(r6)
/* 803A88B4 00371E74  7D 00 3A 14 */	add r8, r0, r7
/* 803A88B8 00371E78  7C C9 03 A6 */	mtctr r6
/* 803A88BC 00371E7C  2C 06 00 00 */	cmpwi r6, 0
/* 803A88C0 00371E80  40 81 00 20 */	ble .L_803A88E0
.L_803A88C4:
/* 803A88C4 00371E84  80 07 0B 08 */	lwz r0, 0xb08(r7)
/* 803A88C8 00371E88  2C 00 00 02 */	cmpwi r0, 2
/* 803A88CC 00371E8C  40 82 00 08 */	bne .L_803A88D4
/* 803A88D0 00371E90  90 A8 0B 10 */	stw r5, 0xb10(r8)
.L_803A88D4:
/* 803A88D4 00371E94  39 08 0D C0 */	addi r8, r8, 0xdc0
/* 803A88D8 00371E98  38 E7 0D C0 */	addi r7, r7, 0xdc0
/* 803A88DC 00371E9C  42 00 FF E8 */	bdnz .L_803A88C4
.L_803A88E0:
/* 803A88E0 00371EA0  3C C0 80 60 */	lis r6, mpvlib_libwork@ha
/* 803A88E4 00371EA4  38 C6 60 48 */	addi r6, r6, mpvlib_libwork@l
/* 803A88E8 00371EA8  48 00 00 50 */	b .L_803A8938
.L_803A88EC:
/* 803A88EC 00371EAC  40 82 00 0C */	bne .L_803A88F8
/* 803A88F0 00371EB0  38 00 FF FF */	li r0, -1
/* 803A88F4 00371EB4  48 00 00 24 */	b .L_803A8918
.L_803A88F8:
/* 803A88F8 00371EB8  80 03 0B 08 */	lwz r0, 0xb08(r3)
/* 803A88FC 00371EBC  2C 00 00 02 */	cmpwi r0, 2
/* 803A8900 00371EC0  41 82 00 0C */	beq .L_803A890C
/* 803A8904 00371EC4  38 00 FF FF */	li r0, -1
/* 803A8908 00371EC8  48 00 00 10 */	b .L_803A8918
.L_803A890C:
/* 803A890C 00371ECC  3C C0 80 60 */	lis r6, mpvlib_mpvobj@ha
/* 803A8910 00371ED0  38 00 00 00 */	li r0, 0
/* 803A8914 00371ED4  90 66 64 AC */	stw r3, mpvlib_mpvobj@l(r6)
.L_803A8918:
/* 803A8918 00371ED8  2C 00 00 00 */	cmpwi r0, 0
/* 803A891C 00371EDC  41 82 00 18 */	beq .L_803A8934
/* 803A8920 00371EE0  3C 80 FF 03 */	lis r4, 0xFF030202@ha
/* 803A8924 00371EE4  38 60 00 00 */	li r3, 0
/* 803A8928 00371EE8  38 84 02 02 */	addi r4, r4, 0xFF030202@l
/* 803A892C 00371EEC  4B FF D9 11 */	bl MPVERR_SetCode
/* 803A8930 00371EF0  48 00 00 18 */	b .L_803A8948
.L_803A8934:
/* 803A8934 00371EF4  38 C3 0B 10 */	addi r6, r3, 0xb10
.L_803A8938:
/* 803A8938 00371EF8  54 80 10 3A */	slwi r0, r4, 2
/* 803A893C 00371EFC  7C A6 01 2E */	stwx r5, r6, r0
/* 803A8940 00371F00  48 00 66 9D */	bl MPVM2V_SetCond
/* 803A8944 00371F04  38 60 00 00 */	li r3, 0
.L_803A8948:
/* 803A8948 00371F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A894C 00371F0C  7C 08 03 A6 */	mtlr r0
/* 803A8950 00371F10  38 21 00 10 */	addi r1, r1, 0x10
/* 803A8954 00371F14  4E 80 00 20 */	blr 
.endfn MPV_SetCond

.fn MPV_GetCond, global
/* 803A8958 00371F18  2C 03 00 00 */	cmpwi r3, 0
/* 803A895C 00371F1C  40 82 00 10 */	bne .L_803A896C
/* 803A8960 00371F20  3C C0 80 60 */	lis r6, mpvlib_libwork@ha
/* 803A8964 00371F24  38 C6 60 48 */	addi r6, r6, mpvlib_libwork@l
/* 803A8968 00371F28  48 00 00 4C */	b .L_803A89B4
.L_803A896C:
/* 803A896C 00371F2C  40 82 00 0C */	bne .L_803A8978
/* 803A8970 00371F30  38 00 FF FF */	li r0, -1
/* 803A8974 00371F34  48 00 00 24 */	b .L_803A8998
.L_803A8978:
/* 803A8978 00371F38  80 03 0B 08 */	lwz r0, 0xb08(r3)
/* 803A897C 00371F3C  2C 00 00 02 */	cmpwi r0, 2
/* 803A8980 00371F40  41 82 00 0C */	beq .L_803A898C
/* 803A8984 00371F44  38 00 FF FF */	li r0, -1
/* 803A8988 00371F48  48 00 00 10 */	b .L_803A8998
.L_803A898C:
/* 803A898C 00371F4C  3C C0 80 60 */	lis r6, mpvlib_mpvobj@ha
/* 803A8990 00371F50  38 00 00 00 */	li r0, 0
/* 803A8994 00371F54  90 66 64 AC */	stw r3, mpvlib_mpvobj@l(r6)
.L_803A8998:
/* 803A8998 00371F58  2C 00 00 00 */	cmpwi r0, 0
/* 803A899C 00371F5C  41 82 00 14 */	beq .L_803A89B0
/* 803A89A0 00371F60  3C 80 FF 03 */	lis r4, 0xFF030210@ha
/* 803A89A4 00371F64  38 60 00 00 */	li r3, 0
/* 803A89A8 00371F68  38 84 02 10 */	addi r4, r4, 0xFF030210@l
/* 803A89AC 00371F6C  4B FF D8 90 */	b MPVERR_SetCode
.L_803A89B0:
/* 803A89B0 00371F70  38 C3 0B 10 */	addi r6, r3, 0xb10
.L_803A89B4:
/* 803A89B4 00371F74  54 80 10 3A */	slwi r0, r4, 2
/* 803A89B8 00371F78  38 60 00 00 */	li r3, 0
/* 803A89BC 00371F7C  7C 06 00 2E */	lwzx r0, r6, r0
/* 803A89C0 00371F80  90 05 00 00 */	stw r0, 0(r5)
/* 803A89C4 00371F84  4E 80 00 20 */	blr
.endfn MPV_GetCond

.fn MPV_SetMbCb, global
/* 803A89C8 00371F88  90 83 0B 50 */	stw r4, 0xb50(r3)
/* 803A89CC 00371F8C  90 C3 0B 58 */	stw r6, 0xb58(r3)
/* 803A89D0 00371F90  90 A3 0B 54 */	stw r5, 0xb54(r3)
/* 803A89D4 00371F94  48 00 66 0C */	b MPVM2V_SetMbCb
.endfn MPV_SetMbCb

.fn MPVLIB_CheckHn, global
/* 803A89D8 00371F98  2C 03 00 00 */	cmpwi r3, 0
/* 803A89DC 00371F9C  40 82 00 0C */	bne .L_803A89E8
/* 803A89E0 00371FA0  38 60 FF FF */	li r3, -1
/* 803A89E4 00371FA4  4E 80 00 20 */	blr
.L_803A89E8:
/* 803A89E8 00371FA8  80 03 0B 08 */	lwz r0, 0xb08(r3)
/* 803A89EC 00371FAC  2C 00 00 02 */	cmpwi r0, 2
/* 803A89F0 00371FB0  41 82 00 0C */	beq .L_803A89FC
/* 803A89F4 00371FB4  38 60 FF FF */	li r3, -1
/* 803A89F8 00371FB8  4E 80 00 20 */	blr
.L_803A89FC:
/* 803A89FC 00371FBC  3C 80 80 60 */	lis r4, mpvlib_mpvobj@ha
/* 803A8A00 00371FC0  90 64 64 AC */	stw r3, mpvlib_mpvobj@l(r4)
/* 803A8A04 00371FC4  38 60 00 00 */	li r3, 0
/* 803A8A08 00371FC8  4E 80 00 20 */	blr 
.endfn MPVLIB_CheckHn

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj MPVLIB_version_str, global
	.asciz "\nCRI MPV/WII Ver.2.059 Build:Nov 13 2008 18:21:44\n"
	.asciz "Append: MW4199 WII30Jul2008Patch02\n"
	.balign 4
.endobj MPVLIB_version_str


.obj mpvlib_cond_dfl, local
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x5A5A5A5A
.endobj mpvlib_cond_dfl


.obj lbl_8051F814, global
	.asciz "2.059"
	.balign 4
	.4byte 0
.endobj lbl_8051F814

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj mpvlib_use_lc, global
	.skip 0x4
.endobj mpvlib_use_lc

.obj cri_verstr_ptr, local
	.skip 0x4
.endobj cri_verstr_ptr

.obj mpvlib_libwork, local
	.skip 0x5C
.endobj mpvlib_libwork

.skip 0x4

.obj mpv_clip_0_255_tbl, local
	.skip 0x400
.endobj mpv_clip_0_255_tbl

.obj mpv_clip_0_255_base, global
	.skip 0x4
.endobj mpv_clip_0_255_base

.obj mpvlib_mpvobj, local
	.skip 0x4
.endobj mpvlib_mpvobj

.obj mpvlib_oix, global
	.skip 0x4
.endobj mpvlib_oix

.obj mpvlib_iix, global
	.skip 0x4
.endobj mpvlib_iix
