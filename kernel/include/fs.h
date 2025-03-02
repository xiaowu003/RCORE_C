#ifndef FS_H__
#define FS_H__

#include "types.h"

// on-disk file system format.
// both the kernel and user program use this header file.

#define NFILE       100         // open files per system
#define NINODE      50          // maximum number of active i-nodes
#define NDEV        10          // maximum major device number
#define ROOTDEV     1           // device number of file system root disk
#define MAXOPBLOCKS 10          // max # of blocks any FS op writes
#define NBUF        (MAXOPBLOCKS * 3) // size of disk block cache
#define FSSIZE      1000        // size of file system in blocks
#define MAXPATH     128         // maximum file path name

#define ROOTINO     1           // root i-number
#define BSIZE       1024        // block size

// Disk layout:
// [ boot block | super block | inode blocks | free bit map | data blocks]
//
// mkfs computes the super block and builds an initial file system.
// the super block describes the disk layout:
struct superblock {
    uint64 magic;       // must be FSMAGIC
    uint64 size;        // size of file system image (blocks)
    uint64 nblocks;     // number of data blocks
    uint64 ninodes;     // number of inodes
    uint64 inodestart;  // block number of first inode block
    uint64 bmapstart;   // block number of first free map block
};

#define FSMAGIC 0x10203040

#define NDIRECT 12
#define NINDIRECT   (BSIZE / sizeof(uint32))
#define MAXFILE (NDIRECT + NINDIRECT)

// File type
#define T_DIR   1   // Directory
#define T_FILE  2   // File

// on-disk inode structure
// 储存磁盘 inode 信息，主要是文件类型和数据块的索引， 其大小影响磁盘布局
struct dinode {
    uint16 type;                // file type
    uint16 pad[3];
    uint32 size;                // size of file (bytes)
    uint32 addrs[NDIRECT + 1];    // data block addresses
};

// Inodes per block. 每个磁盘块包含inode的数量
#define IPB (BSIZE / sizeof(struct dinode))

// Block containing inode i,得到inode所在的磁盘块号
#define IBLOCK(i, spb) ((i) / IPB + spb.inodestart)

// Bitmap bits per block
#define BPB (BSIZE * 8)

// Block of free map containing bit for block b
// 得到储存该磁盘块状态信息的 位图 在哪个 位图块
#define BBLOCK(b, spb) ((b) / BPB + spb.bmapstart)

// Directory is a file containingg a sequence of dirent structures.
#define DIRSIZ  14

// 目录对应的数据块的内容，本质是filename到file inode_num的一个map
// 这里为了简单，就存为一个“dirent”数组，查找的时候遍历对比
struct dirent {
    uint16  inum;
    char name[DIRSIZ];
};

// file.h
struct inode;

void                fsinit();
int                 dirlink(struct inode *, char *, uint);
struct inode *      dirlookup(struct inode *, char *, uint32 *);
struct inode *      ialloc(uint, short);
struct inode *      idup(struct inode *);
void                iinit();
void                ivalid(struct inode *);
void                iput(struct inode *);
void                iunlock(struct inode *);
void                iunlockput(struct inode *);
void                iupdate(struct inode *);
struct inode *      namei(char *);
struct inode *      root_dir();
int                 readi(struct inode *, int, uint64, uint, uint);
int                 writei(struct inode *, int, uint64, uint, uint);
void                itrunc(struct inode *);
int                 dirls(struct inode *);


#endif  // FS_H__