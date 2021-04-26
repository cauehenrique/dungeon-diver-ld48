if (skullVisible) draw_self();
if (deathLineW > 0) {
	deathLineW = max(deathLineW - 1, 0);
	draw_line_width(x - 8, y - (deathLineY), x + 8, y - (deathLineY * -1), deathLineW);
} else if (alarm[0] == -1) {
	/* Restarts the game in a good way. */
	global.timeScale = 1;
	global.metersDown = 0;
	
	instance_destroy();
	
	objCamera.targetObject = instance_create_layer(-4, 36, "Skull", objStartSkull);	
}