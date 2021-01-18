// Crash1.c
#include <stdio.h>
main()
{
	int x,y;
	y=54389;
	for (x=10; x>=0; x--)
	y=y/x;
	printf("%d\n",y);
}