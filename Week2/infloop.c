//infloop.c
#include <stdio.h>
main()
{
int x,y;

y=3;
for (x=0; x<10; x++)
  {
   x=2;
  if (y > 10)
    x--;
  }
}
