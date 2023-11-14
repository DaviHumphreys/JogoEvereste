var _player = obj_player;
if(!_player.piscando)
{
	audio_play_sound(DOR, 1, false)
	_player.velx = 0;
	_player.vely = 0;
	_player.vida -= 0.5;
	_player.piscando = true;
	_player.flashAlpha = 0.85;
	//FreezeFrame(00);
	_player.inimigo = self;
	_player.estado = playerState.DANO;
}

if(_player.vida <= 0)
	{
		_player.velx = 0;
		_player.vely = 0;
		_player.vivo = false;
		audio_stop_all()
		obj_musica.TocarMusica(snd_semParar)
	}
