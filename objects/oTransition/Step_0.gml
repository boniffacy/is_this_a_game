/// @description Progess the transition

if (mode != TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		if(gotoprev)
		{
			oPlayer.x = instance_find(oEnterLevel, 0).x -128;
			oPlayer.y = instance_find(oEnterLevel, 0).y;
			gotoprev = false;
		}
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
				if room_exists(room_next(room)) { room_goto_next(); }		
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				//if(room_get_name(target) == room_get_name(room_previous(room)))
				//{
					//gotoprev = true;
				//}
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

