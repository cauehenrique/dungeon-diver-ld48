global.gameStart = false;
global.gameFinished = false;

global.metersDown = 0;
global.timeScale = 1;

global.timerActive = false;

restart_global_timer();

if (audio_is_playing(sndSkullRolling)) audio_stop_sound(sndSkullRolling);
room_restart();