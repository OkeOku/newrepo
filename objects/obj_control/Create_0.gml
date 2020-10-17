// -- Int --
depth						= -10;
building_selection			= -1;

global.build_mode = true;

global.water			= 10
global.seeds			= 20;
global.building_list	= ds_list_create();


// -- Macros --
#macro building_null		-1
#macro building_basic		0

#macro state_idle			0
#macro state_gotoWater		1
#macro state_fillWater		2
#macro state_gotoPlants		3
#macro state_waterPlants	4

#macro chicken_moving		0
#macro chicken_drinking		1
#macro chicken_fleeing		2