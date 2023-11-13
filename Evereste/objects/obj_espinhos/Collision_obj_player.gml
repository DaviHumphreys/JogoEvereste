
	var _player = obj_player;
	
	_player.velx = 0;
	_player.vely = 0;
	_player.estado = playerState.DANO;
	_player.vida -= 0.5;
	_player.piscando = true;
	_player.flashAlpha = 0.85;
	_player.piscando_cd = 4;
	//FreezeFrame(00);
	_player.inimigo = self;
	


	_player.x = respawnx;
	_player.y = respawny;

	if(_player.vida <= 0)
	{
		obj_player.vivo = false;
	}


