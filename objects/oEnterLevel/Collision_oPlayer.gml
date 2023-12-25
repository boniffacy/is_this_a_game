/// @description Move to next room



with (oPlayer)
{
	if (hascontrol)
	{
		//hascontrol = false;
		switch(other.entertype)
		{
			case ENTER_TYPE.NEXT:
			{
				SlideTransition(TRANS_MODE.NEXT); 
				break;
			}
			case ENTER_TYPE.PREV:
			{
				SlideTransition(TRANS_MODE.GOTO, other.target); 
				break;
			}
		}
		//SlideTransition(TRANS_MODE.GOTO, other.target); // set other.target level in room editor manually
		//SlideTransition(TRANS_MODE.NEXT);
	}
}




