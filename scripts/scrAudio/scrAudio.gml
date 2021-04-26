function audio_play_pitch(_id, _pitch) {
	audio_sound_pitch(_id, _pitch);
	audio_play_sound(_id, 0, false);	
}