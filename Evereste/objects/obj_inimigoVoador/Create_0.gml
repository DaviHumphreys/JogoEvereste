event_inherited();

estado = EnemyState.NORMAL;

velx = 8;

vely = 15;

spawnx = x;
spawny = y;

frameMorte = 43

sprites[0] = spr_caveirasmatica;
sprites[1] = spr_caveirasmaticaMorrendo;

function EnemyStateAtento()
{
	if(distance_to_object(obj_player) > 3000)
	{
		estado = EnemyState.NORMAL;
	}
	
	if(obj_player.x > x)
	{
		image_xscale = -1;
	}
	else
	{
		image_xscale = 1;	
	}
	
	if(obj_player.image_xscale != image_xscale)
	{
		move_towards_point(obj_player.x + 100, obj_player.y, vely);
	}
	else
	{
		Volta(spawnx, spawny);
	}
}

function EnemyStateNormal()
{
	if(distance_to_object(obj_player) < 2000)
	{
		estado = EnemyState.ATENTO;
	}
}

function Volta(_spawnx, _spawny)
{
	if(distance_to_point(_spawnx, _spawny) > 2)
	{
		move_towards_point(_spawnx, _spawny, 8);
	}
	else
	{
		speed = 0;	
	}	
}