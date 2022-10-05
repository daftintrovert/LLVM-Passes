#include <stdio.h>

#define MAX 50

//matrix multiplication by taking values from the user:

int main(){

    int arr[MAX][MAX];
    int brr[MAX][MAX];
    int arows , acolumns;
    int brows , bcolumns;

    printf("Rows and Columns in Matrix A: \n");
        scanf("%d %d" , &arows , &acolumns);

    printf("Rows and Columns in matrix B: \n");
        scanf("%d %d" , &brows , &bcolumns);

    printf("Enter the elements of matrix A: \n");

    for(int i = 0 ; i < arows ; i++){
        for(int j = 0 ; j < acolumns ; j++){
            scanf("%d" , &arr[i][j]);
        }
    }

    if(brows != acolumns){
        printf("Matrix Multiplication not possible ");
    }
    else{
    printf("Enter the elements of Matrix B: \n");
    for(int i = 0 ; i < brows ; i++){
        for(int j = 0 ; j < bcolumns ; j++){
            scanf("%d " , &brr[i][j]);
        }
    }
}

    int product[MAX][MAX];
    int sum = 0;

    for(int i = 0 ; i < arows ; i++){
        for(int j = 0 ; j < bcolumns ; j++){
            for(int k = 0 ; k <brows ; k++){
                sum = sum + arr[i][k] * arr[k][j];
            }

            product[i][j] = sum;
            sum = 0;
        }
    }

    printf("Resultant Matrix: \n");

    for(int i = 0 ; i < arows ; i++){
        for(int j = 0 ; j < bcolumns ; j++){
            printf("%d " , product[i][j]);
        }
    }

}