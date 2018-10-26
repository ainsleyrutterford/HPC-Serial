#!/bin/sh
# A script that will run the stencil code on all compilers and flag options one by one.

module unload languages/gcc-4.6.4
module unload languages/gcc-4.7
module unload languages/gcc-4.8.1
module unload languages/gcc-4.8.4
module unload languages/gcc-4.8.5
module unload languages/gcc-4.9.1
module unload languages/gcc-5.0
module unload languages/gcc-5.1
module unload languages/gcc-5.3
module unload languages/gcc-6.1
module unload languages/gcc-7.1.0
module unload languages/intel-compiler-13
module unload languages/intel-compiler-14
module unload languages/intel-compiler-15
module unload languages/intel-compiler-16
echo "Unloaded all gcc and intel compiler modules"

module load languages/gcc-4.6.4
gcc -std=c99 -Wall stencil.c -o gcc_464_O0  -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_464_O3 -O3 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_464_O3_n -O3 -ffast-math -funsafe-math-optimizations -march=native

module unload languages/gcc-4.6.4
module load languages/gcc-4.7
gcc -std=c99 -Wall stencil.c -o gcc_470_O0 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_470_O3 -O3 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_470_O3_n -O3 -ffast-math -funsafe-math-optimizations -march=native

module unload languages/gcc-4.7
module load languages/gcc-4.8.1
gcc -std=c99 -Wall stencil.c -o gcc_481_O0 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_481_O3 -O3 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_481_O3_n -O3 -ffast-math -funsafe-math-optimizations -march=native

module unload languages/gcc-4.8.1
module load languages/gcc-4.8.4
gcc -std=c99 -Wall stencil.c -o gcc_484_O0 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_484_O3 -O3 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_484_O3_n -O3 -ffast-math -funsafe-math-optimizations -march=native

module unload languages/gcc-4.8.4
module load languages/gcc-4.8.5
gcc -std=c99 -Wall stencil.c -o gcc_485_O0 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_485_O3 -O3 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_485_O3_n -O3 -ffast-math -funsafe-math-optimizations -march=native

module unload languages/gcc-4.8.5
module load languages/gcc-4.9.1
gcc -std=c99 -Wall stencil.c -o gcc_491_O0  -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_491_O3 -O3 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_491_O3_n -O3 -ffast-math -funsafe-math-optimizations -march=native

module unload languages/gcc-4.9.1
module load languages/gcc-5.0
gcc -std=c99 -Wall stencil.c -o gcc_500_O0  -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_500_O3 -O3 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_500_O3_n -O3 -ffast-math -funsafe-math-optimizations -march=native

module unload languages/gcc-5.0
module load languages/gcc-5.1
gcc -std=c99 -Wall stencil.c -o gcc_510_O0  -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_510_O3 -O3 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_510_O3_n -O3 -ffast-math -funsafe-math-optimizations -march=native

module unload languages/gcc-5.1
module load languages/gcc-5.3
gcc -std=c99 -Wall stencil.c -o gcc_530_O0  -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_530_O3 -O3 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_530_O3_n -O3 -ffast-math -funsafe-math-optimizations -march=native

module unload languages/gcc-5.3
module load languages/gcc-6.1
gcc -std=c99 -Wall stencil.c -o gcc_610_O0  -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_610_O3 -O3 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_610_O3_n -O3 -ffast-math -funsafe-math-optimizations -march=native

module unload languages/gcc-6.1
module load languages/gcc-7.1.0
gcc -std=c99 -Wall stencil.c -o gcc_710_O0  -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_710_O3 -O3 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_710_O3_n -O3 -ffast-math -funsafe-math-optimizations -march=native

module load languages/intel-compiler-13
icc -std=c99 -Wall stencil.c -o icc_13_O2 -fast
icc -std=c99 -Wall stencil.c -o icc_13_O3 -O3 -fast
icc -std=c99 -Wall stencil.c -o icc_13_O3_n -O3 -fast -xHOST

module unload languages/intel-compiler-13
module load languages/intel-compiler-14
icc -std=c99 -Wall stencil.c -o icc_14_O2 -fast
icc -std=c99 -Wall stencil.c -o icc_14_O3 -O3 -fast
icc -std=c99 -Wall stencil.c -o icc_14_O3_n -O3 -fast -xHOST

module unload languages/intel-compiler-14
module load languages/intel-compiler-15
icc -std=c99 -Wall stencil.c -o icc_15_O2 -fast
icc -std=c99 -Wall stencil.c -o icc_15_O3 -O3 -fast
icc -std=c99 -Wall stencil.c -o icc_15_O3_n -O3 -fast -xHOST

module unload languages/intel-compiler-15
module load languages/intel-compiler-16
icc -std=c99 -Wall stencil.c -o icc_16_O2 -fast
icc -std=c99 -Wall stencil.c -o icc_16_O3 -O3 -fast
icc -std=c99 -Wall stencil.c -o icc_16_O3_n -O3 -fast -xHOST
