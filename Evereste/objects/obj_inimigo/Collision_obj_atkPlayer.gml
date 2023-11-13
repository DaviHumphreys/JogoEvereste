if(estado != EnemyState.BASICO)
{
	vida -= 1;
	
	flashAlpha = 1;
	if(vida <= 0)
	{
		image_index = 0;	
	}
}

