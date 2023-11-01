event_inherited();

alarm[0] = 15;
atirar = false;
maxtiros = 0;
cdATK = 2;
voltar = false;
playerDireita = 0;
velx = 60;

function EnemyStateAtaque1()
{
	var atk = obj_atkBoss;
	var tempo = 30;
	var tiros = 5;
	Atk(atk, tempo, tiros);
}

function EnemyStateAtaque2()
{
	var atk = obj_atkBoss2;
	var tempo = 40;
	var tiros = 6;
	Atk(atk, tempo, tiros);
}

function EnemyStateAtaque3()
{
	
	if(atirar)
	{
		x += velx * playerDireita;
	}
	if(voltar)
	{
		voltar = false;
		atirar = false;
		estado = EnemyState.NORMAL
	}
}

function EnemyStateNormal()
{
	maxtiros = 0;
	x = 0;
	y = 0;
	cdATK -= 0.01
	if(cdATK <= 0)
	{
		cdATK = 2
		var rand = random_range(1, 4);
		if(rand < 2)
		{
			x = random_range(1600, 10000)
			y = 2800
			atirar = true;
			estado = EnemyState.ATAQUEBOSS1;
		}
		else if(rand >= 2 and rand < 3)
		{
			x = 1500
			y = 4500
			atirar = true;
			estado = EnemyState.ATAQUEBOSS2;
		}
		else
		{
			if(obj_player.x < room_width/2)
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
			y = 4200;
			atirar = false;
			alarm_set(1, 70)
			alarm_set(0, 30)
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
			instance_create_layer(x, y - 200, "instances", ataque)
			//estado = EnemyState.BASICO
			alarm_set(0, t)
			atirar = false;
			mt++
		}
	}
	else
	{
		estado = EnemyState.NORMAL
	}
	maxtiros = mt;
}