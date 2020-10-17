// -- Ai --
switch (state) {
	case chicken_moving:
	
		// Animate
		sprite_index = spr_enemy_cow;
		
		// Action
		motion_set(point_direction( x, y, obj_water.x, obj_water.y), move_speed);
		
		// Break
		if (distance_to_point(obj_water.x, obj_water.y) < 8) {
			
			state = chicken_drinking;
			speed = 0;
			
		};
		
		if (instance_exists(obj_building))
		{
		if (distance_to_point(instance_nearest(x,y,obj_building).x, instance_nearest(x,y,obj_building).y) < 7) {
			
			state = chicken_fighting;
			speed = 0;
			
		}	
		};
		
	break;
	
	case chicken_fighting:
		
		// Animate
		sprite_index = spr_enemy_cow_drinking;
		
		// Break
		if (instance_exists(obj_building))
		{
			if (distance_to_point(instance_nearest(x,y,obj_building).x, instance_nearest(x,y,obj_building).y) > 8) {
			
				if (water >= 80)
				{
					state = chicken_fleeing;
				}
				else
				{
					state = chicken_moving;
				}
				
			}	
			//attack
			instance_nearest(x,y,obj_building).strength -= 1;
		}
		else
		{
			state = chicken_moving;
		}
		
		
		
	break;
	
	case chicken_drinking:
		
		// Animate
		sprite_index = spr_enemy_cow_drinking;
		
		// Action
		water += 1;
		
		// Break
		if (water >= 80) {
			
			global.water -= 1;
			state = chicken_fleeing;
			
		};
		
	break;
	
	
	case chicken_fleeing:
		
		// Animate
		sprite_index = spr_enemy_cow;
		
		// Action
		motion_set(escape_dir, move_speed / 2);
		
		// Break
		if (
			x < -32 ||
			x > room_width + 32 ||
			y < -32 ||
			y > 304 // 272 + 32
		) {
			
			instance_destroy();
			global.water -= 1;
			
		};
		
		
	break;
};

// -- Animation --
if (hspeed >= 0) { image_xscale = 1 } else { image_xscale = -1 };

// Rotating
if (state != chicken_drinking) {
	
	if (rot_left) {
		
		image_angle -= 1;
		
		if (image_angle < -23) { rot_left = false};
		
	} else {
		
		image_angle += 1;
		
		if (image_angle > 23) { rot_left = true };
		
	};
	
};