event_inherited()

vivo = true;
pulo_forca = 1.23;
knockback_forca = 1;
pulo_vel = 80;
esta_pulando = false;
max_vely = 50;
pulinho = false;
puloDuplo = false;
podeNadar = false;
puloDuploInicio = true;
cdATK = 0;

sprites[0] = spr_parado;
sprites[1] = spr_leoAndando;
sprites[2] = spr_leoAtacando;
sprites[3] = spr_LeoPulando;
sprites[4] = spr_LeoDescendo;
sprites[5] = spr_LeoAtacandoBaixo;

movendo = 0;
piscando = false;
piscando_cd = 7;
flashColor = c_black;

respawnx = x
respawny = y
respawnroom = Room02

estado = playerState.LIVRE;

enum playerState
{
	LIVRE,
	DANO,
	TRAVADO
}

inimigo = 0 // Para o playerState.DANO
vida = 4;
vida_max = 4;

keyboard_set_map(vk_up, ord("W"));
keyboard_set_map(vk_left, ord("A"));
keyboard_set_map(vk_right, ord("D"));
keyboard_set_map(vk_down, ord("S"));
