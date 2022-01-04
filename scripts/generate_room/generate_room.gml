function generate_room(_x, _y, _dir_x, _dir_y) {
	// I. Generate parameters
	
	var hallway_length = irandom_range(9, 13)
	var room_radius = irandom_range(2, 4)
	
	// II. Check whether it fits
	
	var empty = true;
	
	// ... checking here
	
	// III. Create the room
	
	//   I. Hallway
	repeat (hallway_length) {
		set_tile(global.tilemap, 1, new vector(_x, _y))
		
		_x += _dir_x;
		_y += _dir_y;
	}
	
	//   II. Room itself
	for (var dx = -room_radius; dx <= room_radius; dx++)
	for (var dy = -room_radius; dy <= room_radius; dy++) {
		set_tile(global.tilemap, 1, new vector(_x + dx, _y + dy))
	}
	
	// IV. Return new entrypoints
	
	// ... returning here
}