#region Movement and Physics
if (velocity.y < maxGravForce) velocity.y += gravForce;

if (place_meeting(x + velocity.x, y, objSolid)) {
	audio_play_pitch(sndWallHit, random_range(0.8, 1.2));
	screen_shake(1);
	
	velocity.x *= 0.4;
	velocity.x *= -1;
}

if (place_meeting(x, y + 1, objSolid)) velocity.x = lerp(velocity.x, 0, 0.2);

velocity.x = move_horizontal(velocity.x);
velocity.y = move_vertical(velocity.y);
#endregion

#region Shooting
// Aiming
if (slowTime > 0) && (shootTimer <= 0) && (mouse_check_button(mb_left)) {
	slowTime = max(slowTime - 1, 0);
	global.timeScale = 0.3;
} else global.timeScale = 1;

// Shooting
shootTimer = max(shootTimer - 1, 0);
if (shootTimer <= 0) && (mouse_check_button_released(mb_left)) {
	slowTime = 2 * FRAMES;
	shootTimer = shootTimerFull;
	
	audio_play_pitch(sndShoot, random_range(0.8, 1.2));
	screen_shake(2);
	
	with (instance_create_layer(x, y, "Instances", objBullet)) {
		speed = 3;
		direction = point_direction(x, y, mouse_x, mouse_y);
	}
}
#endregion

if (velocity.x != 0) image_xscale = sign(velocity.x);

/* If the condition is true, means that I'm going down. */
if (y > biggerY) {
	biggerY = y;
	global.metersDown += 0.1;
}

if (global.gameFinished) && (place_meeting(x, y + 1, objSolid)) {
	instance_create_layer(x, y, "Skull", objPlayerFinish);
	instance_destroy();	
}

#region Death
if (position_meeting(x, y, objDamagePlayer)) {
	global.timeScale = 0.5;
	
	repeat(2) instance_create_layer(x, y, "Instances", objExplosionParticle);
	instance_create_layer(x, y, "Skull", objDeadSkull).image_xscale = image_xscale;
	
	audio_play_pitch(sndDeath, random_range(0.8, 1.2));
	
	instance_destroy();
}
#endregion