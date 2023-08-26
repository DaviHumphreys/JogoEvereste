if (vida <= 0)
{
		instance_destroy()
}

if place_meeting(x + velx,y,obj_parede)
{
		while !place_meeting(x+sign(velx),y,obj_parede)
		{
			x+= sign(velx)
		}

		velx = 0
}


if place_meeting(x,y + vely * 3,obj_parede)
{
		while !place_meeting(x,y+sign(vely),obj_parede)
		{
			y += sign(vely)
		}
	vely = 0
}




if(place_meeting(x, y+1, obj_parede))
{
	
	if(!place_meeting(x + (velx * 30), y+1, obj_parede) or place_meeting(x + (velx+10), y, obj_parede))
	{
		image_xscale = image_xscale*-1;
		velx = velx*-1;
	}
		
}
else
{
	if(vely < 5)
	{
	vely += GRAVIDADE * massa;
	}
	y += vely;
}