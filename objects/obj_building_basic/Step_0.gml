// Fight
if (growth = sprite_get_number(sprite_base) - 1) {
	
	if (instance_exists(obj_enemies)) {
		
		if (reload > 0) {
			
			reload -= 1;
			
		} else {
			
			image_speed = 1;
			instance_create_depth(x + 8, y + 8, depth, obj_spore);
			reload = 60;
			
		};
		
	};
	
};