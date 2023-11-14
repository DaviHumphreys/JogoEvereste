var _videoData = video_draw()
var _videoStatus = _videoData[0]
if(_videoStatus == 0)
{
	draw_surface(_videoData[1], 0, 0);
}
else
{
	resScale = 2.021;
	global.larguraCamera = resL / resScale;
	global.alturaCamera = resA / resScale;
	window_set_size(global.larguraCamera * resScale, global.alturaCamera * resScale);
	surface_resize(application_surface, global.larguraCamera * resScale, global.alturaCamera * resScale)
	
	room_goto(Menu)
	instance_destroy();
}



