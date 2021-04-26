titlePosition = new Vector2(GUI_W * 0.5, GUI_H * 0.5 - 32);
startPosition = new Vector2(GUI_W * 0.5, GUI_H * 0.5 + 32);

enum TitleState { APPEAR, IDLE, DISAPPEAR };
state = TitleState.APPEAR;

titleAlpha = 0;
guiMovement = 8;
animSpeed = 0.2;