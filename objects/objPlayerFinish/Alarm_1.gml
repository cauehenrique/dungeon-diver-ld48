/// @description  Fire particle spawner.
repeat(irandom_range(2, 4)) instance_create_layer(x + random_range(-1, 1), y + random_range(-1, 1), "Instances", objFireParticle);
alarm[1] = 8;
