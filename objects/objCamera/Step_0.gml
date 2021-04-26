/// @description  Change view position and size.
camera_set_view_size(VIEW, cameraSize.x, cameraSize.y);

if (!instance_exists(targetObject)) exit;

var _targetPosition = new Vector2(targetObject.x - (cameraSize.x * 0.5), targetObject.y - (cameraSize.y * 0.5));
var _clampedCamera = new Vector2(clamp(0, _targetPosition.x, room_width - cameraSize.x), clamp(0, _targetPosition.y, room_height - cameraSize.y));
var _currentPosition = new Vector2(camera_get_view_x(VIEW), camera_get_view_y(VIEW));

camera_set_view_pos(VIEW, lerp(_currentPosition.x, _clampedCamera.x, cameraSpeed) + random_range(-screenShake, screenShake), lerp(_currentPosition.y, _clampedCamera.y, cameraSpeed) + random_range(-screenShake, screenShake));
screenShake *= 0.8;
