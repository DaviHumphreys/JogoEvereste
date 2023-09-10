
	// Cooldown dano
if(!piscando)
{
	vida -= 1;
	piscando = true;
	flashAlpha = 0.85;
}



if(vida <= 0)
{
	instance_destroy();	
}

