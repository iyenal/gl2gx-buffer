# 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/dict.c"
# 1 "D:\\devkitPro\\portlibs\\thirdparty\\gl2gx\\libogc\\wii_release//"
# 1 "<command-line>"
# 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/dict.c"
# 42 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/dict.c"
# 1 "d:\\devkitpro\\devkitppc\\lib\\gcc\\powerpc-eabi\\4.8.2\\include\\stddef.h" 1 3 4
# 147 "d:\\devkitpro\\devkitppc\\lib\\gcc\\powerpc-eabi\\4.8.2\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 212 "d:\\devkitpro\\devkitppc\\lib\\gcc\\powerpc-eabi\\4.8.2\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 324 "d:\\devkitpro\\devkitppc\\lib\\gcc\\powerpc-eabi\\4.8.2\\include\\stddef.h" 3 4
typedef long int wchar_t;
# 43 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/dict.c" 2
# 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/dict-list.h" 1
# 67 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/dict-list.h"
typedef void *DictListKey;
typedef struct DictList DictList;
typedef struct DictListNode DictListNode;

DictList *__gl_dictListNewDict(void *frame,int (*leq)(void *frame, DictListKey key1, DictListKey key2))

                                                        ;

void __gl_dictListDeleteDict(DictList *dict);





DictListNode *__gl_dictListSearch(DictList *dict,DictListKey key);
DictListNode *__gl_dictListInsertBefore(DictList *dict,DictListNode *node,DictListKey key);
void __gl_dictListDelete(DictList *dict,DictListNode *node);
# 95 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/dict-list.h"
struct DictListNode {
  DictListKey key;
  DictListNode *next;
  DictListNode *prev;
};

struct DictList {
  DictListNode head;
  void *frame;
  int (*leq)(void *frame, DictListKey key1, DictListKey key2);
};
# 44 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/dict.c" 2
# 1 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/memalloc.h" 1
# 45 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/memalloc.h"
# 1 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\malloc.h" 1 3





# 1 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\_ansi.h" 1 3
# 15 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\_ansi.h" 3
# 1 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\newlib.h" 1 3
# 16 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\_ansi.h" 2 3
# 1 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\config.h" 1 3



# 1 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\machine\\ieeefp.h" 1 3
# 5 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\config.h" 2 3
# 1 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\features.h" 1 3
# 6 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\config.h" 2 3
# 17 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\_ansi.h" 2 3
# 7 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\malloc.h" 2 3
# 1 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\reent.h" 1 3
# 14 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\reent.h" 3
# 1 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\_types.h" 1 3
# 12 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\_types.h" 3
# 1 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\machine\\_types.h" 1 3






# 1 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\machine\\_default_types.h" 1 3
# 25 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\machine\\_default_types.h" 3
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 35 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\machine\\_default_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 45 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\machine\\_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 57 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\machine\\_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 75 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\machine\\_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 98 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\machine\\_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 8 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\machine\\_types.h" 2 3


typedef long long _fpos_t;


typedef long long _off_t;
# 13 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\_types.h" 2 3
# 1 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 47 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\lock.h" 3
extern int __libc_lock_init(int*,int);
extern int __libc_lock_close(int*);
extern int __libc_lock_acquire(int*);
extern int __libc_lock_try_acquire(int*);
extern int __libc_lock_release(int*);
# 14 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\_types.h" 2 3
# 24 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\_types.h" 3
typedef short __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;
# 56 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\_types.h" 3
typedef int _ssize_t;






# 1 "d:\\devkitpro\\devkitppc\\lib\\gcc\\powerpc-eabi\\4.8.2\\include\\stddef.h" 1 3 4
# 353 "d:\\devkitpro\\devkitppc\\lib\\gcc\\powerpc-eabi\\4.8.2\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\reent.h" 2 3






typedef unsigned long __ULong;
# 37 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 89 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 105 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 169 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                     ;
  int (* _write) (struct _reent *, void *, const char *, int)
                            ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 273 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 305 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 580 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 818 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\sys\\reent.h" 3
extern struct _reent *_impure_ptr __attribute__((__section__(".sdata")));
extern struct _reent *const _global_impure_ptr __attribute__((__section__(".sdata")));

void _reclaim_reent (struct _reent *);
# 8 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\malloc.h" 2 3


# 1 "d:\\devkitpro\\devkitppc\\lib\\gcc\\powerpc-eabi\\4.8.2\\include\\stddef.h" 1 3 4
# 11 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\malloc.h" 2 3


# 1 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\machine\\malloc.h" 1 3
# 14 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\malloc.h" 2 3
# 22 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\malloc.h" 3
struct mallinfo {
  int arena;
  int ordblks;
  int smblks;
  int hblks;
  int hblkhd;
  int usmblks;
  int fsmblks;
  int uordblks;
  int fordblks;
  int keepcost;
};



extern void * malloc (size_t);




extern void * _malloc_r (struct _reent *, size_t);


extern void free (void *);




extern void _free_r (struct _reent *, void *);


extern void * realloc (void *, size_t);




extern void * _realloc_r (struct _reent *, void *, size_t);


extern void * calloc (size_t, size_t);




extern void * _calloc_r (struct _reent *, size_t, size_t);


extern void * memalign (size_t, size_t);




extern void * _memalign_r (struct _reent *, size_t, size_t);


extern struct mallinfo mallinfo (void);




extern struct mallinfo _mallinfo_r (struct _reent *);


extern void malloc_stats (void);




extern void _malloc_stats_r (struct _reent *);


extern int mallopt (int, int);




extern int _mallopt_r (struct _reent *, int, int);


extern size_t malloc_usable_size (void *);




extern size_t _malloc_usable_size_r (struct _reent *, void *);





extern void * valloc (size_t);




extern void * _valloc_r (struct _reent *, size_t);


extern void * pvalloc (size_t);




extern void * _pvalloc_r (struct _reent *, size_t);


extern int malloc_trim (size_t);




extern int _malloc_trim_r (struct _reent *, size_t);




extern void mstats (char *);




extern void _mstats_r (struct _reent *, char *);
# 162 "d:\\devkitpro\\devkitppc\\powerpc-eabi\\include\\malloc.h" 3
extern void cfree (void *);
# 46 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/memalloc.h" 2






extern int __gl_memInit( size_t );
# 45 "D:/devkitPro/portlibs/thirdparty/gl2gx/libogc/../source/libtess/dict.c" 2


DictList *__gl_dictListNewDict(void *frame,int (*leq)(void *frame, DictListKey key1, DictListKey key2))

{
  DictList *dict = (DictList *) malloc( sizeof( DictList ));
  DictListNode *head;

  if (dict == ((void *)0)) return ((void *)0);

  head = &dict->head;

  head->key = ((void *)0);
  head->next = head;
  head->prev = head;

  dict->frame = frame;
  dict->leq = leq;

  return dict;
}


void __gl_dictListDeleteDict(DictList *dict)
{
  DictListNode *node;

  for( node = dict->head.next; node != &dict->head; node = node->next ) {
    free( node );
  }
  free( dict );
}


DictListNode *__gl_dictListInsertBefore(DictList *dict,DictListNode *node,DictListKey key)
{
  DictListNode *newNode;

  do {
    node = node->prev;
  } while( node->key != ((void *)0) && ! (*dict->leq)(dict->frame, node->key, key));

  newNode = (DictListNode *) malloc( sizeof( DictListNode ));
  if (newNode == ((void *)0)) return ((void *)0);

  newNode->key = key;
  newNode->next = node->next;
  node->next->prev = newNode;
  newNode->prev = node;
  node->next = newNode;

  return newNode;
}


void __gl_dictListDelete(DictList *dict,DictListNode *node)
{
  node->next->prev = node->prev;
  node->prev->next = node->next;
  free( node );
}


DictListNode *__gl_dictListSearch(DictList *dict,DictListKey key)
{
  DictListNode *node = &dict->head;

  do {
    node = node->next;
  } while( node->key != ((void *)0) && ! (*dict->leq)(dict->frame, key, node->key));

  return node;
}
