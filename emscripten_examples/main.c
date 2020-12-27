#include <emscripten.h>
#include <stdint.h>


EMSCRIPTEN_KEEPALIVE
int add_one_basic(int in){
	return in+1;
}

EMSCRIPTEN_KEEPALIVE
void add_one_memory(int* input_ptr, int* output_ptr){
	*output_ptr = (*input_ptr) + 1;
}

EMSCRIPTEN_KEEPALIVE
/* directly alters input*/
void pass_array(uint32_t* ptr, int len){
	int i;
	for (i = 0; i < len; i++){
		ptr[i] *= 2;
	}
}

typedef void testExternalJSMethod();

EMSCRIPTEN_KEEPALIVE
void passFnPointer(int ptr) {
    ((testExternalJSMethod*)ptr)();
}