#include "lottery.h"
#include "types.h"
#include "user.h"

#define STDOUT 1
#define TESTS 100
#define MAXPROC NPROC / 4
#define TIMEOUT 100000000

int
main(int argc, char *argv[])
{
  int t, i, j;
  for (i = 1; i <= MAXPROC; i++)
    printf(STDOUT, "%d%s", (MAXPROC - i + 1) * NPROC, i + 1 <= MAXPROC ? " " : "\n");
  for (t = 0; t < TESTS; t++) {
    for (i = 1; i <= MAXPROC; i++)
      if (fork((MAXPROC - i + 1) * NPROC) == 0) {
        // child code
        for (j = 0; j < TIMEOUT; j++);
        exit();
      }
    while (wait() != -1);
  }
  exit();
}
