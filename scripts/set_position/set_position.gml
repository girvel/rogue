// @function set_position

function set_position(_x, _y) {
	if room.grid[# _x, _y] != noone {
		return false	
	}
	
	if variable_instance_exists(id, "grid_x") and variable_instance_exists(id, "grid_y") {
		room.grid[# grid_x, grid_y] = noone
	}
	
	grid_x = _x
	grid_y = _y
	
	x = _x * room.grid_size
	y = _y * room.grid_size
	
	room.grid[# grid_x, grid_y] = id
	
	return true
}