with (other)
{
	hp--;
	with (oHearts) { currentHearts--; }
	audio_play_sound(snDeath, 10, false);
	flash = 3;
	//hitfrom = other.direction; // gets direction of bullet (other.other.direction -> enemy.bullet.direcrion)
}

instance_destroy();




