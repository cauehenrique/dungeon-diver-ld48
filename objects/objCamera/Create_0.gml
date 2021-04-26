/// @description  Camera variables.
#macro VIEW view_camera

cameraSize = new Vector2(90, 160);
windowScale = 4;

window_set_size(cameraSize.x * windowScale, cameraSize.y * windowScale);
alarm[0] = 1;

surface_resize(application_surface, cameraSize.x, cameraSize.y);
display_set_gui_size(cameraSize.x, cameraSize.y);

screenShake = 0;
targetObject = objPlayer;
cameraSpeed = 0.2;