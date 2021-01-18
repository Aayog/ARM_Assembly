#include<stdio.h>
#include<stdlib.h>
#include<time.h>

#define ROW 40
#define COL 40

int** returnMatrix(){
	int** matrix = (int**) malloc(sizeof(int*) * COL);
 	int i, j;
	for(i = 0; i < COL; i++) {
		matrix[i] = malloc(sizeof(int*) * ROW);
	}

	for (i = 0; i < ROW; i++){
		for (j = 0; j < COL; j++){
			matrix[i][j] = 123;
		}
	}
	return matrix;
}
int addRowWise(int** matrix){
	int total = 0;	
	int i, j;
	for (i = 0; i < ROW; i++){
		for (j = 0; j < COL; j++){
			total+= matrix[i][j];
		}
	}
	return total;
}

int addColWise(int** matrix){
	int total = 0;	
	int i, j;
	for (j = 0; j < COL; j++){
		for (i = 0; i < ROW; i++){
			total+= matrix[i][j];
		}
	}
	return total;
}

int main(){
	int **matrix= returnMatrix();
	clock_t start,end;
    	double cpu_time;
	start = clock();
	int sum = addRowWise(matrix);
	//int sum = addColWise(matrix);
    	end = clock();
        cpu_time = ((double) (end - start))/ CLOCKS_PER_SEC;
	printf("Summation time for array of length 800 in row-wise method is: %lf secs\n", cpu_time);
	//printf("Summation time for array of length 800 in col-wise method is: %lf secs\n", cpu_time);
	return 0;
}
