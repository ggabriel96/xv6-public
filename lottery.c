#include "lottery.h"

unsigned long randstate = 0;
//unsigned long randstate = 1;

unsigned int
rand()
{
//  randstate = randstate * 1664525 + 1013904223;
    randstate++;
  return randstate;
}
