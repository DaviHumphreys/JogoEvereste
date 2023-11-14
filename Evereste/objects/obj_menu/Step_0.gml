if(obj_botaoCreditos.creditos)
{
	if(botoes.x >= -2500)
	{
		Voltar(botoes)
	}
	else
	{
		if(grade.x <= 4400)
		{
			Ir(grade);
			Ir(texto);
			Ir(esc);
			Ir(cred);
		}
		if(keyboard_check_pressed(vk_escape))
		{
			obj_botaoCreditos.creditos = false
		}
	}
}
else
{
	if(grade.x >= -2784)
	{
		Voltar(grade);
		Voltar(texto);
		Voltar(esc);
		Voltar(cred);
	}
	else
	{
		if(botoes.x < 992)
		{
			Ir(botoes)
		}	
	}
}



