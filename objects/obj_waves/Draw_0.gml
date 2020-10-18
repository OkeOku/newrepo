
if (stage = 0 && ds_list_size(global.building_list) > 0) {
	
	stage = 1;
	timer = 1200;
	
};

if (stage != 0) {
	
	if (timer = 0) {
		
		timer = 1000;
		
		stage += 1;
		
		
		chicken_count	= clamp(stage / 0.9 + 3, 3, 100);
		cow_count		= clamp(stage / 2 - 2, 0, 100);
		
		
		for (var i = 0; i < chicken_count; i += 1) {
		
			var _dir = irandom(359);
			instance_create_depth(room_width / 2 + lengthdir_x(450, _dir), room_height / 2 + lengthdir_y(450, _dir), depth, obj_enemies_chicken);
		
		};
	
		for (var i = 0; i < cow_count; i += 1) {
		
			var _dir = irandom(359);
			instance_create_depth(room_width / 2 + lengthdir_x(450, _dir), room_height / 2 + lengthdir_y(450, _dir), depth, obj_enemies_cow);
		
		};
		
	} else {
		
		timer -= 1;
		
	};
	
};

draw_text(8, 128 - 16, "Stage: " + string(stage));
draw_text(8, 128, "Timer: " + string(timer))
