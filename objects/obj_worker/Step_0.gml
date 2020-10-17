if (water < 1) 
{
	get_water = true;
	water_plants = false;
}

if (get_water == true)
{							
	if (distance_to_object(obj_water) < 16)
	{
		water += 1;
	}
	else
	{
		move_towards_point(obj_water.x, obj_water.y,2);
	}
	if (water > 99)
	{
		get_water = false;
	}
}
else
{
	water_plants = true;
}