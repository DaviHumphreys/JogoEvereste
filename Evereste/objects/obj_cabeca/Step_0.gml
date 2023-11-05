if place_meeting(x,y + vely,obj_parede)
{
	while !place_meeting(x,y+sign(vely),obj_parede)
	{
		y += sign(vely)
	}
	vely = 0
}

y += vely;

