if (!global.gameStart) exit;

var meterFormatted = string_format(global.metersDown, 3, 0);
var meterString = string_replace_all(meterFormatted, " ", "0");

draw_set_align(fa_center, fa_middle);
draw_text_outlined(metersPosition.x, metersPosition.y, meterString + "m");

var _minuteString = string_zero_padding(string(global.minutes), 2);
var _secondString = string_zero_padding(string(global.seconds), 2);
var _milSecondString = string_zero_padding(string(global.milSeconds), 2);
var _timeString =  _minuteString + ":" + _secondString + ":" + _milSecondString;

draw_text_outlined(timerPosition.x, timerPosition.y, _timeString);

draw_reset_align();