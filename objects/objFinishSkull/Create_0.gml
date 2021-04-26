///@desc Image variables and setup velocity.
sprite_index = choose(sprSmokeSkull, sprGirlSkull);

image_speed = 0;
image_index = 0;

velocity = new Vector2(0, 0);
gravForce = 0.2;
maxGravForce = 2;

alarm[0] = random_range(0.6, 1.5) * FRAMES;