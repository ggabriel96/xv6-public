#include "param.h"

#define MAXTICKS     (NPROC * NPROC) // maximum number of tickets a process is allowed to have
#define MINTICKS     1 // mininum number of tickets a process is allowed to have
#define SYSTICKS     (MAXTICKS / 2) // number of tickets for all system processes
#define DEFTICKS     (MAXTICKS / 2) // default number of tickets

#define min(a, b) ((a) < (b) ? (a) : (b))
#define max(a, b) ((a) > (b) ? (a) : (b))

unsigned long rand(void);
