/// @description Move to next room



with (oPlayer)
{
	if (hascontrol)
	{
		//hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO, other.target); // set other.target level in room editor manually
		//SlideTransition(TRANS_MODE.NEXT);
	}
}




