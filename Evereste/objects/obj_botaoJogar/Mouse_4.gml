sprites[0] = spr_atkBoss2
sprites[1] = spr_atkBoss3
sprites[2] = spr_aranheto
sprites[3] = spr_caveirasmatica
sprites[4] = spr_GrievousCharging
sprites[5] = spr_grievousAndando
sprites[6] = spr_grievousMorrendo
sprites[7] = spr_grievousCorrendo
sprites[8] = spr_bossIdle
sprites[9] = spr_BossRisada
sprites[10] = spr_matoCurto
sprites[11] = spr_pedra1
sprites[12] = spr_pedra2
sprites[13] = spr_pedra3
sprites[14] = spr_pedra4

sprite_prefetch_multi(sprites)

room_goto(Room02);
audio_pause_sound(snd_musicaMenu);
obj_musica.TocarMusica(snd_semParar)