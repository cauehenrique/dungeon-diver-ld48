/// @description draw_self_shadow()
function draw_shadow() {
	draw_sprite_ext(sprite_index, image_index, x + SHADOW_DISTANCE, y + SHADOW_DISTANCE, image_xscale, image_yscale, image_angle, SHADOW_COLOR, SHADOW_ALPHA);
}
