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
}

