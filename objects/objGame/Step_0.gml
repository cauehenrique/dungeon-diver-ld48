if (!global.timerActive) exit;

global.milSeconds = min(global.milSeconds + 1, 60);

if (global.milSeconds >= 60) {
	audio_play_sound(sndSecond, 0, false);
	
	global.milSeconds = 0;
	global.seconds += 1;
}

if (global.seconds >= 60) {
	audio_play_sound(sndMinute, 0, false);
	
	global.seconds = 0;
	global.minutes += 1;
}