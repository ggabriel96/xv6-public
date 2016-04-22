#include "param.h"

#define MAXTICKS     NPROC // maximum number of tickets a process is allowed to have
#define MINTICKS     1 // mininum number of tickets a process is allowed to have
#define SYSTICKS     MAXTICKS / 2 // number of tickets for all system processes

#define min(a, b) ((a) < (b) ? (a) : (b))
#define max(a, b) ((a) > (b) ? (a) : (b))

unsigned int rand(void);