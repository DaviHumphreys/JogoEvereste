if(obj_botaoOpcoes.opcoes)
{
	if(botoes.x >= -2500)
	{
		Voltar(botoes)
		Voltar(obj_jogarTXT);
		Voltar(obj_sairTXT);
		Voltar(obj_optionsTXT);
	}
	else
	{
		if(grade.x <= 200)
		{
			Ir(grade);
		}
		if(keyboard_check_pressed(vk_escape))
		{
			obj_botaoOpcoes.opcoes = false
		}
	}
}
else
{
	if(grade.x >= -6368)
	{
		Voltar(grade);
	}
	else
	{
		if(botoes.x < 416)
		{
			Ir(obj_optionsTXT);
			Ir(obj_sairTXT);
			Ir(botoes)
			Ir(obj_jogarTXT);
		}	
	}
}



