room.grid_size = 64
room.grid = ds_grid_create(100, 100)

for (var x_ = 0; x_ < ds_grid_width(room.grid); x_++) {
	for (var y_ = 0; y_ < ds_grid_height(room.grid); y_++) {
		show_debug_message("iterated")
		room.grid[# x_, y_] = noone
	}
}