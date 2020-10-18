
if (stage = 0 && ds_list_size(global.building_list) > 0) {
	
	stage = 1;
	timer = 1200;
	
};

if (stage != 0 && stage < ds_grid_height(sg)) {
	
	if (timer = 0) {
		
		if (stage < ds_grid_height(sg)) { stage += 1 } else {
			
			show_message("You Win!");
			game_end();
			
		};
		
		timer = sg[# stage, 1];
		
		
		
		for (var i = 0; i < sg[# stage, 3]; i += 1) {
		
			var _dir = irandom(359);
			instance_create_depth(room_width / 2 + lengthdir_x(450, _dir), room_height / 2 + lengthdir_y(450, _dir), depth, obj_enemies_chicken);
		
		};
	
		for (var i = 0; i < sg[# stage, 4]; i += 1) {
		
			var _dir = irandom(359);
			instance_create_depth(room_width / 2 + lengthdir_x(450, _dir), room_height / 2 + lengthdir_y(450, _dir), depth, obj_enemies_cow);
		
		};
		
	} else {
		
		timer -= 1;
		
	};
	
};

draw_text(8, 128 - 16, "Stage: " + string(stage));
draw_text(8, 128, "Timer: " + string(timer))
