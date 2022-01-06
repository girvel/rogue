function generate_room(_pos, _dir) {
	_pos = vector_copy(_pos)
	_dir = vector_copy(_dir)
	
	// I. Generate parameters
	
	var hallway_length = irandom_range(9, 13)
	var room_r = irandom_range(2, 4)
	
	// II. Check whether it fits
	
	/*{
		var size = vector_add(
			vector_multiply(_dir, hallway_length),
			vector_multiply(vector_one(), room_r * 2 + 3)
		)
		
		cj = {empty: true}
		for_rect(size, function(_d) {
			
		})
	}*/
	
	// III. Create the room
	
	//    -I. Hallway
	repeat (hallway_length) {
		set_tile(global.tilemap, 1, _pos)
		
		_pos = vector_add(_pos, _dir)
	}
	
	//    -II. Room itself
	cj = {
		_pos: _pos
	}
	
	for_square(-room_r, room_r, function(_delta) {
		set_tile(global.tilemap, 1, vector_add(cj._pos, _delta))
	})
	
	// IV. Return new entrypoints
	
	return ds_list_of(
		entry_by_projection(_pos, _dir, room_r),
		entry_by_projection(_pos, vector_rotate(_dir), room_r),
		entry_by_projection(_pos, vector_rotate(_dir, -1), room_r),
	)
}