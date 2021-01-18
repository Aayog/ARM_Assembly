#include<stdio.h>

int main(){
	int arr_1[12], arr_2[12], arr_src[12], i;
	for (i = 0; i < 12; i++){
		arr_1[i] = i + 1;
		arr_2[i] = i + 1;
	}
	for (i = 0; i < 12; i++){
		arr_src[i] = arr_1[i] + arr_2[i];
	}
	return 0;
}
