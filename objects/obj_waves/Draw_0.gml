// Draw timer
if (ds_list_size(global.building_list) > 0) { timer += 1 };

if (timer = 0) {
	
	stage += 1;
	
	timer = sg[# stage, 1];
	
	for (var i = 0; i < sg[# stage, 2]; i += 1) {
		
		var _dir irandom(359);
		instance_create_depth(lengthdir_x(390, _dir), lengthdir_y(390, _dir), depth, obj_enemies_chicken);
		
	};
	
	for (var i = 0; i < sg[# stage, 3]; i += 1) {
		
		var _dir irandom(359);
		instance_create_depth(lengthdir_x(390, _dir), lengthdir_y(390, _dir), depth, obj_enemies_cow);
		
	};
	
} else {
	
	timer -= 1;
	
};