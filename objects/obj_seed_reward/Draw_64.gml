if (instance_number(obj_enemies_chicken) < 1 && instance_number(obj_enemies_chicken) < 1)
		{
			if (global.seeds_buffer > 0)
			{
				wait = 100;
				reward = global.seeds_buffer;
				global.seeds_buffer = 0;
				global.seeds += reward;
			}
		}

if (wait > 0)
{
	draw_set_font(seed_big_font);
	draw_set_alpha(0.6);
	draw_set_color(c_white);
	draw_rectangle(0,(room_height/2)-32,room_width,room_height/2+16,false)
	draw_set_color(c_black);
	draw_set_alpha(1);
	draw_text(room_width/2 - 16,room_height/2-16,"Seeds +" + string(reward));
	draw_set_alpha(1);
	wait -= 1;
}