stencil: stencil.c
	gcc -std=c99 -Wall $^ -o $@ -O3 -ffast-math -funsafe-math-optimizations -march=native
