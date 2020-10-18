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

if (global.seeds < cost)
{
	color = c_dkgray;
}
else
{
	color = c_white;
}
draw_sprite_ext(sprite_index,0,x,y,2,2,0,color,alpha);

draw_set_alpha(1);

draw_set_font(tiny_font);
draw_set_color(c_white);
draw_set_alpha(0.6);
draw_rectangle(x,y+45,x+59,y+58,false);
draw_set_alpha(1);
draw_set_color(c_black);
draw_text(x+5,y+46,name + " - " + string(cost));
draw_set_color(c_white);