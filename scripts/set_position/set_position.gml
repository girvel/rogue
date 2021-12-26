// @function set_position

function set_position(_x, _y) {
	if (
		_x < 0 
		or _y < 0 
		or _x >= ds_grid_width(global.space) 
		or _y >= ds_grid_height(global.space)
		or global.space[# _x, _y] != noone
	) {
		return false
	}
	
	if variable_instance_exists(id, "grid_x") and variable_instance_exists(id, "grid_y") {
		global.space[# grid_x, grid_y] = noone
	}
	
	grid_x = _x
	grid_y = _y
	
	x = _x * global.space_grid_size
	y = _y * global.space_grid_size
	
	global.space[# grid_x, grid_y] = id
	
	return true
}