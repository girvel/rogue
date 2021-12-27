function generate_dungeon(_x, _y, _rooms_n) {
	if not _rooms_n return;
	
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
		
		
		
		if dir_x {
			
		} else {
			
		}
		
		break
	}
	
	repeat (irandom_range(5, 12)) {
		set_tile(global.tilemap, 1, _x, _y)
		
		_x += dir_x;
		_y += dir_y;
	}
	
	generate_dungeon(_x, _y, _rooms_n - 1)
}