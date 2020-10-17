// Draw GUI
draw_set_colour(make_color_rgb(75, 75, 75));
	
	draw_rectangle(0, room_height - 64, room_width, room_height, false);
	
draw_set_color(c_ltgray);
	
	// Draw selection square
	var _x = floor(mouse_x / 16) * 16;
	var _y = floor(mouse_y / 16) * 16;

	if (
		
		mouse_x > 32 &&
		mouse_x < room_width - 32 &&
		mouse_y > 32 &&
		mouse_y <room_height - 96
		
	) {
	
		draw_rectangle(_x + 1, _y + 1, _x + 15, _y + 15, true);
	
	};
	
draw_set_colour(c_black);

// draw_text(8, 8, string(building_selection));