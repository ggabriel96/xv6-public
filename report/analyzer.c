#include<stdio.h>
#include<stdlib.h>

#define NPROC 16
#define TESTS 100
#define MAXTICKS (64 * 64)

int finish[NPROC][TESTS];
int ticket[NPROC], indx[MAXTICKS];

int
main(void)
{
  int i, j, t;
  for (i = 0; i < NPROC; i++) {
    scanf("%d", &t);
    indx[(ticket[i] = t)] = i;
  }
  for (i = 0; i < TESTS; i++)
    for (j = 1; j <= NPROC; j++) {
      scanf("%d", &t);
      finish[indx[t]][i] = j;
    }
  printf("x = 1:1:%d;\n", TESTS);
  for (i = 0; i < NPROC; i++) {
    printf("y%d = [", i + 1);
    for (j = 0; j < TESTS; j++)
      printf("%d%s", finish[indx[ticket[i]]][j], j + 1 < TESTS ? ", " : "");
    printf("];\n");
  }
  printf("plot(");
  for (i = 0; i < NPROC; i++)
    printf("x, y%d, \"-s;%d tickets;\", \"linewidth\", 2, \"markersize\", 3%s", i + 1, ticket[i], i + 1 < NPROC ? ",\n" : ");\n");
  printf("xlabel(\"Test number\");\n");
  printf("ylabel(\"Finish position\");\n");
  printf("legend(\"location\", \"NorthEastOutside\");\n");
  printf("axis(\"ij\");\n");
  return 0;
}
