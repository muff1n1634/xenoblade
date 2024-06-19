#include "kyoshin/appgame/CGame.hpp"
#include "monolib/FixStr.hpp"
#include "monolib/lib/CLibHbm.hpp"
#include "monolib/work/CWorkSystem.hpp"
#include "monolib/CDesktop.hpp"
#include "kyoshin/appgame/cf/CTaskREvent.hpp"
#include "kyoshin/appgame/cf/CBattleManager.hpp"
#include "nw4r/lyt/lyt_arcResourceAccessor.h"

extern u32 func_8045FB08();
extern u32 func_8007E1B4();
extern void func_801BF93C();
extern UNKTYPE* func_804483FC();
extern float func_801C0014();
extern void func_801BFFAC(float f1, float f2);
extern void func_801644BC(u32 r3);
extern void func_80044FBC(u32 r3);
extern UNKTYPE* func_800426F0();

CGame* CGame::instance;
FixStr<64> lbl_80573C80;

void func_80039D08();

CGame::CGame(const char* name, CWorkThread* workThread) : CProc(name, workThread, 8) {
	unk1EC = 0;
	unk1F0 = 0;
	unk1F4 = -1;
	unk1F6 = -1;
	unk1F8 = 0;
	unk1FC = 0;
	unk21C = 0;
	unk220 = 1;
	unk224 = 1.0f;
	unk228 = 0;
	CGame::instance = this;
	func_8045D5C8(1);
	func_80444874(func_80039D08);
	this->func_80437EF0(4);
}

CGame::~CGame(){
	func_80444874(nullptr);
	func_8045D5C8(0);
	CGame::instance = nullptr;
}

CGame* getCGameInstancePtr(){
	return CGame::instance;
}

bool func_8003933C(){
	return func_80164910() == 0;
}

void func_80039364(){
	if(CGame::instance == 0) GameMain();
	else{
		if(CGameRestart::instance == nullptr){
			CDesktop* desktop = getCDesktopInstancePtr();
			const char* name = "CGameRestart";
			CGameRestart* gameRestart = new CGameRestart(name, desktop, 8);
			gameRestart->func_80438BD8(desktop, 0);
			UNKTYPE* temp_r3 = func_80455AA0();
			u32 r0 = *(u32*)((u32)temp_r3 + 0x4C);
			gameRestart->unk1E4 = r0;
			CGameRestart::instance = gameRestart;
			if(r0 != 0){
				gameRestart->unk1EC = CGame::instance->unk4C;
				CGame::instance->func_80437EF0(0);
			}
		}
	}
}

void func_80039438(bool r3){
	if(CGame::instance != nullptr){
		CGame::instance->unk220 = r3;
	}
}

void CGame::wkUpdate(){

}

void CGame::WorkThreadEvent2(){

}

void func_800395F4(u32 r3){
	if(CGame::instance != nullptr){
		if(CGame::instance->unk1EC != 0){
			if(r3 == 0){
				UNKTYPE* temp_r3 = func_804483FC();
				u16 temp_r3_1 = *(u16*)((u32)temp_r3 + 6);
				s16 temp_r0 = temp_r3_1 - 114;
				UNKTYPE* temp_r3_2 = func_804483FC(); //???
				s16 temp_r6 = *(s16*)((u32)temp_r3_2 + 4);
				func_80039694((CView*)(CGame::instance->unk1EC), 0, 56, temp_r6, temp_r0);
			}else{
				UNKTYPE* temp_r3 = func_804483FC();
				s16 temp_r31 = *(s16*)((u32)temp_r3 + 6);
				UNKTYPE* temp_r3_2 = func_804483FC(); //???
				CView* view = (CView*)(CGame::instance->unk1EC);
				s16 temp_r6 = *(s16*)((u32)temp_r3_2 + 4);
				func_80039694(view, 0, 0, temp_r6, temp_r31);
			}
		}
	}
}

void func_80039694(CView* view, s16 x, s16 y, s16 width, s16 height){
	view->func_8043CB7C(CRect16(x, y, width, height));
}

bool CGame::WorkThreadEvent4(){
	u32 result = func_8045FB08();
	if(result == 0) return false;
	UNKTYPE* temp_r3_1 = func_80455AA0();
	CProc::WorkThreadEvent4();
}

void CGame::WorkThreadEvent5(){

}

//dummy function to force the ArcResourceAccessor dtor to generate here
void dummy(){
	nw4r::lyt::ArcResourceAccessor* accessor = new nw4r::lyt::ArcResourceAccessor();
	accessor->Attach(0,0);
	delete accessor;
}

void GameMain(){
	if(CGame::instance != nullptr){
		CGame::instance->func_804391A8();
	}else{
		UNKTYPE* temp_r3 = func_80455AA0();
		u32 r29 = *(u32*)((u32)temp_r3 + 0x4C);
		CDesktop* desktop = getCDesktopInstancePtr();
		const char* name = "���_"; //"Bionis"
		CGame* cGame = new CGame(name, desktop);
		cGame->func_80438BD8(desktop, 0);
		cGame->unk1E4 = r29;
	}
}

void func_80039AC4(UNKTYPE* r3, u32 r4, u32 r5){
	if(CGame::instance != nullptr){
		if(func_800426F0() == nullptr){
			CGame* game = CGame::instance;
			u32 r0 = game->unk7C;
			if(!(r0 & 1)){
				if(game->func_80457CA4(r3, 5) != 0){
					game->unk200 = r4;
					game->unk204 = r5;
				}
			}
		}
	}
}

bool CGame::WorkThreadEvent6(){

}

void CGame::WorkEvent5(UNKTYPE* r4){
	if(func_8007E1B4() != 0){
		if(r4 != nullptr){
			int r0 = unk228;
			if(r0 == 0){
				unk224 = func_801C0014();
				func_801BFFAC(0,0);
				func_801644BC(1);
				if(getBattleManagerInstancePtr() != nullptr){
					cf::CBattleManager* battleManager = getBattleManagerInstancePtr();
					battleManager->vision.func_801A929C(1);
				}
				func_80044FBC(1);
				unk228++;
			}else{
				if(unk228 <= 1){
					func_801BFFAC(unk224,0);
					func_801644BC(0);
					if(getBattleManagerInstancePtr() != nullptr){
						cf::CBattleManager* battleManager = getBattleManagerInstancePtr();
						battleManager->vision.func_801A929C(0);
					}
				}
				func_80044FBC(0);
				unk228--;
				if(unk228 < 0) unk228 = 0;
			}
		}
	}
}

void func_80039D08(){
	if(CGame::instance != nullptr){
		if(func_8007E1B4() != 0){
			func_801BF93C();
		}
	}
}
