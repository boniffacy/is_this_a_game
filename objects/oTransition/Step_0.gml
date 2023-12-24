/// @description Progess the transition

if (mode != TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(0, percent - max((percent * 0.1), 0.005));	
	}
	else
	{
		percent = min(1, percent + max(((1 - percent) * 0.1), 0.005));
	}
	
	if (percent == 1) || (percent == 0)
	{
		switch (mode)
		{
		}
	}
}




