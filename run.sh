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
gcc -std=c99 -Wall stencil.c -o gcc_464_O2 -O2 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_464_O3 -O3 -ffast-math -funsafe-math-optimizations

module unload languages/gcc-4.6.4
module load languages/gcc-4.7
gcc -std=c99 -Wall stencil.c -o gcc_470_O2 -O2 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_470_O3 -O3 -ffast-math -funsafe-math-optimizations

module unload languages/gcc-4.7
module load languages/gcc-4.8.1
gcc -std=c99 -Wall stencil.c -o gcc_481_O2 -O2 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_481_O3 -O3 -ffast-math -funsafe-math-optimizations

module unload languages/gcc-4.8.1
module load languages/gcc-4.8.4
gcc -std=c99 -Wall stencil.c -o gcc_484_O2 -O2 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_484_O3 -O3 -ffast-math -funsafe-math-optimizations

module unload languages/gcc-4.8.4
module load languages/gcc-4.8.5
gcc -std=c99 -Wall stencil.c -o gcc_485_O2 -O2 -ffast-math -funsafe-math-optimizations
gcc -std=c99 -Wall stencil.c -o gcc_485_O3 -O3 -ffast-math -funsafe-math-optimizations
