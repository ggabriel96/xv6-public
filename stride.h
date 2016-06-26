#include "param.h"
#include "types.h"

#define MAXTICKS     (NPROC * NPROC) // maximum number of tickets a process is allowed to have
#define MINTICKS     1 // mininum number of tickets a process is allowed to have
#define SYSTICKS     (MAXTICKS / 2) // number of tickets for all system processes
#define DEFTICKS     (MAXTICKS / 2) // default number of tickets
#define MAGIC        100000
#define INF          18446744073709551615ull

#define min(a, b) ((a) < (b) ? (a) : (b))
#define max(a, b) ((a) > (b) ? (a) : (b))
#define left(x) ((x) << 1)
#define right(x) (left(x) + 1)

unsigned long rand(void);
