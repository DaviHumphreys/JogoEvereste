event_inherited();

if(distance_to_object(obj_player) < 2000)
{
	estado = EnemyState.ATENTO;
}


function EnemyStateAtento()
{
	move_towards_point(obj_player.x, obj_player.y, velx);
	
	if(obj_player.x > x)
	{
		image_xscale = 1;
	}
	else
	{
		image_xscale = -1;	
	}
}