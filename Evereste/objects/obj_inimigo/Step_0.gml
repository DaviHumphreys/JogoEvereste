if (vida <= 0)
{
	instance_destroy()
}

if(flashAlpha > 0)
{
	flashAlpha -= 0.05;	
}


switch (estado)
{
	case EnemyState.BASICO: break
	case EnemyState.NORMAL: EnemyStateNormal() break;
	case EnemyState.ATENTO: EnemyStateAtento() break;
	case EnemyState.ATACANDO: EnemyStateAtacando() break;
	case EnemyState.ATAQUEBOSS1: EnemyStateAtaque1() break;
	case EnemyState.ATAQUEBOSS2: EnemyStateAtaque2() break;
	case EnemyState.ATAQUEBOSS3: EnemyStateAtaque3() break;
}


if(place_meeting(x, y, obj_parede)) {
	for(var i = 0; i < 1000; ++i) {
		//Right
		if(!place_meeting(x + i, y, obj_parede)) {
			x += i;
			break;
		}
		//Left
		if(!place_meeting(x - i, y, obj_parede)) {
			x -= i;
			break;
		}
		//Up
		if(!place_meeting(x, y - i, obj_parede)) {
			y -= i;
			break;
		}
		//Down
		if(!place_meeting(x, y + i, obj_parede)) {
			y += i;
			break;
		}
		//Top Right
		if(!place_meeting(x + i, y - i, obj_parede)) {
			x += i;
			y -= i;
			break;
		}
		//Top Left
		if(!place_meeting(x - i, y - i, obj_parede)) {
			x -= i;
			y -= i;
			break;
		}
		//Bottom Right
		if(!place_meeting(x + i, y + i, obj_parede)) {
			x += i;
			y += i;
			break;
		}
		//Bottom Left
		if(!place_meeting(x - i, y + i, obj_parede)) {
			x -= i;
			y += i;
			break;
		}
	}
}