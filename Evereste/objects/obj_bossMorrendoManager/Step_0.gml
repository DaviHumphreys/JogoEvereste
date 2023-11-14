v += 0.01
if(v >= t)
{
	room_goto(CREDITOS)
	instance_destroy(obj_player);
	instance_destroy(obj_vida)
	instance_destroy();
}


