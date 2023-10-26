event_inherited();

atacar = false;
atacando = false;
cd = 0;
cdATK = 0;

sprites[0] = spr_grievousAndando;
sprites[1] = spr_grievousMorrendo;
sprites[2] = spr_grievousCorrendo;
sprites[3] = spr_GrievousCharging;
frameMorte = 32;


distPlayer = 0;

function EnemyStateAtento()
{
	if(distance_to_object(obj_player) > 3000)
	{
		estado = EnemyState.NORMAL;
	}
	
	if(!atacando)
	{
		if(obj_player.x > x)
		{
			image_xscale = 1;
			velx = 10;
		}
		else
		{
			image_xscale = -1;
			velx = -10;
		}
	}
	
	if(distance_to_object(obj_player) < 2250 && cdATK <= 0 /*( y - obj_player.y <= 50 or y - obj_player.y>= -50)*/)
	{
		velx = 0;
		atacando = true;
		spr = 3;
	}
	
	if(atacando)
	{
		cd += 0.2
		if(cd >= 4)
		{
			atacar = true;
			if(atacar)
			{
				cd = 0;
				estado = EnemyState.ATACANDO;
			}
		}
	}
}

function EnemyStateNormal()
{
	
	spr = 0;
	
	if(distance_to_object(obj_player) < 2000 and distPlayer >= -200 and distPlayer <= 200)
	{
		velx = 10
		estado = EnemyState.ATENTO;
	}
	
	if(place_meeting(x, y+1, obj_parede))
	{
	
		if(!place_meeting(x + (velx * 30), y+1, obj_parede) or place_meeting(x + (velx*2), y, obj_parede))
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
	
	if place_meeting(x + velx,y,obj_parede)
	{
		while !place_meeting(x+sign(velx),y,obj_parede)
		{
			x+= sign(velx)
		}

		//velx = 0
	}


	if place_meeting(x,y + vely * 3,obj_parede)
	{
		while !place_meeting(x,y+sign(vely),obj_parede)
		{
			y += sign(vely)
		}
	vely = 0
	}
	
}


function EnemyStateAtacando()
{
	
	spr = 2;
	if(image_xscale == 1)
	{
		velx = 60;
	}
	else
	{
		velx = -60;
	}

	cd += 0.02
	if(cd >= 2)
	{
		cdATK = 3;
		velx /= 6;
		atacando = false;
		cd = 0;
		atacar = false;
		estado = EnemyState.NORMAL;
	}
}


