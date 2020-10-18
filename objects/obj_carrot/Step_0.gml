// -- Horizontal Animation -- 
if (hspeed > 0) { image_xscale = 1 };
if (hspeed < 0) { image_xscale = -1 };

if (hp <= 0 )
{
	speed = 0;
	sprite_index = sprite_death;
}

// -- Ai state machine -- 
switch (state) {
	
	
	case state_idle:
		
		// Animation
	
			sprite_index = spr_carrot_stand;

		// Break	
		if (instance_exists(obj_enemies))
		{
			if (distance_to_object(obj_enemies) < 200)
			{
				state = state_gotoEnemies;
				break;
			}
		};

		
	break;
	
	
	
	case state_gotoEnemies:
		
		// Animation
		sprite_index = spr_carrot_walk;

		// Action
		if (instance_exists(obj_enemies))
		{
		motion_set(point_direction(x, y, instance_nearest(x,y,obj_enemies).x, instance_nearest(x,y,obj_enemies).y), move_speed);
		
		
		// Break
		if (distance_to_object(obj_enemies) < 8) {
			
			speed = 0;
			state = state_attackEnemy;
		}
		}
		else
		{
			speed = 0;
			state = state_idle;
			break;
		}
		
		if (distance_to_point(room_width/2, room_height/2) > 200)
		{
			state = state_return;
			break;
		}
		
	break;
	
	case state_return:
		
		// Animation
		sprite_index = spr_carrot_walk;

		// Action
		motion_set(point_direction(x, y, room_width / 2, room_height / 2), move_speed);
		
		
		// Break
		if (distance_to_point(room_width / 2, room_height /2) < 32) {
			
			speed = 0;
			state = state_idle;
			break;
		}
	break;	
	
	case state_attackEnemy:
		
		// Animation
		sprite_index = spr_carrot_stand;
		
		// Action
		if (instance_exists(obj_enemies))
		{
			if (distance_to_object(obj_enemies) < 8)
			{
				with instance_nearest(x,y,obj_enemies)
				{
					hp -= other.my_attack;
					other.hp -= (my_attack/2);
				}
			}
			else
			{
				state = state_gotoEnemies;
			}
		}
		else
		{
			state = state_idle;
		}
		
	break;
	
	
	case state_gotoPlants:
		
		// Animation
		sprite_index = spr_worker_walkWithWater_1;
		
		// Action
		if (instance_exists(target)) {
		
			motion_set(point_direction(x, y, target.x, target.y), move_speed);
			
		};
		
		// Break
		if (instance_exists(target)) {
			if (!is_undefined(target.x)) {
				if (distance_to_point(target.x + 8, target.y + 8) < 8) {
			
					state = state_waterPlants;
					speed = 0;
			
				};
			};
		};
		
	break;
	
	case state_waterPlants:
		
		// Animation
		sprite_index = spr_worker_getWater_1;
		
		// Action
		water -= 1;
		
		// Break
		if (water = 0) {
			
			state = state_idle;
			
			if (instance_exists(target)) {
			
				if (!is_undefined(target.growth)) {
				if (target.growth < sprite_get_number(target.sprite_base) - 1) { target.growth += 1 };
			
					target = -1;
				
				};
			
			};
		};
		
	break;
};