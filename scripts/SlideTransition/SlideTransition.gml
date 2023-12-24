// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @descr SlideTransition(mode, targetroom)
/// @arg Mode sets transition mode between next, restart and goto.
/// @arg Target sets target room when using goto mode.

function SlideTransition()
{
	with (oTransition) 
	{
		mode = argument[0];
		if (argument_count > 1) { target = argument[1]; }
	}
}