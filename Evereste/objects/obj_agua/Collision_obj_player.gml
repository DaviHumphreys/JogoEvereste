if(obj_player.podeNadar = false)
{
	obj_player.vida -= 0.5;
	obj_player.piscando = true;
	obj_player.x = respawnx;
	obj_player.y = respawny;
}

if(_player.vida <= 0)
	{
		obj_player.vivo = false;
	}
