///@desc Jump alarm.
if (global.gameFinished) {
	audio_play_pitch(sndSkullJump, random_range(0.8, 1.2));
	velocity.y = irandom_range(2, 4) * -1;
}

alarm[0] = random_range(1, 2) * FRAMES;