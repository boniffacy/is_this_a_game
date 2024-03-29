/// @descr Set up camera
cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

shake_length = 0 * 1; // equals to framerate * number of seconds shake takes
shake_magnitude = 0;
shake_remain = 0;
buff = 64; // buffer for camera window(accounts for screen shake)

stoneslayer = layer_get_id("Stones");
treeslayer = layer_get_id("Trees");
skylayer = layer_get_id("Sky");
cloudslayer = layer_get_id("Clouds");