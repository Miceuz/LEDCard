# 1 "main.c"
# 1 "<command-line>"
# 1 "main.c"
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 1 3
# 99 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 3
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/sfr_defs.h" 1 3
# 126 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/sfr_defs.h" 3
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/inttypes.h" 1 3
# 37 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/inttypes.h" 3
# 1 "/usr/lib/gcc/avr/4.7.0/include/stdint.h" 1 3 4


# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdint.h" 1 3 4
# 121 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 4 "/usr/lib/gcc/avr/4.7.0/include/stdint.h" 2 3 4
# 38 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/inttypes.h" 2 3
# 77 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/sfr_defs.h" 2 3
# 100 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 2 3
# 346 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 3
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/iotn44.h" 1 3
# 38 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/iotn44.h" 3
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/iotnx4.h" 1 3
# 39 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/iotn44.h" 2 3
# 347 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 2 3
# 432 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 3
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/portpins.h" 1 3
# 433 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 2 3

# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/common.h" 1 3
# 435 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 2 3

# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/version.h" 1 3
# 437 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 2 3


# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/fuse.h" 1 3
# 239 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 440 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 2 3


# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/lock.h" 1 3
# 443 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 2 3
# 2 "main.c" 2
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 1 3
# 43 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 3
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay_basic.h" 1 3
# 40 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay_basic.h" 3
static inline void _delay_loop_1(uint8_t __count) __attribute__((always_inline));
static inline void _delay_loop_2(uint16_t __count) __attribute__((always_inline));
# 80 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 44 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 2 3
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 1 3
# 127 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern double modf(double __x, double *__iptr);



extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));





extern double cbrt(double __x) __attribute__((__const__));
# 194 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 234 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 298 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 333 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 376 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 392 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 426 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern double round (double __x) __attribute__((__const__));
# 439 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 453 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 45 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 2 3
# 84 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 3
static inline void _delay_us(double __us) __attribute__((always_inline));
static inline void _delay_ms(double __ms) __attribute__((always_inline));
# 141 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 3
void
_delay_ms(double __ms)
{
 uint16_t __ticks;
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((8000000) / 1e3) * __ms;
# 161 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 186 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 3
}
# 223 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 3
void
_delay_us(double __us)
{
 uint8_t __ticks;
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((8000000) / 1e6) * __us;
# 243 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 261 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 3
}
# 3 "main.c" 2
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/sleep.h" 1 3
# 4 "main.c" 2
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/interrupt.h" 1 3
# 5 "main.c" 2

# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 1 3
# 47 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
# 1 "/usr/lib/gcc/avr/4.7.0/include/stddef.h" 1 3 4
# 213 "/usr/lib/gcc/avr/4.7.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 325 "/usr/lib/gcc/avr/4.7.0/include/stddef.h" 3 4
typedef int wchar_t;
# 48 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 2 3
# 68 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;


typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef int (*__compar_fn_t)(const void *, const void *);
# 106 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern void abort(void) __attribute__((__noreturn__));




extern int abs(int __i) __attribute__((__const__));
# 120 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern long labs(long __i) __attribute__((__const__));
# 143 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb,
       size_t __size, int (*__compar)(const void *, const void *));







extern div_t div(int __num, int __denom) __asm__("__divmodhi4") __attribute__((__const__));





extern ldiv_t ldiv(long __num, long __denom) __asm__("__divmodsi4") __attribute__((__const__));
# 175 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern void qsort(void *__base, size_t __nmemb, size_t __size,
    __compar_fn_t __compar);
# 208 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern long strtol(const char *__nptr, char **__endptr, int __base);
# 242 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern unsigned long strtoul(const char *__nptr, char **__endptr, int __base);
# 254 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern long atol(const char *__s) __attribute__((__pure__));
# 266 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern int atoi(const char *__s) __attribute__((__pure__));
# 278 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern void exit(int __status) __attribute__((__noreturn__));
# 290 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern void *malloc(size_t __size) __attribute__((__malloc__));






extern void free(void *__ptr);




extern size_t __malloc_margin;




extern char *__malloc_heap_start;




extern char *__malloc_heap_end;






extern void *calloc(size_t __nele, size_t __size) __attribute__((__malloc__));
# 338 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern void *realloc(void *__ptr, size_t __size) __attribute__((__malloc__));

extern double strtod(const char *__nptr, char **__endptr);

extern double atof(const char *__nptr);
# 364 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern int rand(void);



extern void srand(unsigned int __seed);






extern int rand_r(unsigned long *__ctx);
# 406 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern char *itoa(int __val, char *__s, int __radix);
# 434 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern char *ltoa(long int __val, char *__s, int __radix);
# 460 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern char *utoa(unsigned int __val, char *__s, int __radix);
# 486 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern char *ultoa(unsigned long int __val, char *__s, int __radix);
# 504 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern long random(void);




extern void srandom(unsigned long __seed);







extern long random_r(unsigned long *__ctx);
# 563 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern char *dtostre(double __val, char *__s, unsigned char __prec,
       unsigned char __flags);
# 580 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern char *dtostrf(double __val, signed char __width,
                     unsigned char __prec, char *__s);
# 7 "main.c" 2
# 1 "logvalues.h" 1
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/pgmspace.h" 1 3
# 87 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/pgmspace.h" 3
# 1 "/usr/lib/gcc/avr/4.7.0/include/stddef.h" 1 3 4
# 88 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/pgmspace.h" 2 3
# 1037 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/pgmspace.h" 3
extern const void * memchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
extern int memcmp_P(const void *, const void *, size_t) __attribute__((__pure__));
extern void *memccpy_P(void *, const void *, int __val, size_t);
extern void *memcpy_P(void *, const void *, size_t);
extern void *memmem_P(const void *, size_t, const void *, size_t) __attribute__((__pure__));
extern const void * memrchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
extern char *strcat_P(char *, const char *);
extern const char * strchr_P(const char *, int __val) __attribute__((__const__));
extern const char * strchrnul_P(const char *, int __val) __attribute__((__const__));
extern int strcmp_P(const char *, const char *) __attribute__((__pure__));
extern char *strcpy_P(char *, const char *);
extern int strcasecmp_P(const char *, const char *) __attribute__((__pure__));
extern char *strcasestr_P(const char *, const char *) __attribute__((__pure__));
extern size_t strcspn_P(const char *__s, const char * __reject) __attribute__((__pure__));
extern size_t strlcat_P (char *, const char *, size_t );
extern size_t strlcpy_P (char *, const char *, size_t );
extern size_t __strlen_P(const char *) __attribute__((__const__));
extern size_t strnlen_P(const char *, size_t) __attribute__((__const__));
extern int strncmp_P(const char *, const char *, size_t) __attribute__((__pure__));
extern int strncasecmp_P(const char *, const char *, size_t) __attribute__((__pure__));
extern char *strncat_P(char *, const char *, size_t);
extern char *strncpy_P(char *, const char *, size_t);
extern char *strpbrk_P(const char *__s, const char * __accept) __attribute__((__pure__));
extern const char * strrchr_P(const char *, int __val) __attribute__((__const__));
extern char *strsep_P(char **__sp, const char * __delim);
extern size_t strspn_P(const char *__s, const char * __accept) __attribute__((__pure__));
extern char *strstr_P(const char *, const char *) __attribute__((__pure__));
extern char *strtok_P(char *__s, const char * __delim);
extern char *strtok_rP(char *__s, const char * __delim, char **__last);

extern size_t strlen_PF (uint_farptr_t src) __attribute__((__const__));
extern size_t strnlen_PF (uint_farptr_t src, size_t len) __attribute__((__const__));
extern void *memcpy_PF (void *dest, uint_farptr_t src, size_t len);
extern char *strcpy_PF (char *dest, uint_farptr_t src);
extern char *strncpy_PF (char *dest, uint_farptr_t src, size_t len);
extern char *strcat_PF (char *dest, uint_farptr_t src);
extern size_t strlcat_PF (char *dst, uint_farptr_t src, size_t siz);
extern char *strncat_PF (char *dest, uint_farptr_t src, size_t len);
extern int strcmp_PF (const char *s1, uint_farptr_t s2) __attribute__((__pure__));
extern int strncmp_PF (const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
extern int strcasecmp_PF (const char *s1, uint_farptr_t s2) __attribute__((__pure__));
extern int strncasecmp_PF (const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
extern char *strstr_PF (const char *s1, uint_farptr_t s2);
extern size_t strlcpy_PF (char *dst, uint_farptr_t src, size_t siz);
extern int memcmp_PF(const void *, uint_farptr_t, size_t) __attribute__((__pure__));


__attribute__((__always_inline__)) static inline size_t strlen_P(const char * s);
static inline size_t strlen_P(const char *s) {
  return __builtin_constant_p(__builtin_strlen(s))
     ? __builtin_strlen(s) : __strlen_P(s);
}
# 2 "logvalues.h" 2
const uint8_t logValues[] __attribute__((__progmem__)) = {
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
1,
1,
1,
1,
1,
1,
1,
1,
1,
2,
2,
2,
2,
2,
2,
2,
3,
3,
3,
3,
3,
4,
4,
4,
4,
5,
5,
5,
5,
6,
6,
6,
6,
7,
7,
7,
8,
8,
8,
9,
9,
9,
10,
10,
10,
11,
11,
11,
12,
12,
13,
13,
14,
14,
14,
15,
15,
16,
16,
17,
17,
18,
18,
19,
19,
20,
21,
21,
22,
22,
23,
23,
24,
25,
25,
26,
27,
27,
28,
29,
29,
30,
31,
31,
32,
33,
34,
34,
35,
36,
37,
37,
38,
39,
40,
41,
42,
42,
43,
44,
45,
46,
47,
48,
49,
50,
51,
52,
52,
53,
54,
55,
56,
57,
59,
60,
61,
62,
63,
64,
65,
66,
67,
68,
69,
71,
72,
73,
74,
75,
77,
78,
79,
80,
82,
83,
84,
85,
87,
88,
89,
91,
92,
93,
95,
96,
98,
99,
100,
102,
103,
105,
106,
108,
109,
111,
112,
114,
115,
117,
119,
120,
122,
123,
125,
127,
128,
130,
132,
133,
135,
137,
138,
140,
142,
144,
145,
147,
149,
151,
153,
155,
156,
158,
160,
162,
164,
166,
168,
170,
172,
174,
176,
178,
180,
182,
184,
186,
188,
190,
192,
194,
197,
199,
201,
203,
205,
207,
210,
212,
214,
216,
219,
221,
223,
226,
228,
230,
233,
235,
237,
240,
242,
245,
247,
250,
252,
254
};
# 8 "main.c" 2

unsigned char i = 0;
# 34 "main.c"
void setLed(unsigned char);
void ledOff();
void startFrameTimer();
void blank();

unsigned int screenBuffer[18];
unsigned char currLed = 0;
unsigned char leds[]={
(0 << 4) | 1,
(0 << 4) | 4,
(0 << 4) | 3,
(0 << 4) | 2,
(1 << 4) | 0,
(1 << 4) | 2,
(1 << 4) | 3,
(1 << 4) | 4,
(2 << 4) | 0,
(2 << 4) | 1,
(2 << 4) | 3,
(2 << 4) | 4,
(3 << 4) | 0,
(3 << 4) | 1,
(3 << 4) | 2,
(3 << 4) | 4,
(4 << 4) | 0,
(4 << 4) | 1
};

void loop();
void lightCones();
void fadeInOut();


char currDemo = 0;
void (*demos[3])() = {loop, lightCones, fadeInOut};

void setup() {
  (*(volatile uint8_t *)((0x1A) + 0x20)) = 0;
  (*(volatile uint8_t *)((0x1B) + 0x20)) = 0;
  (*(volatile uint8_t *)((0x01) + 0x20)) |= (1 << (1));
  (*(volatile uint8_t *)((0x00) + 0x20)) |= (1 << (2));
  (*(volatile uint8_t *)((0x06) + 0x20)) &=~ (1 << (7));
  (*(volatile uint8_t *)((0x00) + 0x20)) |= (1 << (0));
  (*(volatile uint8_t *)((0x00) + 0x20)) |= (1 << (1));

  __asm__ __volatile__ ("sei" ::: "memory");

}

void sleepNow()
{
    (*(volatile uint8_t *)((0x1B) + 0x20)) = 0;
    (*(volatile uint8_t *)((0x1A) + 0x20)) = 0;
    (*(volatile uint8_t *)((0x18) + 0x20)) = 0;
    (*(volatile uint8_t *)((0x17) + 0x20)) = 0;
    (*(volatile uint8_t *)((0x2E) + 0x20)) = 0;
    do { (*(volatile uint8_t *)((0x35) + 0x20)) = (((*(volatile uint8_t *)((0x35) + 0x20)) & ~((1 << (3)) | (1 << (4)))) | ((1 << (4)))); } while(0);
    do { (*(volatile uint8_t *)((0x35) + 0x20)) |= (uint8_t)(1 << (5)); } while(0);
    (*(volatile uint8_t *)((0x3B) + 0x20)) |= (1 << (6));
    asm("sleep");
    (*(volatile uint8_t *)((0x3B) + 0x20)) &=~(1 << (6));
    do { (*(volatile uint8_t *)((0x35) + 0x20)) &= (uint8_t)(~(1 << (5))); } while(0);
    currDemo ++;
    if(currDemo > 3) {
     currDemo = 0;
    }
}


void __vector_1 (void) __attribute__ ((signal, used, externally_visible)); void __vector_1 (void) {
    setLed((0 << 4) | 1);
    (*(volatile uint8_t *)((0x3B) + 0x20)) &= ~(1 << (6));
}

void __vector_6 (void) __attribute__ ((signal, used, externally_visible)); void __vector_6 (void) {
    (*(volatile uint16_t *)((0x2C) + 0x20)) = 0;
    if(0 != screenBuffer[currLed]) {
     setLed(leds[currLed]);
        (*(volatile uint16_t *)((0x28) + 0x20)) = screenBuffer[currLed];
    } else {
        ledOff();
    }
    currLed++;
    if(currLed > 17) {
        currLed = 0;

    }
}

void __vector_7 (void) __attribute__ ((signal, used, externally_visible)); void __vector_7 (void) {
 ledOff();
}

void setLed(unsigned char led) {
  (*(volatile uint8_t *)((0x1A) + 0x20)) = (1 << (led >> 4)) | (1 << (led & 0x0f)) ;
  (*(volatile uint8_t *)((0x1B) + 0x20)) = (1 << (led >> 4));
}

void ledOff() {
  (*(volatile uint8_t *)((0x1B) + 0x20)) = 0;
  (*(volatile uint8_t *)((0x1A) + 0x20)) = 0;
}

char dd = -1;
unsigned char d = 9;
void loop() {
 stopFrameTimer();
 char ddd = dd;
 while (dd == ddd) {
  setLed(leds[i]);
  i++;
  if (i >= 19) {
   i = 0;
   d = d + dd;
   if (d == 0 || 10 == d) {
    dd = dd * -1;
   }
  }
  unsigned char j = 0;
  for (j = 0; j < d; j++) {
   _delay_ms(1);
  }
 }
}

void stopFrameTimer() {
 (*(volatile uint8_t *)((0x2E) + 0x20)) = 0;
}
void startFrameTimer() {
    (*(volatile uint8_t *)((0x0C) + 0x20)) |= (1 << (1)) | (1 << (2));
    (*(volatile uint16_t *)((0x2A) + 0x20)) = 12000;
    (*(volatile uint8_t *)((0x2E) + 0x20)) |= (1 << (0));
}

void randomScreen() {
 for (i = 0; i < 18; i++) {
  screenBuffer[i] = random() % 11900 + 100;
 }
}

void increaseBrightness(){
 int i;
 for (i = 0; i < 18; ++i) {
  screenBuffer[i] += 100;
  if(screenBuffer[i] > 11900) {
   screenBuffer[i] = 100;
  }
 }
}

unsigned int fadeIn(unsigned char i) {
 unsigned int brightness = 100;
 while (brightness < 11900) {
  screenBuffer[i] = brightness;
  brightness += 100;
  _delay_ms(2);
 }
 return brightness;
}

void fadeOut(unsigned char i) {
 unsigned int brightness = screenBuffer[i];
 while(brightness >= 100) {
  screenBuffer[i] = brightness;
  brightness -= 100;
  _delay_ms(6);
 }
}

char fadeoutLed = 0;

void fadeInOut() {
 blank();
 for(i = 0; i < 20; i++) {
  startFrameTimer();

  char fadeinLed = rand() % 18;
  while(fadeinLed == fadeoutLed) {
   fadeinLed = rand() % 18;
  }

  screenBuffer[fadeinLed] = 100;

  while ((screenBuffer[fadeinLed] < 11900 -100)) {
   screenBuffer[fadeinLed] += 100;
   if(screenBuffer[fadeoutLed] > 100) {
    screenBuffer[fadeoutLed] -= 100;
   }
   _delay_ms(2);
  }
  screenBuffer[fadeoutLed] = 0;
  fadeoutLed = fadeinLed;
 }
}

void pingOne(unsigned char i) {
 fadeIn(i);
 fadeOut(i);
 screenBuffer[i] = 0;
}

unsigned int brightness(unsigned char b) {
 if(0 == (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&logValues[b])); uint8_t __result; __asm__ ( "lpm %0, Z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; }))) {
  return 0;
 }

 return 100 + (11900 - 100) / 255 * (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&logValues[b])); uint8_t __result; __asm__ ( "lpm %0, Z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; }));
}

void blank() {
 for(i = 0; i < 19; i++) {
  screenBuffer[i] = 0;
 }
}

void lightCones() {
 startFrameTimer();
 fadeIn(0);
 for(i = 1; i < 19; i++) {
  screenBuffer[i-1] = 0;
  screenBuffer[i] = 11900;
  _delay_ms(50);
 }
 screenBuffer[0] = 11900;
 fadeOut(0);

 _delay_ms(50);
 screenBuffer[0] = 11900;
 _delay_ms(70);
 screenBuffer[1] = 11900;
 screenBuffer[8] = 11900;
 screenBuffer[9] = 11900;
 screenBuffer[17] = 11900;
 _delay_ms(70);
 screenBuffer[2] = 11900;
 screenBuffer[7] = 11900;
 screenBuffer[10] = 11900;
 screenBuffer[16] = 11900;
 _delay_ms(60);
 screenBuffer[3] = 11900;
 screenBuffer[6] = 11900;
 screenBuffer[11] = 11900;
 screenBuffer[15] = 11900;

 screenBuffer[4] = 11900;
 screenBuffer[5] = 11900;
 screenBuffer[12] = 11900;
 screenBuffer[13] = 11900;
 screenBuffer[14] = 11900;
 _delay_ms(500);
 int i = 0;
 while(screenBuffer[0] > 100) {
  for(i = 0; i < 19; i++) {
   screenBuffer[i] --;
  }
 }
}

void main() {
 setup();
 startFrameTimer();
 char t = -1;
 while(1){
  demos[currDemo]();
  if(((*(volatile uint8_t *)((0x16) + 0x20)) & (1 << (2)))) {
   sleepNow();
  }
 }

}
