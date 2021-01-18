#include<stdio.h>

int[][] returnMatrix(int row, int col){
	int[row][col] matrix;
	int i, j;
	for (i = 0; i < row; i++){
		for (j = 0; j < col; j++){
			matrix[i][j] = 1;
		}
	}
	return matrix;
}

int main(){
	int row = 10, col = 10;
	int[row][col] = returnMatrix(row, col);
	for(
}
