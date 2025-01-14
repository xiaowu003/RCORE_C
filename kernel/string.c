#include "./include/types.h"
#include "./include/defs.h"

uint32 strlen(const int8 *src) {
    uint32 i;
    for (i = 0; src[i] != '\0'; i++) { }
    return i;
}

void* memcpy(void *dest, const void *src, uint64 len) {
    uint8 *d = (uint8*)dest, *s = (uint8*)src;

    while (len--) {
        *d++ = *s++;
    }

    return dest;
}


int32 memcmp(const void *src1, const void *src2, uint64 len) {
    uint8 *d, *s;
    int32 res;
    for (d = src1, s = src2; len > 0; d++, s++, len--) {
        if ((res = *d - *s) != 0) {
            break;
        }
    }
    return res;
}

void memmove(uint8 *dest, const uint8 *src, uint64 len) {
    uint8* temp = dest;
    for ( ; len > 0; len--) {
        *temp++ = *src++;
    }
}

void* memset(void *dest, uint8 val, uint32 len) {
    uint8 *ptr = (uint8*)dest;

    for ( ; len != 0; len--) {
        *ptr++ = val;
    }

    return dest;
}

int32 strcmp(const int8 *str1, const int8 *str2) {
    while (*str1 && *str2) {
        if (*str1 != *str2) {
            return (*str1) - (*str2);
        }

        ++str1;
        ++str2;
    }

    return (*str1) - (*str2);
}

int32 ifsubstr(char *str, char *substr, int str_len) {
    uint32 sub_len = strlen(substr);
    int32 start = 0;
    uint32 i = 0;
    uint32 j = 0;
    while (i < str_len && j < sub_len) {
        if (start == 1) {
            if (str[i++] == substr[j++]) {
                if (j == sub_len) {
                    return 1;
                }
                continue;
            } else {
                j = 0;
                start = 1;
            }
        } else {
            if (str[i++] == substr[0]) {
                start = 1;
                j++;
            }
        }
    }

	if (j < sub_len) {
		return 1;
	}

    return start;
}

int8* strcpy(int8 *dest, const int8 *src) {
    int8 *temp = dest;

    while (*src) {
        *temp++ = *src++;
    }

    *temp = '\0';

    return dest;
}

int8 *strcat(int8 *dest, const int8 *src) {
    int8 *temp = dest;

    while (*temp != '\0') {
        temp++;
    }

    while (*src) {
        *temp++ = *src++;
    }

    return dest;
}

