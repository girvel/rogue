function generate_room(_pos, _dir) {
	_pos = vector_copy(_pos)
	_dir = vector_copy(_dir)
	
	// I. Generate parameters
	
	var hallway_length = irandom_range(9, 13)
	var room_r = irandom_range(2, 4)
	
	// II. Check whether it fits
	
	var empty = true;
	
	// ... checking here
	
	// III. Create the room
	
	//   I. Hallway
	repeat (hallway_length) {
		set_tile(global.tilemap, 1, _pos)
		
		_pos = vector_add(_pos, _dir)
	}
	
	//   II. Room itself
	var delta = new vector(0, 0)
	for (delta.x = -room_r; delta.x <= room_r; delta.x++)
	for (delta.y = -room_r; delta.y <= room_r; delta.y++) {
		set_tile(global.tilemap, 1, vector_add(_pos, delta))
	}
	
	// IV. Return new entrypoints
	
	var entrypoints = ds_list_create()
	
	// TODO entrypoint_by_projection(from, direction, radius)
	ds_list_add(entrypoints, entry_by_projection(_pos, _dir, room_r))
	ds_list_add(entrypoints, entry_by_projection(_pos, vector_rotate(_dir),     room_r))
	ds_list_add(entrypoints, entry_by_projection(_pos, vector_rotate(_dir, -1), room_r))
	
	return entrypoints
}