if(surface_exists(sombra_surface))
{
	
	surface_set_target(sombra_surface);
	draw_clear_alpha(c_black, 0.5)
	
	draw_set_color(c_black);
	draw_set_alpha(0.9);
	draw_rectangle(0, 0, room_width, room_height, false)
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	gpu_set_blendmode(bm_subtract);
	draw_circle(mouse_x, mouse_y, 100, false);
	gpu_set_blendmode(bm_normal);
	
	surface_reset_target();
	draw_surface(sombra_surface, 0, 0);
	
}
else
{
	sombra_surface = surface_create(9000, 9000);
}

