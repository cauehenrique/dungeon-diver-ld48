if (!surface_exists(guiSurface)) guiSurface = surface_create(GUI_W, GUI_H);
surface_set_target(guiSurface);
draw_clear_alpha(c_black, 0);