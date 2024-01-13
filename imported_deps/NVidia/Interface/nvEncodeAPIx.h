//
// Force nvEncodeAPI.h not to include Windows.h
//
#pragma once

#if defined(_WIN32) && !defined(_WINDOWS_)
#define _INC_WINAPIFAMILY
#define _INC_SDKDDKVER
#define _INC_WINDOWS
typedef struct tag_RECT
{
    long left;
    long top;
    long right;
    long bottom;
} _RECT;
#define RECT _RECT
#ifndef GUID_DEFINED
#define GUID_DEFINED
typedef struct 
{
    unsigned long  Data1;
    unsigned short Data2;
    unsigned short Data3;
    unsigned char  Data4[ 8 ];
} GUID;
#endif
#endif

#include "nvEncodeAPI.h"
