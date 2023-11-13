if(piscando)
{
	piscando_cd = Piscar(piscando_cd);
}


switch (estado)
{
	case playerState.LIVRE: PlayerStateLIVRE(); break
	case playerState.TRAVADO: break;
	case playerState.DANO: PlayerStateDANO(); break;
}

cdATK -= 0.04;


function Piscar(_cd)
{
	_cd -= 0.1;
	if(_cd <= 0)
	{
		piscando = false;
		_cd = 7;
	}
	
	if(flashAlpha > 0)
	{
		if(flashAlpha < 0.3)
		{
			flashAlpha = 0.60;
		}
		else
		{
			flashAlpha -= 0.03;	
		}
	}
	
	if(_cd <= 0.5)
	{
		flashAlpha = 0;	
	}
	
	return _cd;
}

sprite_index = sprites[spr]

if(!vivo)
{
	room_goto(respawnroom);
	x = respawnx;
	y = respawny;
	vida = vida_max;
	vivo = true;
}