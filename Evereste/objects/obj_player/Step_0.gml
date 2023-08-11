movex = -keyboard_check(ord("A"))+keyboard_check(ord("D"))
pulo = keyboard_check(ord("W"))
puloInicio = keyboard_check_pressed(ord("W"))

velx = movex * ser.vel

	//pulo

if(place_meeting(x, y+1, obj_parede) && puloInicio)
{
	pulo_forca = 0.1;
	vely = -pulo_vel * pulo_forca;
	pode_pular = true;
	tiraDedo = false;
}
if(pulo_forca < 0.85 && pulo && pode_pular)
{
		pulo_forca += 0.04;
		vely = -pulo_vel * pulo_forca;
}
else
{
	pode_pular = false;
	if(vely < max_vely)
	{
	vely += GRAVIDADE * ser.massa;
	}

}

	//bater cabeça caiu
if(place_meeting(x, y-1, obj_parede))
{
	pulo_forca = 1
	
}

	//colisão com blocos
if place_meeting(x + velx,y,obj_parede)
{
		while !place_meeting(x+sign(velx),y,obj_parede)
		{
			x+= sign(velx)
		}

		velx = 0
}


if place_meeting(x,y + vely,obj_parede)
{
		while !place_meeting(x,y+sign(vely),obj_parede)
		{
			y += sign(vely)
		}
	vely = 0
}






/*
	//animação
if(movey > 0)
{
	movendo = 2
}
else if(movey < 0)
{
	movendo = 3
}
if(movex > 0 || movex < 0)
{
	movendo = 1
	image_xscale =+1
}
if(movex< 0)
{
	image_xscale =-1
}
	
*/

	