//crash2.c
#include <stdio.h>
main()
{
int x,y,z[3];

y=54389;
for (x=10; x>=1; x--)
  z[y]=y/x;
printf("%d\n",z[0]);
}
