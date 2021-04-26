///@desc Image variables and setup velocity.
image_speed = 0;
image_index = 0;

velocity = new Vector2(0, 0);
gravForce = 0.3;
maxGravForce = 2;

alarm[0] = random_range(0.6, 1.5) * FRAMES;
alarm[1] = 8;