.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn SetArray__Q34nw4r3g3d9ResVtxPosFv, global
/* 803DD1C0 003A6780  80 A3 00 00 */	lwz r5, 0(r3)
/* 803DD1C4 003A6784  2C 05 00 00 */	cmpwi r5, 0
/* 803DD1C8 003A6788  4D 82 00 20 */	beqlr 
/* 803DD1CC 003A678C  80 05 00 08 */	lwz r0, 8(r5)
/* 803DD1D0 003A6790  38 60 00 09 */	li r3, 9
/* 803DD1D4 003A6794  2C 00 00 00 */	cmpwi r0, 0
/* 803DD1D8 003A6798  41 82 00 0C */	beq .L_803DD1E4
/* 803DD1DC 003A679C  7C 85 02 14 */	add r4, r5, r0
/* 803DD1E0 003A67A0  48 00 00 08 */	b .L_803DD1E8
.L_803DD1E4:
/* 803DD1E4 003A67A4  38 80 00 00 */	li r4, 0
.L_803DD1E8:
/* 803DD1E8 003A67A8  88 A5 00 1D */	lbz r5, 0x1d(r5)
/* 803DD1EC 003A67AC  4B F3 C8 C4 */	b GXSetArray
/* 803DD1F0 003A67B0  4E 80 00 20 */	blr 
.endfn SetArray__Q34nw4r3g3d9ResVtxPosFv

.fn GetArray__Q34nw4r3g3d9ResVtxPosCFPPCvPUc, global
/* 803DD1F4 003A67B4  2C 04 00 00 */	cmpwi r4, 0
/* 803DD1F8 003A67B8  41 82 00 24 */	beq .L_803DD21C
/* 803DD1FC 003A67BC  80 C3 00 00 */	lwz r6, 0(r3)
/* 803DD200 003A67C0  80 06 00 08 */	lwz r0, 8(r6)
/* 803DD204 003A67C4  2C 00 00 00 */	cmpwi r0, 0
/* 803DD208 003A67C8  41 82 00 0C */	beq .L_803DD214
/* 803DD20C 003A67CC  7C 06 02 14 */	add r0, r6, r0
/* 803DD210 003A67D0  48 00 00 08 */	b .L_803DD218
.L_803DD214:
/* 803DD214 003A67D4  38 00 00 00 */	li r0, 0
.L_803DD218:
/* 803DD218 003A67D8  90 04 00 00 */	stw r0, 0(r4)
.L_803DD21C:
/* 803DD21C 003A67DC  2C 05 00 00 */	cmpwi r5, 0
/* 803DD220 003A67E0  4D 82 00 20 */	beqlr 
/* 803DD224 003A67E4  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD228 003A67E8  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 803DD22C 003A67EC  98 05 00 00 */	stb r0, 0(r5)
/* 803DD230 003A67F0  4E 80 00 20 */	blr 
.endfn GetArray__Q34nw4r3g3d9ResVtxPosCFPPCvPUc

.fn CopyTo__Q34nw4r3g3d9ResVtxPosCFPv, global
/* 803DD234 003A67F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DD238 003A67F8  7C 08 02 A6 */	mflr r0
/* 803DD23C 003A67FC  80 A3 00 00 */	lwz r5, 0(r3)
/* 803DD240 003A6800  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DD244 003A6804  2C 05 00 00 */	cmpwi r5, 0
/* 803DD248 003A6808  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DD24C 003A680C  93 C1 00 08 */	stw r30, 8(r1)
/* 803DD250 003A6810  7C 9E 23 78 */	mr r30, r4
/* 803DD254 003A6814  41 82 00 24 */	beq .L_803DD278
/* 803DD258 003A6818  83 E5 00 00 */	lwz r31, 0(r5)
/* 803DD25C 003A681C  7C A4 2B 78 */	mr r4, r5
/* 803DD260 003A6820  7F C3 F3 78 */	mr r3, r30
/* 803DD264 003A6824  7F E5 FB 78 */	mr r5, r31
/* 803DD268 003A6828  48 00 A7 11 */	bl Copy32ByteBlocks__Q34nw4r3g3d6detailFPvPCvUl
/* 803DD26C 003A682C  7F C3 F3 78 */	mr r3, r30
/* 803DD270 003A6830  7F E4 FB 78 */	mr r4, r31
/* 803DD274 003A6834  4B F7 6D 6D */	bl DCStoreRange
.L_803DD278:
/* 803DD278 003A6838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DD27C 003A683C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DD280 003A6840  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DD284 003A6844  7C 08 03 A6 */	mtlr r0
/* 803DD288 003A6848  38 21 00 10 */	addi r1, r1, 0x10
/* 803DD28C 003A684C  4E 80 00 20 */	blr 
.endfn CopyTo__Q34nw4r3g3d9ResVtxPosCFPv

.fn SetArray__Q34nw4r3g3d9ResVtxNrmFv, global
/* 803DD290 003A6850  80 A3 00 00 */	lwz r5, 0(r3)
/* 803DD294 003A6854  2C 05 00 00 */	cmpwi r5, 0
/* 803DD298 003A6858  4D 82 00 20 */	beqlr 
/* 803DD29C 003A685C  80 05 00 08 */	lwz r0, 8(r5)
/* 803DD2A0 003A6860  38 60 00 0A */	li r3, 0xa
/* 803DD2A4 003A6864  2C 00 00 00 */	cmpwi r0, 0
/* 803DD2A8 003A6868  41 82 00 0C */	beq .L_803DD2B4
/* 803DD2AC 003A686C  7C 85 02 14 */	add r4, r5, r0
/* 803DD2B0 003A6870  48 00 00 08 */	b .L_803DD2B8
.L_803DD2B4:
/* 803DD2B4 003A6874  38 80 00 00 */	li r4, 0
.L_803DD2B8:
/* 803DD2B8 003A6878  88 A5 00 1D */	lbz r5, 0x1d(r5)
/* 803DD2BC 003A687C  4B F3 C7 F4 */	b GXSetArray
/* 803DD2C0 003A6880  4E 80 00 20 */	blr 
.endfn SetArray__Q34nw4r3g3d9ResVtxNrmFv

.fn GetArray__Q34nw4r3g3d9ResVtxNrmCFPPCvPUc, global
/* 803DD2C4 003A6884  2C 04 00 00 */	cmpwi r4, 0
/* 803DD2C8 003A6888  41 82 00 24 */	beq .L_803DD2EC
/* 803DD2CC 003A688C  80 C3 00 00 */	lwz r6, 0(r3)
/* 803DD2D0 003A6890  80 06 00 08 */	lwz r0, 8(r6)
/* 803DD2D4 003A6894  2C 00 00 00 */	cmpwi r0, 0
/* 803DD2D8 003A6898  41 82 00 0C */	beq .L_803DD2E4
/* 803DD2DC 003A689C  7C 06 02 14 */	add r0, r6, r0
/* 803DD2E0 003A68A0  48 00 00 08 */	b .L_803DD2E8
.L_803DD2E4:
/* 803DD2E4 003A68A4  38 00 00 00 */	li r0, 0
.L_803DD2E8:
/* 803DD2E8 003A68A8  90 04 00 00 */	stw r0, 0(r4)
.L_803DD2EC:
/* 803DD2EC 003A68AC  2C 05 00 00 */	cmpwi r5, 0
/* 803DD2F0 003A68B0  4D 82 00 20 */	beqlr 
/* 803DD2F4 003A68B4  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD2F8 003A68B8  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 803DD2FC 003A68BC  98 05 00 00 */	stb r0, 0(r5)
/* 803DD300 003A68C0  4E 80 00 20 */	blr 
.endfn GetArray__Q34nw4r3g3d9ResVtxNrmCFPPCvPUc

.fn CopyTo__Q34nw4r3g3d9ResVtxNrmCFPv, global
/* 803DD304 003A68C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DD308 003A68C8  7C 08 02 A6 */	mflr r0
/* 803DD30C 003A68CC  80 A3 00 00 */	lwz r5, 0(r3)
/* 803DD310 003A68D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DD314 003A68D4  2C 05 00 00 */	cmpwi r5, 0
/* 803DD318 003A68D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DD31C 003A68DC  93 C1 00 08 */	stw r30, 8(r1)
/* 803DD320 003A68E0  7C 9E 23 78 */	mr r30, r4
/* 803DD324 003A68E4  41 82 00 24 */	beq .L_803DD348
/* 803DD328 003A68E8  83 E5 00 00 */	lwz r31, 0(r5)
/* 803DD32C 003A68EC  7C A4 2B 78 */	mr r4, r5
/* 803DD330 003A68F0  7F C3 F3 78 */	mr r3, r30
/* 803DD334 003A68F4  7F E5 FB 78 */	mr r5, r31
/* 803DD338 003A68F8  48 00 A6 41 */	bl Copy32ByteBlocks__Q34nw4r3g3d6detailFPvPCvUl
/* 803DD33C 003A68FC  7F C3 F3 78 */	mr r3, r30
/* 803DD340 003A6900  7F E4 FB 78 */	mr r4, r31
/* 803DD344 003A6904  4B F7 6C 9D */	bl DCStoreRange
.L_803DD348:
/* 803DD348 003A6908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DD34C 003A690C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DD350 003A6910  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DD354 003A6914  7C 08 03 A6 */	mtlr r0
/* 803DD358 003A6918  38 21 00 10 */	addi r1, r1, 0x10
/* 803DD35C 003A691C  4E 80 00 20 */	blr 
.endfn CopyTo__Q34nw4r3g3d9ResVtxNrmCFPv

.fn SetArray__Q34nw4r3g3d9ResVtxClrF7_GXAttr, global
/* 803DD360 003A6920  80 A3 00 00 */	lwz r5, 0(r3)
/* 803DD364 003A6924  2C 05 00 00 */	cmpwi r5, 0
/* 803DD368 003A6928  4D 82 00 20 */	beqlr 
/* 803DD36C 003A692C  38 04 FF F5 */	addi r0, r4, -11
/* 803DD370 003A6930  28 00 00 01 */	cmplwi r0, 1
/* 803DD374 003A6934  4D 81 00 20 */	bgtlr 
/* 803DD378 003A6938  80 05 00 08 */	lwz r0, 8(r5)
/* 803DD37C 003A693C  7C 83 23 78 */	mr r3, r4
/* 803DD380 003A6940  2C 00 00 00 */	cmpwi r0, 0
/* 803DD384 003A6944  41 82 00 0C */	beq .L_803DD390
/* 803DD388 003A6948  7C 85 02 14 */	add r4, r5, r0
/* 803DD38C 003A694C  48 00 00 08 */	b .L_803DD394
.L_803DD390:
/* 803DD390 003A6950  38 80 00 00 */	li r4, 0
.L_803DD394:
/* 803DD394 003A6954  88 A5 00 1C */	lbz r5, 0x1c(r5)
/* 803DD398 003A6958  4B F3 C7 18 */	b GXSetArray
/* 803DD39C 003A695C  4E 80 00 20 */	blr 
.endfn SetArray__Q34nw4r3g3d9ResVtxClrF7_GXAttr

.fn GetArray__Q34nw4r3g3d9ResVtxClrCFPPCvPUc, global
/* 803DD3A0 003A6960  2C 04 00 00 */	cmpwi r4, 0
/* 803DD3A4 003A6964  41 82 00 24 */	beq .L_803DD3C8
/* 803DD3A8 003A6968  80 C3 00 00 */	lwz r6, 0(r3)
/* 803DD3AC 003A696C  80 06 00 08 */	lwz r0, 8(r6)
/* 803DD3B0 003A6970  2C 00 00 00 */	cmpwi r0, 0
/* 803DD3B4 003A6974  41 82 00 0C */	beq .L_803DD3C0
/* 803DD3B8 003A6978  7C 06 02 14 */	add r0, r6, r0
/* 803DD3BC 003A697C  48 00 00 08 */	b .L_803DD3C4
.L_803DD3C0:
/* 803DD3C0 003A6980  38 00 00 00 */	li r0, 0
.L_803DD3C4:
/* 803DD3C4 003A6984  90 04 00 00 */	stw r0, 0(r4)
.L_803DD3C8:
/* 803DD3C8 003A6988  2C 05 00 00 */	cmpwi r5, 0
/* 803DD3CC 003A698C  4D 82 00 20 */	beqlr 
/* 803DD3D0 003A6990  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD3D4 003A6994  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 803DD3D8 003A6998  98 05 00 00 */	stb r0, 0(r5)
/* 803DD3DC 003A699C  4E 80 00 20 */	blr 
.endfn GetArray__Q34nw4r3g3d9ResVtxClrCFPPCvPUc

.fn CopyTo__Q34nw4r3g3d9ResVtxClrCFPv, global
/* 803DD3E0 003A69A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DD3E4 003A69A4  7C 08 02 A6 */	mflr r0
/* 803DD3E8 003A69A8  80 A3 00 00 */	lwz r5, 0(r3)
/* 803DD3EC 003A69AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DD3F0 003A69B0  2C 05 00 00 */	cmpwi r5, 0
/* 803DD3F4 003A69B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DD3F8 003A69B8  93 C1 00 08 */	stw r30, 8(r1)
/* 803DD3FC 003A69BC  7C 9E 23 78 */	mr r30, r4
/* 803DD400 003A69C0  41 82 00 24 */	beq .L_803DD424
/* 803DD404 003A69C4  83 E5 00 00 */	lwz r31, 0(r5)
/* 803DD408 003A69C8  7C A4 2B 78 */	mr r4, r5
/* 803DD40C 003A69CC  7F C3 F3 78 */	mr r3, r30
/* 803DD410 003A69D0  7F E5 FB 78 */	mr r5, r31
/* 803DD414 003A69D4  48 00 A5 65 */	bl Copy32ByteBlocks__Q34nw4r3g3d6detailFPvPCvUl
/* 803DD418 003A69D8  7F C3 F3 78 */	mr r3, r30
/* 803DD41C 003A69DC  7F E4 FB 78 */	mr r4, r31
/* 803DD420 003A69E0  4B F7 6B C1 */	bl DCStoreRange
.L_803DD424:
/* 803DD424 003A69E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DD428 003A69E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DD42C 003A69EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DD430 003A69F0  7C 08 03 A6 */	mtlr r0
/* 803DD434 003A69F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803DD438 003A69F8  4E 80 00 20 */	blr 
.endfn CopyTo__Q34nw4r3g3d9ResVtxClrCFPv

.fn GetArray__Q34nw4r3g3d14ResVtxTexCoordCFPPCvPUc, global
/* 803DD43C 003A69FC  2C 04 00 00 */	cmpwi r4, 0
/* 803DD440 003A6A00  41 82 00 24 */	beq .L_803DD464
/* 803DD444 003A6A04  80 C3 00 00 */	lwz r6, 0(r3)
/* 803DD448 003A6A08  80 06 00 08 */	lwz r0, 8(r6)
/* 803DD44C 003A6A0C  2C 00 00 00 */	cmpwi r0, 0
/* 803DD450 003A6A10  41 82 00 0C */	beq .L_803DD45C
/* 803DD454 003A6A14  7C 06 02 14 */	add r0, r6, r0
/* 803DD458 003A6A18  48 00 00 08 */	b .L_803DD460
.L_803DD45C:
/* 803DD45C 003A6A1C  38 00 00 00 */	li r0, 0
.L_803DD460:
/* 803DD460 003A6A20  90 04 00 00 */	stw r0, 0(r4)
.L_803DD464:
/* 803DD464 003A6A24  2C 05 00 00 */	cmpwi r5, 0
/* 803DD468 003A6A28  4D 82 00 20 */	beqlr 
/* 803DD46C 003A6A2C  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD470 003A6A30  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 803DD474 003A6A34  98 05 00 00 */	stb r0, 0(r5)
/* 803DD478 003A6A38  4E 80 00 20 */	blr 
.endfn GetArray__Q34nw4r3g3d14ResVtxTexCoordCFPPCvPUc

.fn SetArray__Q34nw4r3g3d12ResVtxFurPosFUs, global
/* 803DD47C 003A6A3C  80 C3 00 00 */	lwz r6, 0(r3)
/* 803DD480 003A6A40  2C 06 00 00 */	cmpwi r6, 0
/* 803DD484 003A6A44  4D 82 00 20 */	beqlr 
/* 803DD488 003A6A48  80 E6 00 08 */	lwz r7, 8(r6)
/* 803DD48C 003A6A4C  38 60 00 00 */	li r3, 0
/* 803DD490 003A6A50  38 A0 00 00 */	li r5, 0
/* 803DD494 003A6A54  2C 07 00 00 */	cmpwi r7, 0
/* 803DD498 003A6A58  41 82 00 14 */	beq .L_803DD4AC
/* 803DD49C 003A6A5C  80 06 00 20 */	lwz r0, 0x20(r6)
/* 803DD4A0 003A6A60  7C 04 00 00 */	cmpw r4, r0
/* 803DD4A4 003A6A64  40 80 00 08 */	bge .L_803DD4AC
/* 803DD4A8 003A6A68  38 A0 00 01 */	li r5, 1
.L_803DD4AC:
/* 803DD4AC 003A6A6C  2C 05 00 00 */	cmpwi r5, 0
/* 803DD4B0 003A6A70  41 82 00 10 */	beq .L_803DD4C0
/* 803DD4B4 003A6A74  2C 04 00 00 */	cmpwi r4, 0
/* 803DD4B8 003A6A78  41 80 00 08 */	blt .L_803DD4C0
/* 803DD4BC 003A6A7C  38 60 00 01 */	li r3, 1
.L_803DD4C0:
/* 803DD4C0 003A6A80  2C 03 00 00 */	cmpwi r3, 0
/* 803DD4C4 003A6A84  38 60 00 09 */	li r3, 9
/* 803DD4C8 003A6A88  41 82 00 18 */	beq .L_803DD4E0
/* 803DD4CC 003A6A8C  80 A6 00 24 */	lwz r5, 0x24(r6)
/* 803DD4D0 003A6A90  7C 06 3A 14 */	add r0, r6, r7
/* 803DD4D4 003A6A94  7C 84 29 D6 */	mullw r4, r4, r5
/* 803DD4D8 003A6A98  7C 84 02 14 */	add r4, r4, r0
/* 803DD4DC 003A6A9C  48 00 00 08 */	b .L_803DD4E4
.L_803DD4E0:
/* 803DD4E0 003A6AA0  38 80 00 00 */	li r4, 0
.L_803DD4E4:
/* 803DD4E4 003A6AA4  88 A6 00 1D */	lbz r5, 0x1d(r6)
/* 803DD4E8 003A6AA8  4B F3 C5 C8 */	b GXSetArray
/* 803DD4EC 003A6AAC  4E 80 00 20 */	blr 
.endfn SetArray__Q34nw4r3g3d12ResVtxFurPosFUs

.fn DCStore__Q34nw4r3g3d9ResVtxPosFb, global
/* 803DD4F0 003A6AB0  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD4F4 003A6AB4  2C 04 00 00 */	cmpwi r4, 0
/* 803DD4F8 003A6AB8  80 83 00 00 */	lwz r4, 0(r3)
/* 803DD4FC 003A6ABC  41 82 00 08 */	beq .L_803DD504
/* 803DD500 003A6AC0  4B F7 6A E0 */	b DCStoreRange
.L_803DD504:
/* 803DD504 003A6AC4  4B F7 6B 3C */	b DCStoreRangeNoSync
.endfn DCStore__Q34nw4r3g3d9ResVtxPosFb

.fn DCStore__Q34nw4r3g3d9ResVtxNrmFb, global
/* 803DD508 003A6AC8  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD50C 003A6ACC  2C 04 00 00 */	cmpwi r4, 0
/* 803DD510 003A6AD0  80 83 00 00 */	lwz r4, 0(r3)
/* 803DD514 003A6AD4  41 82 00 08 */	beq .L_803DD51C
/* 803DD518 003A6AD8  4B F7 6A C8 */	b DCStoreRange
.L_803DD51C:
/* 803DD51C 003A6ADC  4B F7 6B 24 */	b DCStoreRangeNoSync
.endfn DCStore__Q34nw4r3g3d9ResVtxNrmFb

.fn DCStore__Q34nw4r3g3d9ResVtxClrFb, global
/* 803DD520 003A6AE0  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD524 003A6AE4  2C 04 00 00 */	cmpwi r4, 0
/* 803DD528 003A6AE8  80 83 00 00 */	lwz r4, 0(r3)
/* 803DD52C 003A6AEC  41 82 00 08 */	beq .L_803DD534
/* 803DD530 003A6AF0  4B F7 6A B0 */	b DCStoreRange
.L_803DD534:
/* 803DD534 003A6AF4  4B F7 6B 0C */	b DCStoreRangeNoSync
.endfn DCStore__Q34nw4r3g3d9ResVtxClrFb

.fn DCStore__Q34nw4r3g3d14ResVtxTexCoordFb, global
/* 803DD538 003A6AF8  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD53C 003A6AFC  2C 04 00 00 */	cmpwi r4, 0
/* 803DD540 003A6B00  80 83 00 00 */	lwz r4, 0(r3)
/* 803DD544 003A6B04  41 82 00 08 */	beq .L_803DD54C
/* 803DD548 003A6B08  4B F7 6A 98 */	b DCStoreRange
.L_803DD54C:
/* 803DD54C 003A6B0C  4B F7 6A F4 */	b DCStoreRangeNoSync
.endfn DCStore__Q34nw4r3g3d14ResVtxTexCoordFb

.fn DCStore__Q34nw4r3g3d12ResVtxFurVecFb, global
/* 803DD550 003A6B10  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD554 003A6B14  2C 04 00 00 */	cmpwi r4, 0
/* 803DD558 003A6B18  80 83 00 00 */	lwz r4, 0(r3)
/* 803DD55C 003A6B1C  41 82 00 08 */	beq .L_803DD564
/* 803DD560 003A6B20  4B F7 6A 80 */	b DCStoreRange
.L_803DD564:
/* 803DD564 003A6B24  4B F7 6A DC */	b DCStoreRangeNoSync
.endfn DCStore__Q34nw4r3g3d12ResVtxFurVecFb

.fn DCStore__Q34nw4r3g3d12ResVtxFurPosFb, global
/* 803DD568 003A6B28  80 63 00 00 */	lwz r3, 0(r3)
/* 803DD56C 003A6B2C  2C 04 00 00 */	cmpwi r4, 0
/* 803DD570 003A6B30  80 83 00 00 */	lwz r4, 0(r3)
/* 803DD574 003A6B34  41 82 00 08 */	beq .L_803DD57C
/* 803DD578 003A6B38  4B F7 6A 68 */	b DCStoreRange
.L_803DD57C:
/* 803DD57C 003A6B3C  4B F7 6A C4 */	b DCStoreRangeNoSync
.endfn DCStore__Q34nw4r3g3d12ResVtxFurPosFb
