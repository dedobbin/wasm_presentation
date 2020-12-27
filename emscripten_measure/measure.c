#include <emscripten.h>
#include <stdio.h>
#include <time.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

// Source code for WASM module, compile using Emscripten SDK

// Another example usecase for Emscripten would be writing a parser to run a interpreted language in the browser. 

int does_include(char* a, char* b)
{
	return strstr(a, b) != NULL;
}

EMSCRIPTEN_KEEPALIVE	//A pragma used to expose function in module API
double measure(int print) {
	
	print && printf("starting WASM measure\n");
	clock_t begin = clock();

	unsigned long i;
	unsigned long j;
	for (i = 0; i < 1000000000; ++i) {
        if (does_include("aaaaabababaaaaaa", "aaa")  ){
			j++;
		}
    }

	clock_t end = clock();
	double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;

	print && printf("Duration: %f seconds\n", time_spent);

	return time_spent;
}