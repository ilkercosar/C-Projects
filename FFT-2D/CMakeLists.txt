cmake_minimum_required(VERSION 3.10)      

PROJECT(TEST)              

set(CMAKE_C_STANDARD 99)

ADD_EXECUTABLE(TEST main.c fft-2d.c)               

TARGET_LINK_LIBRARIES(TEST m)