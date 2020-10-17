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
			
			sprite_index = spr_worker_stand_1;
			
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
			
			// add finding plants here
			state = state_idle;
			break;
			
		};
		
	break;
	
	
	case state_gotoPlants:
		
		// Animation
		
		
		// Action
		
		
		// Break
		
		
	break;
};



// -- Horizontal Animation -- 
if (x > xprevious) { image_xscale = 1 };
if (x < xprevious) { image_xscale = -1 };