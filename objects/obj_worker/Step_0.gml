// -- Horizontal Animation -- 
if (x > xprevious) { image_xscale = 1 };
if (x < xprevious) { image_xscale = -1 };


// -- Ai state machine -- 
switch (state) {
	
	
	case state_idle:
		
		// Animation
		if (water < 1) {
			
			sprite_index = spr_worker_stand_1;
			
		} else {
			
			sprite_index = spr_worker_standWithWater_1;
			
		};
		
		// Action
		
		
		// Break
		if (water < 1) {
			
			// Go get water
			state = state_gotoWater;
			break;
			
		};
		
	break;
	
	
	
	case state_gotoWater:
		
		// Animation
		if (water < 1) {
			
			sprite_index = spr_worker_walk_1;
			
		} else {
			
			sprite_index = spr_worker_standWithWater_1;
			
		};
		
		// Action
		motion_set(point_direction(x, y, obj_water.x, obj_water.y), move_speed);
		
		// Break
		if (distance_to_object(obj_water) < 8) {
			
			speed = 0;
			state = state_fillWater;
			break;
			
		};
		
	break;
	
	
	
	case state_fillWater:
		
		// Animation
		sprite_index = spr_worker_getWater_1;
		
		// Action
		water += 1;
		
		// Break
		if (water >= 100) {
			
			state = state_idle;
			
			for (var i = 0; i < ds_list_size(global.building_list); i += 1) {
				
				var _id = global.building_list[| i];
				
				if (!is_undefined(_id)) {
				
					if (_id.image_index != _id.image_number - 1) {
						
						target	= _id;
						state	= state_gotoPlants;
						
					};
				
				};
				
			};
			
		};
		
	break;
	
	
	case state_gotoPlants:
		
		// Animation
		sprite_index = spr_worker_walkWithWater_1;
		
		// Action
		if (instance_exists(target)) {
		
			motion_set(point_direction(x, y, target.x, target.y), move_speed);
			
		};
		
		// Break
		if (distance_to_point(target.x + 8, target.y + 8) < 8) {
			
			target.image_index += 1;
			target	= -1;
			water	= 0;
			state = state_gotoWater;
			
		};
		
	break;
};