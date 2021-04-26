draw_circle(x, y, explosionRad, false);

explosionRad = lerp(explosionRad, 0, 0.2);
if (explosionRad <= 0) instance_destroy();