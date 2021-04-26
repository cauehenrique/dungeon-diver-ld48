///@desc Applies the movement.
if (velocity.y < maxGravForce) velocity.y += gravForce;

velocity.x = move_horizontal(velocity.x);
velocity.y = move_vertical(velocity.y);

if (place_meeting(x, y + 1, objSolid)) image_index = 0;
else image_index = 1;

if (instance_exists(objPlayer)) image_xscale = sign(objPlayer.x - x);