#ifndef NW4HBM_UT_RECT_H
#define NW4HBM_UT_RECT_H
#include <nw4hbm/math.h>
#include <nw4hbm/types_nw4hbm.h>

namespace nw4hbm {
namespace ut {

struct Rect {
    f32 left;   // at 0x0
    f32 top;    // at 0x4
    f32 right;  // at 0x8
    f32 bottom; // at 0xC

    Rect() : left(0.0f), top(0.0f), right(0.0f), bottom(0.0f) {}
    Rect(f32 l, f32 t, f32 r, f32 b) : left(l), top(t), right(r), bottom(b) {}
    ~Rect() {}

    void SetWidth(f32 width) { right = left + width; }
    f32 GetWidth() const { return right - left; }

    void SetHeight(f32 height) { bottom = top + height; }
    f32 GetHeight() const { return bottom - top; }

    void Normalize() {
        f32 l = left;
        f32 t = top;
        f32 r = right;
        f32 b = bottom;

        left = math::FSelect(r - l, l, r);   // min(r, l)
        right = math::FSelect(r - l, r, l);  // max(r, l)
        top = math::FSelect(b - t, t, b);    // min(b, t)
        bottom = math::FSelect(b - t, b, t); // max(b, t)
    }

    void MoveTo(f32 x, f32 y) {
        right = GetWidth() + x;
        left = x;
        bottom = GetHeight() + y;
        top = y;
    }
};

} // namespace ut
} // namespace nw4hbm

#endif
