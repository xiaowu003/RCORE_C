#ifndef FILE_H__
#define FILE_H__

#include "fs.h"
#include "proc.h"
#include "types.h"

#define     PIPESIZE    (512)
#define     FILEPOOLSIZE    (NPROC * FD_BUFFER_SIZE)

// in-memory copy of an inode, it can be used to quickly
// locate file entities on disk
struct inode {
    uint32 dev;     // device number
    uint32 inum;    // inode number
    int ref;        // reference count
    int valid;      // inode has been read from disk?
    short type;     // copy of disk inode
    uint32 size;
    uint32 addrs[NDIRECT + 1];
};

// define a file in memory that provides information about
// the current use of the file and the corresponding inode location
struct file {
    enum {
        FD_NONE = 0,
        FD_INODE,
        FD_STDIO
    } type;
    int ref;
    char readable;
    char writable;
    struct inode *ip;   // FD_INODE
    uint32 off;
};


// a new specific fd
enum {
    STDIN = 0,
    STDOUT = 1,
    STDERR = 2,
};

#define O_RDONLY 0x000
#define O_WRONLY 0x001
#define O_RDWR 0x002
#define O_CREATE 0x200
#define O_TRUNC 0x400


extern struct file filepool[FILEPOOLSIZE];

void                fileclose(struct file *);
struct file *       filealloc(void);
uint64              inodewrite(struct file *, uint64, uint64);
uint64              inoderead(struct file *, uint64, uint64);
struct file *       stdio_init(int);
int                 show_all_files();

#endif  // file.h