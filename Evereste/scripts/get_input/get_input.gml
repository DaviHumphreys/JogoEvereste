pulo = keyboard_check(ord("W"))
puloInicio = keyboard_check_pressed(ord("W"))
ataque = keyboard_check_pressed(ord("J"))
movex = -keyboard_check(ord("A"))+keyboard_check(ord("D"))
baixo = keyboard_check(ord("S"))

if(keyboard_check_pressed(vk_escape))
{
	instance_destroy(obj_player)
	instance_destroy(obj_vida)
	room_goto(Menu)
}
