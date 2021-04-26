function draw_text_outlined(_x, _y, _text) {
	var lastColor = draw_get_color();
	
	draw_set_color(c_black);
	draw_text(_x + 1, _y + 1, _text);
	draw_text(_x, _y + 1, _text);
	
	draw_set_color(lastColor);
	draw_text(_x, _y, _text);
}

function string_zero_padding(_str, _desired_size) {
    return string_repeat("0", max(_desired_size - string_length(_str), 0)) + _str;
}