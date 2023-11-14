event_inherited();

vida = 40;
alarm[0] = 15;
atirar = false;
maxtiros = 0;
cdATK = 1.5;
voltar = false;
playerDireita = 0;
velx = 180;
xx = room_width/2;
yy = 3000;
xMoveTowards = 0;
risada = 0;
frameMorte = 50;

spr = 0;
sprites[0] = spr_bossIdle;
sprites[1] = spr_atkBoss3;
sprites[2] = spr_BossRisada;

function EnemyStateAtaque1()
{
	var atk = obj_atkBoss;
	var tempo = 37;
	var tiros = 10;
	Atk(atk, tempo, tiros);
}

function EnemyStateAtaque2()
{
	var atk = obj_atkBoss2;
	var tempo = 43;
	var tiros = 6;
	Atk(atk, tempo, tiros);
}

function EnemyStateAtaque3()
{
	
	xMoveTowards += 0.2;
	if(atirar && velx >= 0)
	{
		x += velx * playerDireita
		velx -= xMoveTowards;
		if(velx <= 30)
		{
			velx = 0;	
		}
	}
	if(voltar)
	{
		voltar = false;
		atirar = false;
		xMoveTowards = 0;
		velx = 180;
		risada++;
		estado = EnemyState.NORMAL
	}
}

function EnemyStateAtento()
{
	cdATK -= 0.01;
	if(cdATK <= 4)
	{
		x = xx;
		y = yy + 2000;
		if(cdATK <= 2)
		{
			estado = EnemyState.NORMAL;
		}
	}
}

function EnemyStateNormal()
{
	spr = 0;
	maxtiros = 0;
	x = 0;
	y = 0;
	cdATK -= 0.01
	if(cdATK <= 0)
	{
		cdATK = 1.5
		var rand = random_range(1, 10);
		if(rand < 3)
		{
			x = 1500
			y = 4500
			atirar = true;
			cdATK = 3.3;
			estado = EnemyState.ATAQUEBOSS1;
		}
		else if(rand >= 3 and rand < 6)
		{
			x = xx;
			y = yy;
			atirar = true;
			estado = EnemyState.ATAQUEBOSS2;
		}
		else
		{
			if(obj_player.x < xx)
			{
				x = obj_player.x + 2000;
				image_xscale = 1;
				playerDireita = -1;
			}
			else
			{
				x = obj_player.x - 2000;
				image_xscale = -1;
				playerDireita = 1;
			}
			spr = 1;
			image_index = 0;
			y = 4200;
			atirar = false;
			alarm_set(1, 70)
			alarm_set(0, 24)
			estado = EnemyState.ATAQUEBOSS3;
			audio_play_sound(voom, 1, false)
		}
	}
	else if(risada == 3)
	{
		spr = 2;
		cdATK = 5;
		risada = 0;
		if(obj_player.x > room_width / 2)
		{
			image_xscale = -1;	
		}
		else
		{
			image_xscale = 1;	
		}
		estado = EnemyState.ATENTO;
		audio_play_sound(BOSSRISADA, 1, false)
	}
}


function Atk(ataque, t, tiros)
{
	var mt = maxtiros
	if(mt < tiros)
	{
		if(atirar)
		{
			instance_create_layer(x, y - 500, "instances", ataque)
			//estado = EnemyState.BASICO
			alarm_set(0, t)
			atirar = false;
			mt++
		}
	}
	else
	{
		risada++;
		estado = EnemyState.NORMAL
	}
	maxtiros = mt;
}