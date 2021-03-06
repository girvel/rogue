// @function set_position

function set_position(_pos) {
	if variable_instance_exists(id, "pos") {
		ds_grid_vector_set(global.space, pos, noone)
	}
	
	pos = vector_copy(_pos)
	
	x = pos.x * global.cell_size
	y = pos.y * global.cell_size
	
	ds_grid_vector_set(global.space, pos, id)
}