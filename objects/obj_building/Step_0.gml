if (growth < 0 || growth > sprite_base) {
	
	pos = ds_list_find_index(global.building_list, id);
	ds_list_replace(global.building_list, pos, undefined);
	instance_destroy();
	
};