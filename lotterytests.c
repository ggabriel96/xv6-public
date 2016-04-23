#include "lottery.h"
#include "types.h"
#include "user.h"

#define STDOUT 1
#define ITERATIONS 11
#define MAXPROC NPROC / 2
#define TIMEOUT 112345678

#define PLURAL(x) (((x) == 0 || (x) > 1) ? 1 : 0)

unsigned long randstate = 1;
unsigned long
rand()
{
  randstate = randstate * 1664525 + 1013904223;
  return randstate;
}

int
main(int argc, char *argv[])
{
  int firstcount[MAXTICKS], tickets[NPROC];
  int t, i, j, first, pid, ticks, maxtick, mintick;
  memset(firstcount, 0, sizeof firstcount);
  mintick = MAXTICKS + 1; maxtick = MINTICKS - 1;
  for (t = 0; t < ITERATIONS; t++) {
    first = 1;
    for (i = 1; i <= MAXPROC; i++) {
      ticks = rand() % MAXTICKS + 1;
      if ((pid = fork(ticks)) == 0) {
        // child code
        for (j = 0; j < TIMEOUT; j++);
        exit();
      }
      else if (pid > 0) {
        // parent code
        mintick = min(ticks, mintick); maxtick = max(ticks, maxtick);
        tickets[pid - 1] = ticks;
        printf(STDOUT, "fork %d succeeded with pid %d and %d ticket%s\n", i, pid, ticks, PLURAL(ticks) ? "s" : "");
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
  printf(STDOUT, "mintick: %d, maxtick: %d\n", mintick, maxtick);
  for (ticks = mintick; ticks <= maxtick; ticks++)
    if (firstcount[ticks - 1] > 0)
      printf(STDOUT, "processes with %d ticket%s finished first %d time%s\n", ticks, PLURAL(ticks) ? "s" : "",
            firstcount[ticks - 1], PLURAL(firstcount[ticks - 1]) ? "s" : "");
  exit();
}
