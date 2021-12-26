room.space_grid_size = 64
room.space = ds_grid_create(100, 100)

for (var x_ = 0; x_ < ds_grid_width(room.space); x_++) {
	for (var y_ = 0; y_ < ds_grid_height(room.space); y_++) {
		room.space[# x_, y_] = noone
	}
}