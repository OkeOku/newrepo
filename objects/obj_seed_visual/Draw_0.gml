// Draw GUI
if (global.build_mode == true)
{
	if(keyboard_check_pressed(ord("X")))
			{
				global.build_mode = false;
				global.seeds += global.last_payment;
			}
	draw_set_colour(make_color_rgb(75,75,100));
}
else
{
	draw_set_colour(make_color_rgb(75, 75, 75));
}

draw_rectangle(0, room_height - 68, room_width, room_height, false);
draw_set_color(c_white);
draw_self()

draw_set_font(seed_font);
draw_text(x+32,y+8,"x"+string(global.seeds));
if (global.build_mode == true)
{
	draw_set_font(tiny_font);
	draw_text(x + 350, y, global.description);
	draw_set_font(seed_font);
	draw_text(x + 350, y+10, "(press X to cancel)");
}