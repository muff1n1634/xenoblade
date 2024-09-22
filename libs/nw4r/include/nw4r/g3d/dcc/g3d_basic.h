#ifndef NW4R_G3D_BASIC_H
#define NW4R_G3D_BASIC_H
#include "math_types.h"
#include "g3d_anmchr.h"
#include "g3d_anmtexsrt.h"

namespace nw4r
{
    namespace g3d
    {
        namespace detail
        {
            namespace WorldMtxAttr
            {
                inline bool IsScaleOne(u32 flags)
                {
                    return (flags & 0x40000000);
                }

                inline u32 AnmScaleOne(u32 flags)
                {
                    return (flags | 0x40000000);
                }

                inline u32 AnmNotScaleOne(u32 flags)
                {
                    return (flags & 0x3fffffff);
                }

                inline u32 AnmScaleUniform(u32 flags)
                {
                    return (flags | 0x10000000);
                }

                inline u32 AnmNotScaleUniform(u32 flags)
                {
                    return (flags & 0x0fffffff);
                }
            }

            namespace dcc
            {
                bool CalcTexMtx_Basic(math::MTX34 *pMtx, bool bSet, const TexSrt &srt, TexSrt::Flag flag);
                u32 CalcWorldMtx_Basic(math::MTX34 *pW, math::VEC3 *pS, const math::MTX34 *pW_1,
                                       const math::VEC3 *pS_1, u32 attr_1, const ChrAnmResult *pResult);
            }
        }
    }
}

#endif
