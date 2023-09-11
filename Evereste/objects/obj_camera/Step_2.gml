camera_set_view_size(view_camera[0], global.larguraCamera*10, global.alturaCamera*10)

if instance_exists(view_target)
{
	var x1 = view_target.x - (global.larguraCamera / 2)*10;
	var y1 = view_target.y - (global.alturaCamera / 2)*10;
	
	x1 = clamp(x1, 0, room_width - (global.larguraCamera));
	y1 = clamp(y1, 0, room_width - (global.alturaCamera));
	
	cx = camera_get_view_x(view_camera[0]);
	cy = camera_get_view_y(view_camera[0]);

	camera_set_view_pos(view_camera[0], lerp(cx, x1, spd), lerp(cy, y1, spd))
}