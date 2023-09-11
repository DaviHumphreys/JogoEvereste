// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateDANO(){

if(knockback_forca > 0)
{
	vely = (-vel * knockback_forca)
	knockback_forca -= 0.12
}
else
{
	vely = GRAVIDADE * massa
}
if(inimigo.x > x)
{
	velx = (-vel * (knockback_forca + 0.8))
}
else
{
	velx = (+vel * (knockback_forca + 0.8))
}


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

if(piscando_cd <= 4.8)
{
	estado = playerState.LIVRE;
	knockback_forca = 1;
}

}