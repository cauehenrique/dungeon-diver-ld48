function move_horizontal(_hSpeed) {
	if (place_meeting(x + _hSpeed, y, objSolid)) {
	    while (!place_meeting(x + sign(_hSpeed), y, objSolid)) {
	        x += sign(_hSpeed);
	    }
	    _hSpeed = 0;
	}
	x += _hSpeed * global.timeScale;

	return (_hSpeed);
}

function move_vertical(_vSpeed) {
	if (place_meeting(x, y + _vSpeed, objSolid)) {
	    while (!place_meeting(x, y + sign(_vSpeed), objSolid)) {
	        y += sign(_vSpeed);
	    }
	    _vSpeed = 0;
	}
	y += _vSpeed * global.timeScale;

	return (_vSpeed);
}