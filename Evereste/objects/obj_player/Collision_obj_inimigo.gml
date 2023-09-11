
	// Cooldown dano
if(!piscando)
{
	velx = 0;
	vely = 0;
	vida -= 1;
	piscando = true;
	flashAlpha = 0.85;
	FreezeFrame(200);
	inimigo = other;
	estado = playerState.DANO;
}



if(vida <= 0)
{
	instance_destroy();	
}

