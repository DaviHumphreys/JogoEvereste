view_enabled = true;
view_visible[0] = true;

if instance_exists(view_target)
{
	camera_set_view_pos(view_camera[0], obj_player.x, obj_player.y)
}