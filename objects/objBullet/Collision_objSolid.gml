with (objPlayer) {
	var _dirToBullet = point_direction(x, y, other.x, other.y);
	var _impulseForce = (32 - min(point_distance(x, y, other.x, other.y), 32)) * 0.13;
	
	velocity = new Vector2(lengthdir_x(_impulseForce * -1, _dirToBullet), lengthdir_y(_impulseForce * -1, _dirToBullet));
}

if (audio_is_playing(sndExplosion)) audio_stop_sound(sndExplosion);
audio_play_pitch(sndExplosion, random_range(0.8, 1.2));

instance_create_layer(x, y, "Instances", objExplosion);
instance_destroy();
