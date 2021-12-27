function generate_dungeon(_x, _y, _rooms_n) {
	if not _rooms_n return;
	
	var hallway_length = irandom_range(5, 12)
	var room_size = irandom_range(5, 7)
	
	// TODO this is unstable
	// TODO redesign whole algorithm
	while (true) {
		var dir_x, dir_y
		switch (irandom(3)) {
			case 0:
				dir_x = 0; dir_y = 1
				break
			
			case 1:
				dir_x = 0; dir_y = -1
				break
			
			case 2:
				dir_x = 1; dir_y = 0
				break
			
			case 3:
				dir_x = -1; dir_y = 0
				break
		}
		
		var new_x = _x
		var new_y = _y
		
		while (in_grid(new_x, new_y, global.floor) and global.floor[# new_x, new_y]) {
			new_x += dir_x
			new_y += dir_y
		}
		
		var l = hallway_length + room_size * 2 - 1
		if in_grid(new_x + dir_x * l, new_y + dir_y * l, global.floor) {
			_x = new_x
			_y = new_y
			break
		}
	}
	
	show_debug_message("Starting at" + string(_x) + "; " + string(_y))
	repeat (hallway_length) {
		set_tile(global.tilemap, 1, _x, _y)
		
		_x += dir_x;
		_y += dir_y;
	}
	show_debug_message("Ending at" + string(_x) + "; " + string(_y))
	
	generate_dungeon(_x, _y, _rooms_n - 1)
}