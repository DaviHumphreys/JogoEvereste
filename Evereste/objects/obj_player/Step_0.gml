movex = -keyboard_check(ord("A"))+keyboard_check(ord("D"))
pulo = keyboard_check(ord("W"))
puloInicio = keyboard_check_pressed(ord("W"))
ataque = keyboard_check_pressed(ord("J"))
sprite_index = sprites[movendo]
velx = movex * vel

	//pulo

if(place_meeting(x, y+1, obj_parede) && puloInicio)
{
	pulo_forca = 0.1;
	vely = -pulo_vel * pulo_forca;
	pode_pular = true;
	tiraDedo = false;
}
if(pulo_forca < 0.84 && pulo && pode_pular)
{
		pulo_forca += 0.04;
		vely = -pulo_vel * pulo_forca;
}
else if(keyboard_check_released(ord("W")) && pulo_forca <= 0.84)
{
		vely += (GRAVIDADE * massa) * 5;
}
else
{
	pode_pular = false;
	if(vely < max_vely)
	{
	vely += GRAVIDADE * massa;
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

	// Eliminando qualquer problema de colisão

if(place_meeting(x, y, obj_parede)) {
	for(var i = 0; i < 1000; ++i) {
		//Right
		if(!place_meeting(x + i, y, obj_parede)) {
			x += i;
			break;
		}
		//Left
		if(!place_meeting(x - i, y, obj_parede)) {
			x -= i;
			break;
		}
		//Up
		if(!place_meeting(x, y - i, obj_parede)) {
			y -= i;
			break;
		}
		//Down
		if(!place_meeting(x, y + i, obj_parede)) {
			y += i;
			break;
		}
		//Top Right
		if(!place_meeting(x + i, y - i, obj_parede)) {
			x += i;
			y -= i;
			break;
		}
		//Top Left
		if(!place_meeting(x - i, y - i, obj_parede)) {
			x -= i;
			y -= i;
			break;
		}
		//Bottom Right
		if(!place_meeting(x + i, y + i, obj_parede)) {
			x += i;
			y += i;
			break;
		}
		//Bottom Left
		if(!place_meeting(x - i, y + i, obj_parede)) {
			x -= i;
			y += i;
			break;
		}
	}
}

	// Ataque

if(ataque)
{
	instance_create_layer(x + 50 * sign(image_xscale), y - 70, "Instances", obj_atkPlayer)
}

	// Sprite anda e vira
	
if(movex != 0)
{
		// Deixa a troca do sprite parado para o andando fluida e precisa
		
	if(sprite_index != spr_andando)
	{
		image_index = 11
	}
	movendo = 1
	if(movex < 0)
	{
		image_xscale = -0.1336275
	}
	else if(movex > 0)
	{
		image_xscale = 0.1336275
	}

}
else
{
	movendo = 0;	
}



	


	