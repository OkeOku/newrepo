// -- Int --
depth						= -10;
building_selection			= -1;

global.seeds			= 1;
global.building_list	= ds_list_create();


// -- Macros --
#macro building_null		-1
#macro building_basic		0

#macro state_idle			0
#macro state_gotoWater		1
#macro state_fillWater		2
#macro state_gotoPlants		3
#macro state_waterPlants	4