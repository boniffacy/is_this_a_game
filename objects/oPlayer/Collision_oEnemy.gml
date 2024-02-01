/// @description Die
if (hp > 0 && inv == 0)
{
	audio_play_sound(snDeath, 10, false);
	inv = 60;
	hp--;
	flash = 3;
	with (oHearts) { currentHearts--; }
}

