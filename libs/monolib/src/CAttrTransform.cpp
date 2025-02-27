#include "monolib/CAttrTransform.hpp"
#include <revolution/MTX.h>

namespace ml{
	void CAttrTransform::clear() {
    	vec1 = CVec3::zero;
    	mRotation = CVec3::zero;
    	PSMTXIdentity(mMtx1.m);
    	unkB8 = CVec3::zero;
    	unkC4 = CVec3::zero;
    	PSMTXIdentity(mMtx2.m); 
    	PSMTXIdentity(mMtx3.m);
    	unkD0.x = 0;
    	unkD0.y = 0;
    	unkD0.z = 0;
    	unkD0.w = 1;
    	mFlags = 0;
	}
}
