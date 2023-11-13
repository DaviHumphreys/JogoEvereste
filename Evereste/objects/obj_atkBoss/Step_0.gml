speed = min(speed + 0.5, 42)
if(alvo)
{
	//var pointdir = point_direction(x, y, obj_player.x + randoPlayerX, obj_player.y + randomPlayerY);
	image_angle = sin(270);
	direction = image_angle;
}
else
{
	if(image_angle > 25)
	{
		image_angle+= 0.7	
	}
	else
	{
		image_angle-= 0.9
	}
	direction = image_angle;
}

if(destruir)
{
	instance_destroy()	
}


