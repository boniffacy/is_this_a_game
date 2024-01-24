/// @descr Update camera

//Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update object position
x += (xTo - x) * 0.1;
y += (yTo - y) * 0.1;

x = clamp(x, view_w_half + buff, room_width - view_w_half - buff);
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff);

//Screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1 / shake_length) * shake_magnitude));
//if (shake_remain == 0) { shake_remain = shake_magnitude; }

//Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

if (layer_exists(cloudslayer))
{
	layer_x(cloudslayer, x * 0.8);
	var back_c_id = layer_background_get_id(cloudslayer);
	layer_background_alpha(back_c_id, 0.64);
}

if (layer_exists(landlayer))
{
	layer_x(landlayer, x * 0.4);
	var back_id = layer_background_get_id(landlayer);
	layer_background_alpha(back_id, 0.8);
}

if (layer_exists(treeslayer))
{
	layer_x(treeslayer, x * 0.2);
}


