#include "lottery.h"
#include "types.h"
#include "user.h"

#define STDOUT 1
#define ITERATIONS 10
#define MAXPROC NPROC / 2
#define TIMEOUT 112345678

#define PLURAL(x) (((x) == 0 || (x) > 1) ? 1 : 0)

int
main(int argc, char *argv[])
{
  int t, i, j, first, pid, maxticks;
  int firstcount[MAXTICKS], tickets[NPROC];
  memset(firstcount, 0, sizeof firstcount);
  for (t = 1; t <= ITERATIONS; t++) {
    first = 1;
    for (i = 1; i <= MAXPROC; i++) {
      if ((pid = fork(i)) == 0) {
        // child code
        for (j = 0; j < TIMEOUT; j++);
        exit();
      }
      else if (pid > 0) {
        // parent code
        maxticks = i;
        tickets[pid - 1] = i; // tickets range from 0 to NPROC - 1, pids from 1 to NPROC
        printf(STDOUT, "fork %d succeeded with pid %d and %d ticket%s\n", i, pid, tickets[pid - 1], PLURAL(tickets[pid - 1]) ? "s" : "");
      }
      else
        printf(STDOUT, "fork %d failed\n", i);
    }
    while ((pid = wait()) != -1) {
      if (first) {
        // storing how many times a process with X tickets
        // finished first, rather than with pid Y
        firstcount[tickets[pid - 1] - 1]++;
        first = 0;
      }
      printf(STDOUT, "child with pid %d and %d ticket%s done\n", pid, tickets[pid - 1], PLURAL(tickets[pid - 1]) ? "s" : "");
    }
  }
  for (i = 0; i < maxticks; i++)
    printf(STDOUT, "process with %d tickets finished first %d time%s\n", i + 1, firstcount[i], PLURAL(firstcount[i]) ? "s" : "");
  exit();
}
