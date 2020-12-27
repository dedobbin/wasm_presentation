EMCC=emcc
WASM2WAT=../../wabt/wabt/bin/wasm2wat

all: measure.c
	$(EMCC) -O3 -s WASM=1 -s EXTRA_EXPORTED_RUNTIME_METHODS='["cwrap"]' measure.c
dump_wat:
	$(WASM2WAT) a.out.wasm > wat.wat
.PHONY: clean
clean:
	rm -r a.out.wasm index.js wat.wat