// Get Player Nnput
#region

if (hascontrol)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
	key_restore = keyboard_check_pressed(vk_shift);

	if (key_left) || (key_right) || (key_jump)
	{
		controller = 0;
	}


	if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2)
	{
		key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
		key_right = max(gamepad_axis_value(0, gp_axislh), 0);
		controller = 1;
	}

	if (gamepad_axis_value(0, gp_axislv) < -0.25)
	{
		key_jump = 1;
		controller = 1;
	}
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}

#endregion

//Calculate movement
#region

// var only lasts one frame - here one loop of Step Event
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x, y+1, oWall)) && (key_jump)
{
	vsp = -jump;
}

if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2)
{
	key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
	key_right = max(gamepad_axis_value(0, gp_axislh), 0);
	controller = 1;
}

#endregion


#region 

// Horizontal Collsion
if (place_meeting(x+hsp, y, oWall))
{
	while (!place_meeting(x+sign(hsp), y, oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
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
	/*
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) { image_index = 1; } else { image_index = 0; }
	*/
}
else
{
	/*
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
	}
	*/
}

if (hsp != 0) { image_xscale = sign(hsp); }

#endregion

if (inv > 0)
{
	inv--;
}

if (key_restore && (restore == restore_lim) && hp < restore_lim)
{
	restore = 0;
	hp++;
	with(oHearts) { currentHearts++; }
	with(oRestore) { currentRestore = 0; }
}