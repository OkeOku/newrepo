// -- Ai state machine -- 
switch (state) {
	
	
	case state_idle:
		
		// Action
		
		
		// Break
		if (water < 1) {
			
			// Go get water
			state = state_gotoWater;
			break;
			
		};
		
	break;
	
	
	
	case state_gotoWater:
		
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
		
		// Action
		water += 1;
		
		// Break
		if (water >= 100) {
			
			// add finding construction blueprints here
			state = state_idle;
			break;
			
		};
		
	break;
	
	
};



// -- Horizontal Animation -- 
if (x > xprevious) { image_xscale = 1 };
if (x < xprevious) { image_xscale = -1 };