event_inherited()

pulo_forca = 1.23;
knockback_forca = 1;
pulo_vel = 80;
esta_pulando = false;
max_vely = 50;
pulinho = false;

sprites[0] = spr_parado;
sprites[1] = spr_andando;

movendo = 0;
piscando = false;
piscando_cd = 7;
flashColor = c_black;

estado = playerState.LIVRE;
enum playerState
{
	LIVRE,
	DANO,
	TRAVADO
}
inimigo = 0
vida = 15;