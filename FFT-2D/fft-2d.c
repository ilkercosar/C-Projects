#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "fft-2d.h"

int** allocate_matrix(uint8_t rows, uint8_t cols)
{
    int** matrix = (int**)malloc(rows * sizeof(int*));
    for(uint8_t i = 0; i < rows; i++) 
    {
        matrix[i] = (int*)malloc(cols * sizeof(int));
    }
    return matrix;
}

void fill_matrix_with_random(int** matrix, uint8_t rows, uint8_t cols)
{
    for(uint8_t i = 0; i < rows; i++) 
    {
        for(uint8_t j = 0; j < cols; j++) 
        {
            matrix[i][j] = rand() % 255;
        }
    }
}

void compute_dft(int** matrix, uint8_t realOut[5][5], uint8_t imagOut[5][5], uint8_t amplitudeOut[5][5], uint8_t rows, uint8_t cols)
{
    for (uint8_t yWave = 0; yWave < rows; yWave++) 
    {
        for (uint8_t xWave = 0; xWave < cols; xWave++) 
        {
            for (uint8_t ySpace = 0; ySpace < rows; ySpace++) 
            {
                for (uint8_t xSpace = 0; xSpace < cols; xSpace++) 
                {
                    realOut[yWave][xWave] += (matrix[ySpace][xSpace] * cos(2 * M_PI * ((1.0 * xWave * xSpace / cols) + (1.0 * yWave * ySpace / rows)))) / sqrt(rows * cols);
                    imagOut[yWave][xWave] -= (matrix[ySpace][xSpace] * sin(2 * M_PI * ((1.0 * xWave * xSpace / cols) + (1.0 * yWave * ySpace / rows)))) / sqrt(rows * cols);
                    amplitudeOut[yWave][xWave] = sqrt(realOut[yWave][xWave] * realOut[yWave][xWave] + imagOut[yWave][xWave] * imagOut[yWave][xWave]);
                }
            }
        }
    }
}

void print_results(uint8_t realOut[5][5], uint8_t imagOut[5][5], uint8_t amplitudeOut[5][5], uint8_t rows, uint8_t cols)
{
    for (uint8_t yWave = 0; yWave < rows; yWave++) 
    {
        for (uint8_t xWave = 0; xWave < cols; xWave++) 
        {
            printf("z:%d + %di, r: %d\n", realOut[yWave][xWave], imagOut[yWave][xWave], amplitudeOut[yWave][xWave]);
        }
    }
}

void free_matrix(int** matrix, uint8_t rows)
{
    for(uint8_t i = 0; i < rows; i++) 
    {
        free(matrix[i]);
    }
    free(matrix);
}
