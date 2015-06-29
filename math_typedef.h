/* 
 * File:   math_typedef.h
 * Author: TERU
 *
 * Created on 2015/06/28, 3:52
 */

#ifndef MATH_TYPEDEF_H
#define	MATH_TYPEDEF_H
namespace tmath{
//unsigned 

typedef unsigned char   uint8_t;
#define UINT8_MAX       0xFF
#define UINT8_MIN

typedef unsigned short  uint16_t;
#define UINT16_MAX      0xFFFF
#define UINT16_MIN      0x0000

typedef unsigned int    uint32_t;
#define UINT32_MAX      0xFFFFFFFF
#define UINT32_MIN      0x00000000

typedef unsigned long   uint64_t;
#define UINT64_MAX      0xFFFFFFFFFFFFFFFF
#define UINT64_MIN      0x0000000000000000

//signed 

typedef signed char     int8_t;
#define INT8_MAX        +0x7F
#define INT8_MIN        -0x80

typedef signed short    int16_t;
#define INT16_MAX       +0x7FFF
#define INT16_MIN       -0x8000

typedef signed int      int32_t;
#define INT32_MAX       +0x7FFFFFFF
#define INT32_MIN       -0x80000000

typedef signed long     int64_t;
#define INT64_MAX       +0x7FFFFFFFFFFFFFFFF
#define INT64_MIN       -0x80000000000000000

}
#endif	/* MATH_TYPEDEF_H */

