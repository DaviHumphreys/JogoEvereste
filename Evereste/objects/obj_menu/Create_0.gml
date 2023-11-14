audio_pause_all()

audio_play_sound(snd_musicaMenu, 1, true);

global.coleciovaisColetados = 0;

function Ir(xx)
{
	xx.x += 500
}

function Voltar(xx)
{
	xx.x -= 500
}

botoes = obj_opcoesMenu
grade = obj_gradeMenu
texto = obj_texto
esc = obj_ESC
cred = obj_creditos