if (other.id > id) {
	var dir = point_direction(other.x, other.y, x, y);
	
	x = x + lengthdir_x(1, dir);
	y = y + lengthdir_y(1, dir);
};