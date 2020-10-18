if (global.water < 0 && active == false)
{
	active = true;
	wait = 1;
}

if (active = true)
{
	draw_set_color(c_black)
	draw_set_alpha(wait/10)
	draw_rectangle(0,0,room_width,room_height,false)
	draw_set_color(c_red)
	draw_set_font(seed_big_font)
	draw_text((room_width/2) - 128,room_height/2,"You lost on round " + string(obj_waves.stage-1) + ". Loser.");
	wait += 1;
}

if (wait > 500)
{
	game_restart();
}