function try_move(_dx, _dy) {
	var _x = grid_x + _dx
	var _y = grid_y + _dy
	
	if (not in_grid(new vector(_x, _y), global.space)
		or global.space[# _x, _y] != noone
		or global.floor[# _x, _y] == 0
	) {
		return false
	}
	
	return set_position(_x, _y)
}