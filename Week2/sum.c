#include <stdio.h>
main()
{
 int i,sum;
 sum=0;
 
for (i=0;i<10;i++)
  if (i<5)
	sum=sum+i;
     else
        sum=sum+((i-3)/2+(i/3));
printf("%d\n",sum);
}
