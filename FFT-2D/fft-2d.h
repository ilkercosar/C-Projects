#ifndef __FFT2D__
#define __FFT2D__

#ifdef __cplusplus
extern "C"
{
#endif 

#include <stdint.h>

int** allocate_matrix(uint8_t rows, uint8_t cols);
void fill_matrix_with_random(int** matrix, uint8_t rows, uint8_t cols);
void compute_dft(int** matrix, uint8_t realOut[5][5], uint8_t imagOut[5][5], uint8_t amplitudeOut[5][5], uint8_t rows, uint8_t cols);
void print_results(uint8_t realOut[5][5], uint8_t imagOut[5][5], uint8_t amplitudeOut[5][5], uint8_t rows, uint8_t cols);
void free_matrix(int** matrix, uint8_t rows);

#ifdef __cplusplus
}
#endif
#endif

