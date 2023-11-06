function PlayerStateLIVRE(){

script_execute(get_Input)

#region Movimento e Pulo
sprite_index = sprites[spr]
velx = movex * vel

	//pulo
if(pulo_forca <= -0.2)
{
	pulo_forca = -2.2	
}


if(place_meeting(x, y+10, obj_parede) && puloInicio)
{
	pulo_forca = 1.33;
	puloDuploInicio = true;
	esta_pulando = true;
	vely = -pulo_vel * pulo_forca;
}
if(pulo && esta_pulando && pulo_forca >= -0.6)
{
		pulo_forca -= 0.05;
		vely = -pulo_vel * pulo_forca;
}/*
else if(keyboard_check_released(ord("W")) and pulo_forca >= 0.10)
{
	vely = (GRAVIDADE * massa * 1.7);
}*/
else
{
	
	if(vely < max_vely)
	{
		vely += GRAVIDADE * massa * 1.3;
	}
	if(puloDuplo && pulo && puloDuploInicio)
	{
		pulo_forca = 1.15;
		esta_pulando = true;
		puloDuploInicio = false;
	}
	if(esta_pulando && pulo && puloInicio)
	{
		pulo_forca -= 0.07;
		vely = -pulo_vel * pulo_forca;
	}
	else
	{
		esta_pulando = false;
	}
	

}

	//bater cabeça caiu
	
if(place_meeting(x, y-1, obj_parede))
{
	pulo_forca = 0
	
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

#endregion

	// Ataque

if(ataque && cdATK <= 0)
{
	if(!place_meeting(x, y+10, obj_parede) and baixo)
	{
		instance_create_layer(x, y, "Instances", obj_atkPlayer)
		if(place_meeting(x, y + 400, obj_inimigo))
		{
			pulinho = true;
			pulo_forca = 1;
		}
	}
	else
	{
		image_index = 1;
		spr = 2;
		instance_create_layer(x + 500 * sign(image_xscale), y - 600, "Instances", obj_atkPlayer)
	}
	cdATK = 1
}


	// Sprite anda e vira
	
if(movex != 0 and cdATK <= 0.5)
{
		
	spr = 1
	if(movex < 0)
	{
		image_xscale = -1
	}
	else if(movex > 0)
	{
		image_xscale = 1
	}

}
else if(cdATK <= 0.45)
{
	spr = 0;	
}


if(pulinho)
{
	vely = Pulinho(vely, pulo_vel, pulo_forca)
	pulo_forca -= 0.06
	if(pulo_forca <= 0)
	{
		pulinho = false;	
	}
}

}

function Pulinho(_vely, _pulo_vel, _pulo_forca)
{
	_vely = -_pulo_vel * _pulo_forca;
	return _vely;
}
