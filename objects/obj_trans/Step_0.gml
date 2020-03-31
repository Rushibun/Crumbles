// progress transition

if (mode != TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(0,percent - max((percent/10),0.005));
	}
	else 
	{
		percent = min(percenttarget,percent + max(((percenttarget - percent)/10),0.005));
	}
	if (percent == percenttarget) || (percent == 0)
	{
		switch (mode) // do something based on mode we're in
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break; // makes sure that case ends properly
			}
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
		}
	}
}
