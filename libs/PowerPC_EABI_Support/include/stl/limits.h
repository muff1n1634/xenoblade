#ifndef _LIMITS_H
#define _LIMITS_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

#define CHAR_BIT 8

#define SCHAR_MIN -127
#define SCHAR_MAX 127
#define UCHAR_MAX 255

#define CHAR_MIN 0
#define CHAR_MAX SCHAR_MAX

#define SHRT_MIN -0x7FFF
#define SHRT_MAX 0x7FFF
#define USHRT_MAX 0xFFFF

#define INT_MIN -0x7FFFFFFF
#define INT_MAX 0x7FFFFFFF
#define UINT_MAX 0xFFFFFFFF

#define LONG_MIN (-0x7FFFFFFFL - 1)
#define LONG_MAX 0x7FFFFFFFL
#define ULONG_MAX 0xFFFFFFFFUL

#define LLONG_MIN (-0x7FFFFFFFFFFFFFFFLL - 1)
#define LLONG_MAX 0x7FFFFFFFFFFFFFFFLL
#define ULLONG_MAX 0xFFFFFFFFFFFFFFFFULL

#ifdef __cplusplus
}
#endif
#endif
