#include<stdio.h>

#define NPROC 32
#define TESTS 100

int finish[NPROC][TESTS];

int
main(void)
{
  int i, j, t;
  for (i = 0; i < TESTS; i++)
    for (j = 1; j <= NPROC; j++) {
      scanf("%d", &t);
      finish[t - 1][i] = j;
    }
  printf("x = 1:1:%d;\n", TESTS);
  for (i = 1; i <= NPROC; i++) {
    printf("y%d = [", i);
    for (j = 0; j < TESTS; j++)
      printf("%d%s", finish[i - 1][j], j + 1 < TESTS ? ", " : "");
    printf("];\n");
  }
  printf("plot(");
  for (i = 1; i <= NPROC; i++)
    printf("x, y%d, \"-s;%d tickets;\", \"linewidth\", 2, \"markersize\", 3%s", i, i, i + 1 <= NPROC ? ",\n" : ");\n");
  return 0;
}
