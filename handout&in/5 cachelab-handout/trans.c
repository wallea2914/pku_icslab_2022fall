//姓名：赵伟城
//学号：2100013165

/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    REQUIRES(M > 0);
    REQUIRES(N > 0);

    /*
    *策略：分为8*8的块，每一块再使用8个临时变量(刚好cache的一行）存A中的值
    */
    if (M == 32 && N == 32)
    {
        int i;
        int t0, t1, t2, t3, t4, t5, t6, t7;//临时变量
        int block1, block2;//分块
        for (block1 = 0; block1 < 32; block1 += 8)
        {
            for (block2 = 0; block2 < 32; block2 += 8)
            {
                for (i = block1; i < block1 + 8; i++) //遍历行
                {
                    t0 = A[i][block2 + 0];
                    t1 = A[i][block2 + 1];
                    t2 = A[i][block2 + 2];
                    t3 = A[i][block2 + 3];
                    t4 = A[i][block2 + 4];
                    t5 = A[i][block2 + 5];
                    t6 = A[i][block2 + 6];
                    t7 = A[i][block2 + 7];

                    B[block2 + 0][i] = t0;
                    B[block2 + 1][i] = t1;
                    B[block2 + 2][i] = t2;
                    B[block2 + 3][i] = t3;
                    B[block2 + 4][i] = t4;
                    B[block2 + 5][i] = t5;
                    B[block2 + 6][i] = t6;
                    B[block2 + 7][i] = t7;
                }
            }
        }
    }

    /*
    *策略：分为8*8的块，每块再分为4*4的小块处理
    *     会借助B暂时存放A中数据，避免多次访问cache
    */
    if (M == 64 && N == 64)
    {
        int block1, block2, i, j;//分块
        int t0, t1, t2, t3, t4, t5, t6, t7;//临时变量
        for (block1 = 0; block1 < 64; block1 += 8)
        {
            for (block2 = 0; block2 < 64; block2 += 8)
            {
                //前四行前四列
                for (i = block1; i < block1 + 4; i++)
                {
                    t0 = A[i][block2 + 0];
                    t1 = A[i][block2 + 1];
                    t2 = A[i][block2 + 2];
                    t3 = A[i][block2 + 3];
                    t4 = A[i][block2 + 4];
                    t5 = A[i][block2 + 5];
                    t6 = A[i][block2 + 6];
                    t7 = A[i][block2 + 7];

                    B[block2 + 0][i] = t0;
                    B[block2 + 1][i] = t1;
                    B[block2 + 2][i] = t2;
                    B[block2 + 3][i] = t3;

                    //利用B来临时存放前四行后四列，避免再用cache存A的这部分
                    B[block2 + 0][i + 4] = t4;
                    B[block2 + 1][i + 4] = t5;
                    B[block2 + 2][i + 4] = t6;
                    B[block2 + 3][i + 4] = t7;
                }

                //前四行后四列，后四行前四列
                for (j = block2; j < block2 + 4; j++)
                {
                    t0 = A[block1 + 4][j];
                    t1 = A[block1 + 5][j];
                    t2 = A[block1 + 6][j];
                    t3 = A[block1 + 7][j];

                    //下面读出B中临时存放的值
                    t4 = B[j][block1 + 4];
                    t5 = B[j][block1 + 5];
                    t6 = B[j][block1 + 6];
                    t7 = B[j][block1 + 7];

                    //下面来放B
                    B[j][block1 + 4] = t0;
                    B[j][block1 + 5] = t1;
                    B[j][block1 + 6] = t2;
                    B[j][block1 + 7] = t3;

                    B[j + 4][block1 + 0] = t4;
                    B[j + 4][block1 + 1] = t5;
                    B[j + 4][block1 + 2] = t6;
                    B[j + 4][block1 + 3] = t7;
                }

                //后四行后四列
                for (i = block1 + 4; i < block1 + 8; i++)
                {
                    t0 = A[i][block2 + 4];
                    t1 = A[i][block2 + 5];
                    t2 = A[i][block2 + 6];
                    t3 = A[i][block2 + 7];

                    B[block2 + 4][i] = t0;
                    B[block2 + 5][i] = t1;
                    B[block2 + 6][i] = t2;
                    B[block2 + 7][i] = t3;
                }
            }
        }
    }

    /*
    *策略：56*64同上处理，之后的按4*4小块处理
    */
    if (M == 60 && N == 68)
    {
        int block1, block2, i;//分块
        int t0, t1, t2, t3, t4, t5, t6, t7;//临时变量

        for (block1 = 0; block1 < 68; block1 += 4)
        {
            for (block2 = 0; block2 < 56; block2 += 8)
            {
                for (i = block1; i < block1 + 4; i++)
                {
                    t0 = A[i][block2 + 0];
                    t1 = A[i][block2 + 1];
                    t2 = A[i][block2 + 2];
                    t3 = A[i][block2 + 3];
                    t4 = A[i][block2 + 4];
                    t5 = A[i][block2 + 5];
                    t6 = A[i][block2 + 6];
                    t7 = A[i][block2 + 7];

                    B[block2 + 0][i] = t0;
                    B[block2 + 1][i] = t1;
                    B[block2 + 2][i] = t2;
                    B[block2 + 3][i] = t3;
                    B[block2 + 4][i] = t4;
                    B[block2 + 5][i] = t5;
                    B[block2 + 6][i] = t6;
                    B[block2 + 7][i] = t7;
                }
            }
        }

        //下面三个循环再处理边角
        for (block1 = 0; block1 < 68; block1 += 4)
        {
            for (block2 = 56; block2 < 60; block2 += 4)
            {
                for (i = block1; i < block1 + 4; i++)
                {
                    t0 = A[i][block2 + 0];
                    t1 = A[i][block2 + 1];
                    t2 = A[i][block2 + 2];
                    t3 = A[i][block2 + 3];

                    B[block2 + 0][i] = t0;
                    B[block2 + 1][i] = t1;
                    B[block2 + 2][i] = t2;
                    B[block2 + 3][i] = t3;
                }
            }
        }
    }

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

/*
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++)
    {
        for (j = 0; j < M; j++)
        {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    // registerTransFunction(trans, trans_desc);
}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++)
    {
        for (j = 0; j < M; ++j)
        {
            if (A[i][j] != B[j][i])
            {
                return 0;
            }
        }
    }
    return 1;
}
