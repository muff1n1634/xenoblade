#include "kyoshin/appgame/CBattery.hpp"
#include "monolib/MemManager.hpp"
#include "monolib/device/CDeviceVI.hpp"
#include <stdio.h>

extern void CLibLayout_addLayoutHeapEntry(UnkClass_8045F564*, int, int, const char*, int);
extern void func_80136E84(nw4r::lyt::Layout**, nw4r::lyt::ArcResourceAccessor*, const char*);
extern void func_80137038(nw4r::lyt::Layout*, void*, int, int);
extern void func_801390E0(UnkClass_80451720**);
extern void func_80139124(nw4r::lyt::ArcResourceAccessor*);
extern UnkClass_80451720* CDeviceFile_openFile1(int, const char*, void*, int, int);
extern void CDeviceFile_8044F154(UnkClass_80451720*, int);
extern void CDeviceFile_8044F414(UnkClass_80451720*);
extern void func_8045F778(UnkClass_8045F564*);
extern void func_8045F810(UnkClass_8045F564*);

CBattery::CBattery(u8 batteryLevel) : unk4(){
    unk14 = nullptr;
    mAccessor = nullptr;
    mLayout = nullptr;
    unk20 = false;
    unk21 = 1;
    unk22 = false;
    mBatteryLevel = batteryLevel;
}

CBattery::~CBattery(){
}

void CBattery::func_802B92A4(){
	int heapIndex = WorkThreadSystem::getHeapIndex();
	unk14 = CDeviceFile_openFile1(heapIndex, "/menu/Battery.arc", (void*)this, 0, 0);
	//likely member functions of the class
	CDeviceFile_8044F154(unk14, 3);
	CDeviceFile_8044F414(unk14);
}

void CBattery::func_802B92FC(){
	if(unk22 == false || unk20 == false) return;
	mLayout->Animate(0);
}

//r4 inherits from DrawInfo
void CBattery::func_802B9334(void* r4){
	if(unk22 == false || unk20 == false) return;
	func_80137038(mLayout, r4, 0, 1);
}

void CBattery::func_802B9364(){
	CDeviceVI::func_80448A44();
	func_801390E0(&unk14);
	unk20 = false;
	if(mLayout != nullptr){
		delete mLayout;
		mLayout = nullptr;
	}
	func_80139124(mAccessor);
	mAccessor = nullptr;
	func_8045F778(&unk4);
}

void CBattery::setBatteryLevel(u8 level){
	mBatteryLevel = level;
	updateBatteryImage();
}

/* Updates the current battery images by going through the individual images
for each bar, and only showing the ones for the current battery level. */
void CBattery::updateBatteryImage(){
	if(mLayout != nullptr){
		//Cap the battery level at 4
		if(mBatteryLevel > 4) mBatteryLevel = 4;

		char name[16];

		//Go through each image, and enable it if the index is <= battery level
		for(u8 num = 1; num <= 4; num++){
			sprintf(name, "pic_%02d", num); //Calculate the image name
			nw4r::lyt::Pane* pane = mLayout->unk10->FindPaneByName(name, true);
			if(pane != nullptr){
				pane->SetVisible(num <= mBatteryLevel);
			}
		}
	}
}

void CBattery::func_802B94B0(){
	if(mLayout != nullptr){
		unk22 = true;
		unk20 = true;
		updateBatteryImage();
	}
}

bool CBattery::OnFileEvent(CEventFile* eventFile){
	//Checks if the class pointer matches with the one in this class, and if so runs the event?
	if((u32)unk14 == eventFile->unk4){
		if(eventFile->unk0 != 1){
			func_802B9364();
			return true;
		}
		int heapIndex = WorkThreadSystem::getHeapIndex();
		CLibLayout_addLayoutHeapEntry(&unk4, heapIndex, 0xC00, "CBattery", 0); //Add the class to the layout heap
		Class_8045F858 sp8 = Class_8045F858(&unk4);
		void* r29 = unk14->unk4;
		unk14->unk4 = 0;
		mtl::MemManager::func_80434A4C(0);
		mAccessor = CLibLayout_getArcResourceAccessorInstance();
		mAccessor->Attach(r29, "arc");
		func_80136E84(&mLayout, mAccessor, "mf00_btry.brlyt"); //Open the layout file
		func_802B94B0();
		unk14 = nullptr;
		func_8045F810(&unk4);
		return true;
	}else return false;
}
