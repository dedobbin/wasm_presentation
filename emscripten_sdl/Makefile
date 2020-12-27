EMCC=emcc

all: sdl.cpp
	$(EMCC) sdl.cpp -O2 -s USE_SDL=2 -s USE_SDL_IMAGE=2 -s SDL2_IMAGE_FORMATS='["png"]' \
	--preload-file assets -o index.js

old: sdl.cpp
	$(EMCC) sdl.cpp -s WASM=1 --preload-file asset -s USE_SDL=2 -O3 -o index.js