#region

vsp = vsp + grv;

// Horizontal Collsion
if (place_meeting(x+hsp, y, oWall))
{
	while (!place_meeting(x+sign(hsp), y, oWall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

// Vertical Collsion
if (place_meeting(x, y+vsp, oWall))
{
	while (!place_meeting(x, y+sign(vsp), oWall))
	{
		 y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

#endregion



// Animation
#region

if (!place_meeting(x, y+1, oWall))
{
	sprite_index = sEnemyA;
	image_speed = 0;
	if (sign(vsp) > 0) { image_index = 1; } else { image_index = 0; }
	
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sEnemy;
	}
	else
	{
		sprite_index = sEnemyR;
	}
}

if (hsp != 0) { image_xscale = sign(hsp) * size; }
image_yscale = size;

#endregion