hsp = 0;
vsp = 0;
grv = 0.3;
done = 0;

image_speed = 0;

ScreenShake(12, 25);
audio_play_sound(snDeath, 10, false);

with (oPlayer) 
{
	if (restore < restore_lim) { restore++; }
}

with (oRestore) 
{
	if (currentRestore < maxRestore) { currentRestore++; }
}