stencil: stencil.c
	gcc -std=c99 -Wall $^ -o $@0 -O2 -ffast-math -funsafe-math-optimizations
	gcc -std=c99 -Wall $^ -o $@1 -O3 -ffast-math -funsafe-math-optimizations
	icc -std=c99 -Wall $^ -o $@2 -O2 -fast
	icc -std=c99 -Wall $^ -o $@3 -O3 -fast
