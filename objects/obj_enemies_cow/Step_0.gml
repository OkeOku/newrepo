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
		
	break;
	
	
	case chicken_drinking:
		
		// Animate
		sprite_index = spr_enemy_cow_drinking;
		
		// Action
		water += 1;
		
		// Break
		if (water >= 80) {
			
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

if (state != chicken_drinking) {
	
	if (rot_left) {
		
		sign(angle_difference(image_angle, ));
		
	};
	
};