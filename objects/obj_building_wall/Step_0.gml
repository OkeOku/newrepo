event_inherited();

depth = y * -1;

/* Fight
if (growth = sprite_get_number(sprite_base) - 1) {
	
	if (instance_exists(obj_enemies)) {
		
		if (reload > 0) {
			
			reload -= 1;
			
		} else {
			
			image_speed = 1;
			
			if (image_index = 7) {
				
				instance_create_depth(x + 8, y + 8, depth, obj_spore);
				
			};
			
		};
		
	};
	
};