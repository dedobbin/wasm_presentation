#!/usr/bin/sh
# Serves all examples at different ports. Uses PHP debug server because i had it installed
cd emscripten && php -S localhost:8082&
cd emscripten_measure && php -S localhost:8083&
cd standalone && php -S localhost:8084&
cd sudoku && php -S localhost:8085&
cd emscripten_sdl && php -S localhost:8086&
cd blazor-app && dotnet run --urls=http://www.localhost:8087&