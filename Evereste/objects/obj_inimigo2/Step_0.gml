if(estado = EnemyState.BASICO and cabeca = true)
{
	instance_create_layer(x, y - 700, "Instances", obj_cabeca)
	cabeca = false;
}
event_inherited();

