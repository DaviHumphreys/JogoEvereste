if(estado != EnemyState.BASICO)
{
	vida -= 1;
	
	flashAlpha = 1;
	if(vida <= 0)
	{
		estado = EnemyState.BASICO	
		vivo = false
		x = 5300;
		y = 4600;
		layer_sequence_create("Instances", x, y, BossMorrendo);
		x = 0;
		y = 0;
		audio_play_sound(ARRRRG, 1, false);
		instance_create_layer(0,0,"Instances", obj_bossMorrendoManager)
	}
}