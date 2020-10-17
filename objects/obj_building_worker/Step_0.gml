event_inherited();


if (growth = sprite_get_number(sprite_base)-1)
{
	pos = ds_list_find_index(global.building_list, id);
	ds_list_replace(global.building_list, pos, undefined);
	instance_create_depth(x,y,depth,obj_worker);
	instance_destroy();
}
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