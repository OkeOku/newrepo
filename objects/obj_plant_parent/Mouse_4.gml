if (global.seeds > (cost-1) && global.build_mode == false)
{
	global.build_mode = true;
	global.seeds -= cost;
	global.last_payment = cost;
}