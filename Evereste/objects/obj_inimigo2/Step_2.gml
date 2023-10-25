x += velx;


if place_meeting(x,y + vely * 3,obj_parede)
{
	while !place_meeting(x,y+sign(vely),obj_parede)
	{
		y += sign(vely)
	}
	vely = 0
}

cdATK -= 0.02