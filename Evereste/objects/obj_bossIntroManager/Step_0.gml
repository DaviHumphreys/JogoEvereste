v += 0.0001
if(v >= t)
{
	resScale = 2.021;
	global.larguraCamera = resL / resScale;
	global.alturaCamera = resA / resScale;
	window_set_size(global.larguraCamera * resScale, global.alturaCamera * resScale);
	surface_resize(application_surface, global.larguraCamera * resScale, global.alturaCamera * resScale)
	
	obj_Boss.estado = EnemyState.NORMAL;
	obj_player.estado = playerState.LIVRE;	
	obj_camera.view_target = obj_player;
	audio_play_sound(snd_musicaBoss, 1, true);
	instance_destroy();
}


