event_inherited()

pulo_forca = 1.23;
pulo_vel = 80;
esta_pulando = false;
max_vely = 100
pulinho = false;

sprites[0] = spr_parado;
sprites[1] = spr_andando;

movendo = 0;

estado = playerState.LIVRE;
enum playerState
{
	LIVRE,
	TRAVADO
}