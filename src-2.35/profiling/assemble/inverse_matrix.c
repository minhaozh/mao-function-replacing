#include<stdio.h>
#include <stdlib.h>
#include<math.h>
#include <time.h>

float determinant(float [][25], float);

void cofactor(float [][25], float);

void transpose(float [][25], float [][25], float);

int main(int argc, char **argv) {
    float a[25][25], d;
    int i, j, k;
//    printf("Enter the order of the Matrix : ");
//  scanf("%d", &k);
    if (argc <= 1)
        k = 10;
    else
        k = atoi(argv[1]);
    srand((unsigned) time(NULL));
//  printf("Enter the elements of %d%d Matrix : \n", k, k);
    for (i = 0; i < k; i++) {
        for (j = 0; j < k; j++) {
            a[i][j] = i * k + j + 1.0 * rand() / RAND_MAX;
//         printf("%f %d %d %d\n",a[i][j],i,j,k);
        }
    }

    d = determinant(a, k);
    if (d == 0)
        printf("\nInverse of Entered Matrix is not possible\n");
    else
        cofactor(a, k);
}

/*For calculating Determinant of the Matrix */
float determinant(float a[25][25], float k) {
    float s = 1, det = 0, b[25][25];
    int i, j, m, n, c;
    if (k == 1) {
        return (a[0][0]);
    } else {
        det = 0;
        for (c = 0; c < k; c++) {
            m = 0;
            n = 0;
            for (i = 0; i < k; i++) {
                for (j = 0; j < k; j++) {
                    b[i][j] = 0;
                    if (i != 0 && j != c) {
                        b[m][n] = a[i][j];
                        if (n < (k - 2))
                            n++;
                        else {
                            n = 0;
                            m++;
                        }
                    }
                }
            }
            det = det + s * (a[0][c] * determinant(b, k - 1));
            s = -1 * s;
        }
    }

    return (det);
}

void cofactor(float num[25][25], float f) {
    float b[25][25], fac[25][25];
    int p, q, m, n, i, j;
    for (q = 0; q < f; q++) {
        for (p = 0; p < f; p++) {
            m = 0;
            n = 0;
            for (i = 0; i < f; i++) {
                for (j = 0; j < f; j++) {
                    if (i != q && j != p) {
                        b[m][n] = num[i][j];
                        if (n < (f - 2))
                            n++;
                        else {
                            n = 0;
                            m++;
                        }
                    }
                }
            }
            fac[q][p] = pow(-1, q + p) * determinant(b, f - 1);
        }
    }
    transpose(num, fac, f);
}

/*Finding transpose of matrix*/
void transpose(float num[25][25], float fac[25][25], float r) {
    int i, j;
    float b[25][25], inverse[25][25], d;

    for (i = 0; i < r; i++) {
        for (j = 0; j < r; j++) {
            b[i][j] = fac[j][i];
        }
    }
    d = determinant(num, r);
    for (i = 0; i < r; i++) {
        for (j = 0; j < r; j++) {
            inverse[i][j] = b[i][j] / d;
        }
    }
    printf("\n\n\nThe inverse of matrix is : \n");

    for (i = 0; i < r; i++) {
        for (j = 0; j < r; j++) {
            printf("\t%f", inverse[i][j]);
        }
        printf("\n");
    }
}
