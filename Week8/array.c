#include<stdio.h>

int main(){
	int arr[4], i;
	for(i = 0; i < 4; i++){
		arr[i] = (i + 1 ) * 10;
	}
	printf("%d\n", *arr);
	return 0;
}
