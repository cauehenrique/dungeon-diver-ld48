explosionRad = irandom_range(6, 8);
screen_shake(2);

repeat(irandom_range(2, 4)) instance_create_layer(x, y, "Instances", objExplosionParticle);