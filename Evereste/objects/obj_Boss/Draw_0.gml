event_inherited();

switch (estado)
{
	case EnemyState.BASICO: break
	case EnemyState.NORMAL: EnemyStateNormal() break;
	case EnemyState.ATENTO: EnemyStateAtento() break;
	case EnemyState.ATACANDO: EnemyStateAtacando() break;
}

