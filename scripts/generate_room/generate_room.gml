function generate_room(_pos, _dir) {
	_pos = vector_copy(_pos)
	_dir = vector_copy(_dir)
	
	// I. Generate parameters
	
	var hallway_length = irandom_range(9, 13)
	var room_radius = irandom_range(2, 4)
	
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
	for (delta.x = -room_radius; delta.x <= room_radius; delta.x++)
	for (delta.y = -room_radius; delta.y <= room_radius; delta.y++) {
		set_tile(global.tilemap, 1, vector_add(_pos, delta))
	}
	
	// IV. Return new entrypoints
	
	var entrypoints = ds_list_create()
	
	// TODO entrypoint_by_projection(from, direction, radius)
	ds_list_add(entrypoints, {
		pos: vector_add(_pos, vector_multiply(_dir, room_radius)),
		dir: _dir
	})
	
	return entrypoints
}