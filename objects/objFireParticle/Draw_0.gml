draw_set_color(partColor);
draw_circle(x, y, fireRad, false);
draw_set_color(c_white);

fireRad += fireGain;
vspeed = min(vspeed + 0.05, 0);

if (fireRad <= 0) instance_destroy();
