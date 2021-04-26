global.timeScale = 1;
global.metersDown = 0;
global.gameStart = false;
global.gameFinished = false;

global.timerActive = false;
global.minutes = 0;
global.seconds = 0;
global.milSeconds = 0;

// HUD Stuff.
metersPosition = new Vector2(GUI_W * 0.5, 12);
timerPosition = new Vector2(GUI_W * 0.5, 20);

guiSurface = -1;
draw_set_font(fntPixel);

randomize();