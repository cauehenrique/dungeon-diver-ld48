/// @description  Fire particle spawner.
repeat(irandom_range(2, 4)) {
	var _part = instance_create_layer(x + random_range(-1, 1), y + random_range(-1, 1), "Instances", objFireParticle);
	_part.partColor = (shootTimer <= 0) ? FIRE_COLOR : LOW_FIRE_COLOR;
}
alarm[4] = fireTimer;
