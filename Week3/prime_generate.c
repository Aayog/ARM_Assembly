#include<stdio.h>

int main(){
	int low, high;

	printf("Enter lower bound: ");
        scanf("%d",&low);
	printf("Enter higher bound: ");
	scanf("%d",&high);
	printf("The prime numbers between %d and %d are:",low,high);
	int flag=0;
	for(int i = low+1; i < high; i++){
		int count = 0;
		for(int j = 2; j < i; j++){
			if(i % j == 0){
				count++;
				break;
			}
		}
		if(count == 0){
			if(flag==1)printf(", ");
			printf("%d", i);
			flag=1;
		}
	}
	printf("\n");
}
