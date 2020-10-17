draw_self()
draw_text(x,y,string(water));
if (x < last_x)
{
	draw_sprite_ext(sprite, 0, x, y, -1,1,0,c_white,1);
}
else
{
	draw_sprite_ext(sprite, 0, x, y, 1,1,0,c_white,1);
}
last_x = x;
last_y = y; 