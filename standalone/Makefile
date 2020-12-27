WAT2WASM=../../wabt/wabt/build/wat2wasm
all:
	$(WAT2WASM) main.wat -o main.wasm

c: main.c
	emcc main.c -Os -s WASM=1 -s SIDE_MODULE=1 -o main.wasm EXPORTED_FUNCTIONS='["_some_function"]