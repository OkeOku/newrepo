// Draw timer
//if (ds_list_size(global.building_list) > 0 && stage = 0) { timer += 1 };

//if (stage > 0) {
	
//	if (timer = 0) {
	
//		stage += 1;
	
//		timer = sg[# stage, 1];
	
//		//for (var i = 0; i < sg[# stage, 2]; i += 1) {
		
//		//	var _dir irandom(359);
//		//	instance_create_depth(lengthdir_x(390, _dir), lengthdir_y(390, _dir), depth, obj_enemies_chicken);
		
//		//};
	
//		//for (var i = 0; i < sg[# stage, 3]; i += 1) {
		
//		//	var _dir irandom(359);
//		//	instance_create_depth(lengthdir_x(390, _dir), lengthdir_y(390, _dir), depth, obj_enemies_cow);
		
//		//};
	
//	} else {
	
//		timer -= 1;
	
//	};
	
//};

if (stage = 0 && ds_list_size(global.building_list) > 0) {
	
	stage = 1;
	timer = 1200;
	
};

if (stage != 0 && stage < ds_grid_height(sg)) {
	
	if (timer = 0) {
		
		stage += 1;
		
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
