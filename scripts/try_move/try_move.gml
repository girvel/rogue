function try_move(_delta) {
	var _pos = vector_add(_delta, pos)
	
	if (
		not in_grid(_pos, global.space)
		or ds_grid_vector_get(global.space, _pos) != noone
		or ds_grid_vector_get(global.floor, _pos) == 0
	) {
		return false
	}
	
	return set_position(_pos)
}