draw_set_alpha(titleAlpha);

draw_set_align(fa_center, fa_middle);

draw_text_outlined(titlePosition.x, titlePosition.y + guiMovement, "dungeon diver");

draw_text_outlined(startPosition.x, startPosition.y + guiMovement, "click to start");

draw_set_color(c_gray);

draw_text_outlined(startPosition.x, startPosition.y + 10 + guiMovement, "f11 to fullscreen");
draw_text_outlined(GUI_W * 0.5, GUI_H - 10 + guiMovement, "made for ld48");

draw_set_color(c_white);

draw_reset_align();

draw_set_alpha(1);