#include "./include/types.h"
#include "./include/string.h"

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
    uint8 *s1, *s2;
    
    s1 = src1;
    s2 = src2;

    while (len-- > 0) {
        if (s1 != s2) {
            return *s1 - *s2;
        }
        s1++, s2++;
    }

    return 0;
}

void* memmove(void *dest, const void *src, uint64 n) {
	const char *s;
	char *d;

	s = src;
	d = dest;
	if (s < d && s + n > d) {
		s += n;
		d += n;
		while (n-- > 0)
			*--d = *--s;
	} else
		while (n-- > 0)
			*d++ = *s++;

	return dest;
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

// 复制t的前n个字符到s中
char* strncpy(char *s, const char *t, int n) {
    char *os;

    os = s;
    while (n-- > 0 && (*s++ = *t++) != 0) { }
    while (n-- > 0) {
        *s++ = 0;
    }
    return os;
}

int strncmp(const char *p, const char *q, uint64 n) {
    while (n > 0 && *p && *p == *q) {
        n--;
        p++;
        q++;
    }

    if (n == 0) {
        return 0;
    }

    return (uint8)*p - (uint8)*q;
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

