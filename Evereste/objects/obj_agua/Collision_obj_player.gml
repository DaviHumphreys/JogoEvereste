if(obj_player.podeNadar = false)
{
	obj_player.vida -= 0.5;
	obj_player.piscando = true;
	obj_player.x = respawnx;
	obj_player.y = respawny;
	audio_play_sound(DOR, 1, false)
}

if(obj_player.vida <= 0)
	{
		obj_player.vivo = false;
	}
