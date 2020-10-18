if (growth < 0 || growth > sprite_base) {
	
	ds_list_add(global.destroyed_list, id);
	instance_destroy();
	
};