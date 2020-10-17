// -- Selection -- 
if (mouse_check_button_released(mb_left) && mouse_y <= 272) {
	
	if (instance_exists(selected)) { selected.selected = false };
	
	selected = instance_position(mouse_x, mouse_y, obj_worker);
	
	with (selected) { selected = true };
	
};
