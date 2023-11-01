var _player = obj_player;
if(!_player.piscando)
{
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
	instance_destroy(_player);	
}
