#ifndef __KTYPES_H__
#define __KTYPES_H__

typedef unsigned int    uint;
typedef unsigned short  ushort;
typedef unsigned char   uchar;

typedef unsigned char   uint8;
typedef unsigned short  uint16;
typedef unsigned int    uint32;
typedef unsigned long   uint64;

typedef signed char     int8;
typedef signed short    int16;
typedef signed int      int32;
typedef signed long     int64;

#define NULL            ((void *)0)

typedef enum {
    false,
    true
} bool;

typedef uint64          pte_t;
typedef uint64          pde_t;
typedef uint64*         pagetable_t;    // 512 PTEs

#endif /* Ktypes.h */