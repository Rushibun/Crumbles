// size, variables, and mode setup

w = display_get_gui_width();
h = display_get_gui_height();
// gui is separate screen layer we can doodle on independent of where camera is

h_half = h * 0.5;

enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
// enum turns set of ordered numbers into english readable words

mode = TRANS_MODE.INTRO;
percent = 1;
percenttarget = 1.2;
target = room;