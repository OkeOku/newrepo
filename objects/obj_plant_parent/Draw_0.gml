if (global.plant_what_now == type && global.build_mode == true)
{
	alpha = 1;
}
else
{
	if (global.build_mode == true)
	{
		alpha = 0.4;
	}
	else
	{
		alpha = 1;
	}
}

draw_sprite_ext(sprite_index,0,x,y,2,2,0,c_white,alpha);

draw_set_alpha(1);