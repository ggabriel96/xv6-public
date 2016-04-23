#include "lottery.h"
#include "types.h"
#include "user.h"

#define LOOPS 5
#define MAX 1123456789

int stdout = 1;
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
  int i, j, pid;
  for (i = 0; i < NPROC / 2; i++) {
    if ((pid = fork(rand() % MAXTICKS + 1)) == 0) {
      for (j = 0; j < MAX; j++);
      exit();
    }
    else if (pid > 0) {
      printf(stdout, "fork %d succeeded\n", i);
    }
    else {
      printf(stdout, "fork %d failed\n", i);
    }
  }
  while ((pid = wait()) != -1) {
    printf(stdout, "child %d done\n", pid);
  }
  exit();
}
