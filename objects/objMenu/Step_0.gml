switch (state) {
	case TitleState.APPEAR: {
		titleAlpha = smooth_approach(titleAlpha, 1, animSpeed);
		guiMovement = smooth_approach(guiMovement, 0, animSpeed);
		
		if (titleAlpha == 1) && (guiMovement == 0) state = TitleState.IDLE;
		break;
	}
	
	case TitleState.IDLE: {
		titleAlpha = 1;
		guiMovement = 0;
		
		break;
	}
	
	case TitleState.DISAPPEAR: {
		titleAlpha = smooth_approach(titleAlpha, 0, animSpeed);
		guiMovement = smooth_approach(guiMovement, -8, animSpeed);
		
		if (titleAlpha == 0) {
			instance_create_layer(-4, 36, "Skull", objStartSkull);
			instance_destroy();
		}
		
		break;
	}
}