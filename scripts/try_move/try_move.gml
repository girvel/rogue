function try_move(_dx, _dy) {
	var _pos = vector_add(new vector(_dx, _dy), pos)
	
	if (not in_grid(_pos, global.space)
		or global.space[# _pos.x, _pos.y] != noone
		or global.floor[# _pos.x, _pos.y] == 0
	) {
		return false
	}
	
	return set_position(_pos)
}