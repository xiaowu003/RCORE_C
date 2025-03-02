#ifndef STRING_H__
#define STRING_H__

// string.c
uint32                  strlen(const int8 *);
void*                   memcpy(void *, const void *, uint64);
int32                   memcmp(const void *, const void *, uint64);
void*                   memmove(void *dest, const void *, uint64);
void*                   memset(void *dest, uint8 val, uint32);
int32                   strcmp(const int8 *str1, const int8 *);
int32                   ifsubstr(char *, char *, int);
int8*                   strcpy(int8 *, const int8 *);
char*                   strncpy(char *, const char *, int);
int                     strncmp(const char *p, const char *q, uint64 n); 
int8*                   strcat(int8 *, const int8 *);

#endif