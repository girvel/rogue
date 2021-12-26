global.space_grid_size = 64
global.space = ds_grid_create(100, 100)
ds_grid_clear(global.space, noone)

// TODO instantiate_space()
with instance_create_layer(0, 0, "Instances", obj_main_character) set_position(5, 5)

room.floor = ds_grid_create(100, 100)
ds_grid_clear(room.floor, noone)

var tilemap = layer_tilemap_create(
	layer_create(1, "Tile"), 
	0, 
	0, 
	tileset_default, 
	room_width / global.space_grid_size, 
	room_height / global.space_grid_size
)

tilemap_set(tilemap, 1, 0, 0)

//room.floor[# 5, 5] = 