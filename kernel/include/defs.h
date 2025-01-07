#ifndef __DEFS_H__
#define __DEFS_H__

// string.c
uint32                  strlen(const int8 *);
void*                   memcpy(void *, const void *, uint64);
int32                   memcmp(const void *, const void *, uint64);
void                    memmove(uint8 *dest, const uint8 *, uint32);
void*                   memset(void *dest, uint8 val, uint32);
int32                   strcmp(const int8 *str1, const int8 *);
int32                   ifsubstr(char *, char *, int);
int8*                   strcpy(int8 *, const int8 *);
int8*                   strcat(int8 *, const int8 *);

// printk.c
void                    println(const int8 *fmt);
void                    print(const int8 *fmt);
void                    panic(const int8 *s);
int                     printk(const char *fmt, ...);

// sbi
void                    sbi_console_putchar(int8 ch);

// 推荐exit_code=0,=1时可以关闭，但是有报错 
void                    sbi_shut_down(uint32 exit_code);

#endif  /* defs.h */