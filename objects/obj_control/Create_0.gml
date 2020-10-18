// -- Int --
depth						= -10;
building_selection			= -1;

global.build_mode = false;
global.plant_what_now = obj_building_wall;

global.water			= 10
global.seeds			= 40;
global.seeds_buffer		= 0;
global.building_list	= ds_list_create();
global.destroyed_list	= ds_list_create();


// -- Macros --
#macro building_null		-1
#macro building_basic		0

#macro state_idle			0
#macro state_gotoWater		1
#macro state_fillWater		2
#macro state_gotoPlants		3
#macro state_waterPlants	4
#macro state_gotoEnemies	5
#macro state_attackEnemy	6

#macro chicken_moving		0
#macro chicken_drinking		1
#macro chicken_fleeing		2
#macro chicken_fighting		3
#macro chicken_chewing		4