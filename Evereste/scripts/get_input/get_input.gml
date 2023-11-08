
if(keyboard_check_pressed(vk_escape))
{
	instance_destroy(obj_player)
	instance_destroy(obj_vida)
	room_goto(Menu)
}
