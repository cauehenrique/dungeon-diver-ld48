///@desc Draws self and the line that points to mouse.
draw_self();

var _mouseDir = point_direction(x, y, mouse_x, mouse_y);
var _mouseFinal = new Vector2(x + lengthdir_x(32, _mouseDir), y + lengthdir_y(32, _mouseDir));

if (mouse_check_button(mb_left)) && (shootTimer <= 0) {
	draw_set_color(FIRE_COLOR);
	draw_set_alpha(0.3);
	
	draw_line(x, y, _mouseFinal.x, _mouseFinal.y);

	draw_set_alpha(1);
	draw_set_color(c_white);
}
