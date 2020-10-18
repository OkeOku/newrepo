event_inherited();


if (active == true && growth >= sprite_get_number(sprite_base) - 1)
{
	ds_list_add(global.destroyed_list, id);
	instance_create_depth(x,y,depth,obj_carrot);
	active = false;
	instance_destroy();
}

depth = y * -1;