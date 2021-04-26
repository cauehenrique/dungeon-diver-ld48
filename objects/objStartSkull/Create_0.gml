hspeed = random_range(0.5, 1.5);

targetX = 32 - irandom_range(4, 8);

if (audio_is_playing(sndSkullRolling)) audio_stop_sound(sndSkullRolling);
audio_play_sound(sndSkullRolling, 0, true);

restart_global_timer();