if (!global.gameFinished) {
	instance_create_layer(0, 0, "Controllers", objFinishGUI);
	
	global.gameFinished = true;
	global.timerActive = false;
}