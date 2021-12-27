// @function set_position

function set_position(_x, _y) {
	if (not in_grid(_x, _y, global.space)
		or global.space[# _x, _y] != noone
		or global.floor[# _x, _y] == 0
	) {
		return false
	}
	
	if variable_instance_exists(id, "grid_x") and variable_instance_exists(id, "grid_y") {
		global.space[# grid_x, grid_y] = noone
	}
	
	grid_x = _x
	grid_y = _y
	
	x = _x * global.grid_size
	y = _y * global.grid_size
	
	global.space[# grid_x, grid_y] = id
	
	return true
}