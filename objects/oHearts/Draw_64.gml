/// @description draw hearts

sprite_w = sprite_get_width(sHpPoints);
startX = sprite_w;
startY = sprite_get_height(sHpPoints);

for (var hearts = 0; hearts < maxHearts; hearts++)
{
	if(hearts < currentHearts) { image = HEART.UP; }
	else { image = HEART.DOWN; }
	xx = startX + sprite_w * hearts;
	draw_sprite(sHpPoints, image, xx, startY);
}