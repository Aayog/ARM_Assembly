/*
Author: Aayog Koirala
Date: 9/6/2019
Desc: CSCI230 HW01 Question no. 5
*/

#include<stdio.h>
#include <stdlib.h> 
#include <string.h>

int main(int argc, char *argv[]){
	//If 3 arguments not provided program will exit with message
	if(argc != 3){
		printf("Not enough arguments\n");
		printf("Usage: ./convert.out decimal_num base_to_convert\n");
		return 1;
	}
	//converting the arguments to numbers
	int decimal = atoi(argv[1]);
	int base = atoi(argv[2]);
	int original = decimal;
	//Checking if the numbers are negative in which case the program exits
	if(decimal < 0 || base < 0){
		printf("Error! You entered the negative number!\n");
		return 1;
	}
	//if the number is less than base no need to do conversion
	if(decimal < base){
		printf("(%d)10=(%d)%d", decimal, decimal, base);
		return 1;
	}

	char converted[20], output[20];
	int count = 0;
	//This does the divisions and stores the remainder
	while(decimal >= base){
		int remain = decimal % base;
		converted[count] = (char) (remain) + 48;
		decimal /= base;
		count++;
	}
	converted[count] = (char) (decimal) + 48;

	int i, j = 0, len = strlen(converted);
	//to reverse the remainder so we can get the number
  	for (i = len - 1; i >= 0; i--)
  	{
  		output[j++] = converted[i];
  	}
  	output[i] = '\0';
	printf("(%d)10=( %s)%d\n", original, output, base);
}
