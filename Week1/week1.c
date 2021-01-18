#include<stdio.h>

int main(){
	int i,x;
	x = 0;	
	for(i=0; i<5;i++){
		if(i%2==0 || i==1) x+=i;
		else x-=i;
		printf("%d\n",x);
	}
}
