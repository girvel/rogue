// @function set_position

function set_position(_x, _y) {
	if (_x < 0 
		or _y < 0 
		or _x >= global.level_w
		or _y >= global.level_h
		or global.space[# _x, _y] != noone
		or global.floor[# _x, _y] == 0
	) {
		show_debug_message(_x < 0)
		show_debug_message(_y < 0)
		show_debug_message(_x >= global.level_w)
		show_debug_message(_y >= global.level_h)
		show_debug_message(global.space[# _x, _y] != noone)
		show_debug_message(global.floor[# _x, _y] == 0)
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