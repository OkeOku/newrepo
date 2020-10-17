// Int
timer = -1;
stage = 0;

sg = ds_grid_create(4, 10);

/*
	timer
	seeds
	chickens
	cows
*/ 

// Setup stage
sg[# 1, 1] = 1200;
sg[# 1, 2] = 0;
sg[# 1, 3] = 0;
sg[# 1, 4] = 0;

// Stage 1
sg[# 2, 1] = 1200;
sg[# 2, 2] = 5;
sg[# 2, 3] = 3;
sg[# 2, 4] = 0;

// Stage ii
sg[# 3, 1] = 900;
sg[# 3, 2] = 5;
sg[# 3, 3] = 8;
sg[# 3, 4] = 0;