function draw_set_align(_hor, _ver) {
	draw_set_halign(_hor);
	draw_set_valign(_ver);
}

function draw_reset_align() {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}