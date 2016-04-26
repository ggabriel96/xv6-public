#include "lottery.h"
#include "types.h"
#include "user.h"

#define STDOUT 1
#define TESTS 6
#define MAXPROC NPROC / 2
#define TIMEOUT 112345678

int
main(int argc, char *argv[])
{
  int t, i, j;
  for (t = 0; t < TESTS; t++) {
    for (i = 1; i <= MAXPROC; i++) {
      if (fork(i) == 0) {
        // child code
        for (j = 0; j < TIMEOUT; j++);
        exit();
      }
    }
    while (wait() != -1);
  }
  exit();
}
