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

sprite_prefetch_multi(sprites)

room_goto(Room02);
audio_pause_sound(snd_musicaMenu);