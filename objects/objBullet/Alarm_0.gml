with (instance_create_layer(x + irandom_range(-2, 2), y, "Instances", objFireParticle)) {
	fireGain = -0.3;
	
	hspeed = 0;
	vspeed = 0;
}

alarm[0] = fireTimer;