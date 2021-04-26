draw_set_color(partColor);
draw_circle(x, y, partRad, false);
draw_set_color(c_white);

partRad = max(partRad - 0.2 * global.timeScale, 0);

if (partRad <= 0) instance_destroy();