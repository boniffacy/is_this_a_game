/// @description Progess the transition

percenttarget = 1.2; // max size of black slider - over 1 makes delay between lide down and up

if (mode != TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(0, percent - max((percent * 0.1), 0.005));	
	}
	else
	{
		percent = min(percenttarget, percent + max(((percenttarget - percent) * 0.1), 0.005));
	}
	
	if (percent == percenttarget) || (percent == 0)
	{
		switch (mode)
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;	 
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

