#include "lottery.h"
#include "types.h"
#include "user.h"

#define STDOUT 1
#define ITERATIONS 112
#define MAXPROC NPROC
#define TIMEOUT 112345678

#define PLURAL(x) (((x) == 0 || (x) > 1) ? 1 : 0)

int
main(int argc, char *argv[])
{
  int t, i, j, first, pid, fpid, lpid;
  int tickets[NPROC], firstcount[NPROC];
  memset(firstcount, 0, sizeof firstcount);
  for (t = 1; t <= ITERATIONS; t++) {
    fpid = 0; first = 1;
    for (i = 1; i <= MAXPROC; i++) {
      if ((pid = fork(i)) == 0) {
        // child code
        for (j = 0; j < TIMEOUT; j++);
        exit();
      }
      else if (pid > 0) {
        // parent code
        lpid = pid; // last pid
        if (fpid == 0) fpid = pid; // first pid
        tickets[pid - 1] = i; // tickets range from 0 to NPROC - 1, pids from 1 to NPROC
        printf(STDOUT, "fork %d succeeded with pid %d and %d ticket%s\n", i, pid, tickets[pid - 1], PLURAL(tickets[pid - 1]) ? "s" : "");
      }
      else
        printf(STDOUT, "fork %d failed\n", i);
    }
    while ((pid = wait()) != -1) {
      if (first) {
        firstcount[pid - 1]++;
        first = 0;
      }
      printf(STDOUT, "child with pid %d and %d ticket%s done\n", pid, tickets[pid - 1], PLURAL(tickets[pid - 1]) ? "s" : "");
    }
  }
  printf(STDOUT, "fpid %d, lpid %d\n", fpid, lpid);
//  for (i = 0; i < NPROC; i++)
//    printf(STDOUT, "child with pid %d finished first %d time%s\n", i + 1, firstcount[i], PLURAL(firstcount[i - 1]) ? "s" : "");
  for (i = fpid; i <= lpid; i++)
    printf(STDOUT, "child with pid %d finished first %d time%s\n", i, firstcount[i - 1], PLURAL(firstcount[i - 1]) ? "s" : "");
  exit();
}
