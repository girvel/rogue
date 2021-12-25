global.grid_size = 64
global.grid = ds_grid_create(100, 100)

for (var x_ = 0; x_ < ds_grid_width(global.grid); x_++) {
	for (var y_ = 0; y_ < ds_grid_height(global.grid); y_++) {
		show_debug_message("iterated")
		global.grid[# x_, y_] = noone
	}
}