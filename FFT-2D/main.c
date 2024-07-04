/* solid respect to sanfoundry.com */
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "fft-2d.h"

int main(int argc, char** argv)
{
    uint8_t rows = 5;
    uint8_t cols = 5;

    uint8_t realOut[5][5] = {0};
    uint8_t imagOut[5][5] = {0};
    uint8_t amplitudeOut[5][5] = {0};

    int** matrix = allocate_matrix(rows, cols);

    fill_matrix_with_random(matrix, rows, cols);

    compute_dft(matrix, realOut, imagOut, amplitudeOut, rows, cols);

    print_results(realOut, imagOut, amplitudeOut, rows, cols);

    free_matrix(matrix, rows);

    return EXIT_SUCCESS;
}
