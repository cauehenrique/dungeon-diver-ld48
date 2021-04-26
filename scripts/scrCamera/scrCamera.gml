function screen_shake(_amount) {
	if (abs(objCamera.screenShake) < _amount) objCamera.screenShake = choose(_amount * -1, _amount);
}