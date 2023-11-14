video_close()

	resScale = 2.021;
	global.larguraCamera = resL / resScale;
	global.alturaCamera = resA / resScale;
	window_set_size(global.larguraCamera * resScale, global.alturaCamera * resScale);
	surface_resize(application_surface, global.larguraCamera * resScale, global.alturaCamera * resScale)
	
	room_goto(LOADING)
	instance_destroy();