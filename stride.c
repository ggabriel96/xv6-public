#include "stride.h"

unsigned long randstate = 1;

unsigned long
rand()
{
  randstate = randstate * 1664525 + 1013904223;
  return randstate;
}
