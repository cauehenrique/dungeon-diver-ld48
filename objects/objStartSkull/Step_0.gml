image_angle -= hspeed * 10;

if (x >= targetX) {
	audio_stop_sound(sndSkullRolling);
	audio_play_pitch(sndSkullJump, random_range(0.8, 1.2));
	
	instance_destroy();
	
	var _spawnedPlayer = instance_create_layer(x, y, "Skull", objPlayer);
	_spawnedPlayer.velocity.y = -2;
	
	objCamera.targetObject = _spawnedPlayer.id;
}