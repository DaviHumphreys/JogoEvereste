speed = min(speed + 0.5, 42)
if(alvo)
{
	var pointdir = point_direction(x, y, obj_player.x + randoPlayerX, obj_player.y + randomPlayerY);
	image_angle += sin(degtorad(pointdir - image_angle)) * 6;
	direction = image_angle;
}
else
{
	if(image_angle < 90)
	{
		image_angle-= 2	
	}
	else
	{
		image_angle+= 2	
	}
	direction = image_angle;
}

if(destruir)
{
	instance_destroy()	
}


