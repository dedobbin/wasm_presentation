#include <stdio.h>
#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <emscripten.h>
#include <unistd.h>
#include <stdlib.h>
#include <unordered_map>
#include <vector>
#include <string>
#include <time.h>

#define SCREEN_W 500
#define SCREEN_H 500

#define PLAYER_SPEED 5
#define ENEMY_SPEED 3

int player_id = -1;
int enemy_id = -1;

bool player_dead = false;

enum Dir {
	UP,
	RIGHT,
	LEFT,
	DOWN,
};

Dir enemy_dir = LEFT;

struct context
{
    SDL_Renderer *renderer;
    int iteration;
};

struct Sprite
{
  SDL_Rect pos = {0, 0, 50, 50};
  SDL_Texture *tex;
  SDL_RendererFlip flip = (SDL_RendererFlip)0;
};

std::vector<Sprite>sprites = {};

bool check_collision(SDL_Rect a, SDL_Rect b)
{
	//SDL_bool collision = SDL_HasIntersection(&rect1, &rect2);

	int bottomA = a.y + a.h;
	int topA = a.y;
	int rightA = a.x + a.w;
	int leftA = a.x; 

	int bottomB = b.y + b.h;
	int topB = b.y;
	int rightB = b.x + b.w;
	int leftB = b.x; 

	if( bottomA <= topB )
	{
        return false;
    }
    
    if( topA >= bottomB )
    {
        return false;
    }
    
    if( rightA <= leftB )
    {
        return false;
    }
    
    if( leftA >= rightB )
    {
        return false;
    }
    
    return true;
}

int load_sprite(int w, int h, const char* fileName, SDL_Renderer* renderer)
{
	Sprite sprite;
	sprite.pos =  {0, 0, w, h};
	SDL_Surface *image = IMG_Load(fileName);
	sprite.tex = SDL_CreateTextureFromSurface(renderer, image);
	sprites.push_back(sprite);
	return sprites.size() - 1;
}

void handle_input()
{  	
	if (player_dead){
		return;
	}
	SDL_Event event;
	while( SDL_PollEvent( &event ) ){
		/* We are only worried about SDL_KEYDOWN and SDL_KEYUP events */
		switch( event.type ){
		case SDL_KEYDOWN:
			switch( event.key.keysym.sym ){
            	case SDLK_LEFT:
					if (sprites[player_id].pos.x - PLAYER_SPEED > 0){
						sprites[player_id].pos.x -= PLAYER_SPEED;
					}
					break;
				case SDLK_RIGHT:
					if (sprites[player_id].pos.x + PLAYER_SPEED <= SCREEN_W - sprites[player_id].pos.w){
						sprites[player_id].pos.x += PLAYER_SPEED;
					}
					break;
				case SDLK_UP:
					if (sprites[player_id].pos.y - PLAYER_SPEED > 0){
						sprites[player_id].pos.y -= PLAYER_SPEED;
					}
					break;
				case SDLK_DOWN:
					if (sprites[player_id].pos.y + PLAYER_SPEED <= SCREEN_H - sprites[player_id].pos.h){
						sprites[player_id].pos.y += PLAYER_SPEED;
					}
					break;
				default:
					break;
                }
			break;

		case SDL_KEYUP:
			break;

		default:
			break;
		}
	}
}

void move_enemy(int iteration)
{
	if (iteration % 100 == 0){
		int r = rand() % 4;
		switch(r){
			case 0:
				enemy_dir = LEFT;
				break;
			case (1):
				enemy_dir = RIGHT;
				break;
			case (2):
				enemy_dir = UP;
				break;
			case (3):
				enemy_dir = DOWN;
				break;
		}
	}
	switch(enemy_dir){
		case LEFT:
			if (sprites[enemy_id].pos.x - ENEMY_SPEED > 0){
				sprites[enemy_id].pos.x -= ENEMY_SPEED;
			} else {
				enemy_dir = RIGHT;
			}
			break;
		case RIGHT:
			if (sprites[enemy_id].pos.x + ENEMY_SPEED <= SCREEN_W - sprites[enemy_id].pos.w){
				sprites[enemy_id].pos.x += ENEMY_SPEED;
			} else {
				enemy_dir = LEFT;
			}
			break;
		case UP:
			if (sprites[enemy_id].pos.y - ENEMY_SPEED > 0){
				sprites[enemy_id].pos.y -= ENEMY_SPEED;
			} else {
				enemy_dir = DOWN;
			}
			break;
		case DOWN:
			if (sprites[enemy_id].pos.y + ENEMY_SPEED <= SCREEN_H - sprites[enemy_id].pos.h){
				sprites[enemy_id].pos.y += ENEMY_SPEED;
			} else {
				enemy_dir = UP;
			}
			break;
		default:
			break;
	}
	
}

void mainloop(void *arg)
{
    context *ctx = static_cast<context*>(arg);
    SDL_Renderer *renderer = ctx->renderer;
    
    SDL_SetRenderDrawColor(renderer, 255, 0, 255, 255);
    SDL_RenderClear(renderer);

	handle_input();
	move_enemy(ctx->iteration);

	if (!player_dead && check_collision(sprites[enemy_id].pos, sprites[player_id].pos)){
		player_dead = true;
		SDL_DestroyTexture(sprites[player_id].tex);
		SDL_Surface *image = IMG_Load("assets/dead.png");
		sprites[player_id].tex = SDL_CreateTextureFromSurface(renderer, image);
		sprites[player_id].pos.h = 50;
		sprites[player_id].pos.y += 50;
	}

	if (ctx->iteration % 7 == 0){
		int newFlip = !sprites[enemy_id].flip;
		sprites[enemy_id].flip = (SDL_RendererFlip)newFlip;
	}

	for(auto sprite : sprites){
		//SDL_RenderCopy (renderer, sprite.tex, NULL, &sprite.pos);
		SDL_RenderCopyEx(renderer, sprite.tex, NULL, &sprite.pos, NULL, NULL, sprite.flip);
	}

    SDL_RenderPresent(renderer);

    ctx->iteration++;
}

int main()
{
    SDL_Init(SDL_INIT_VIDEO);
    SDL_Window *window;
    SDL_Renderer *renderer;
    SDL_CreateWindowAndRenderer(SCREEN_W, SCREEN_H, 0, &window, &renderer);

    context ctx;
    ctx.renderer = renderer;
    ctx.iteration = 0;

	srand(time(NULL));

	player_id = load_sprite(50, 100, "assets/link.png", renderer);
	sprites[player_id].pos.x = 0;
	sprites[player_id].pos.y = SCREEN_H / 2;

	enemy_id = load_sprite(100, 100, "assets/enemy.png", renderer);
	sprites[enemy_id].pos.x = SCREEN_W / 2;
	sprites[enemy_id].pos.y = SCREEN_H / 2;

    const int simulate_infinite_loop = 1; // call the function repeatedly
    const int fps = -1; // call the function as fast as the browser wants to render (typically 60fps)
    emscripten_set_main_loop_arg(mainloop, &ctx, fps, simulate_infinite_loop);
    
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();

    return EXIT_SUCCESS;
}