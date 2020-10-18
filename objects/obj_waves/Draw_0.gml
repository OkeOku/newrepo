
if (stage = 0 && ds_list_size(global.building_list) > 0) {
	
	stage = 1;
	timer = 1200;
	
};

if (stage != 0) {
	
	if (timer = 0) {
		
		display_wait = 100;
		
		raid = true;
		
		timer = choose(1200,2400);
		
		stage += 1;
		
		
		chicken_count	= clamp(stage / 0.9, 1, 100);
		cow_count		= clamp(stage / 2 - 2, 0, 100);
		
		
		for (var i = 0; i < chicken_count; i += 1) {
		
			var _dir = irandom(359);
			instance_create_depth(room_width / 2 + lengthdir_x(450, _dir), room_height / 2 + lengthdir_y(450, _dir), -1, obj_enemies_chicken);
		
		};
	
		for (var i = 0; i < cow_count; i += 1) {
		
			var _dir = irandom(359);
			instance_create_depth(room_width / 2 + lengthdir_x(450, _dir), room_height / 2 + lengthdir_y(450, _dir), -1, obj_enemies_cow);
		
		};
		
	} else {
		
		if (instance_number(obj_enemies_chicken) < 1 && instance_number(obj_enemies_cow) < 1)
		{
			raid = false;
			timer -= 1;
		}
		
	};
	
};

if (display_wait > 0)
{
	draw_set_font(seed_big_font);
	draw_set_alpha(0.6);
	draw_set_color(c_red);
	draw_rectangle(0,(room_height/2)-32,room_width,room_height/2+16,false)
	draw_set_color(c_white);
	draw_set_alpha(1);
	message = "Incoming Wave (Round" + string(stage-1)+")";
	draw_text(room_width/2 - (string_width(message)/2)+10,room_height/2-16,message);
	draw_set_alpha(1);
	display_wait -= 1;
}