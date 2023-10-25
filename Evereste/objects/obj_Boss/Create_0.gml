event_inherited();

alarm[0] = 15;
atirar = false;
maxtiros = 0

velx = 60;

function EnemyStateAtaque1()
{
	var mt = maxtiros
	if(mt < 5)
	{
		if(atirar)
		{
			instance_create_layer(x, y - 200, "instances", obj_atkBoss)
			//estado = EnemyState.BASICO
			alarm_set(0, 30)
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

function EnemyStateAtaque2()
{
	
}

function EnemyStateAtaque3()
{
	
}