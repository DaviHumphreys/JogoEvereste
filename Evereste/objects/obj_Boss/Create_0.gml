event_inherited();

alarm[0] = 15;
atirar = false;
maxtiros = 0;
cdATK = 2;
voltar = false;
playerDireita = 0;
velx = 180;
xx = room_width/2;
yy = 3000;
ultimoAtaque = 0;
xMoveTowards = 0;

spr = 0;
sprites[0] = spr_bossIdle;
sprites[1] = spr_atkBoss3;

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
		estado = EnemyState.NORMAL
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
		cdATK = 2
		var rand = random_range(1, 4);
		if(rand < 2 && ultimoAtaque != 1)
		{
			x = 1500
			y = 4500
			atirar = true;
			estado = EnemyState.ATAQUEBOSS1;
		}
		else if(rand >= 2 and rand < 3)
		{
			x = xx;
			y = yy;
			atirar = true;
			ultimoAtaque = 0
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
			ultimoAtaque = 0
			estado = EnemyState.ATAQUEBOSS3;
		}
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
		ultimoAtaque = 1;
		estado = EnemyState.NORMAL
	}
	maxtiros = mt;
}