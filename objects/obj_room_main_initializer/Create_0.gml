if debug_mode {
	randomize()
}

globalvar cj

global.cell_size = 64
global.grid_size = new vector(100, 100)

global.space = ds_grid_vector_create(global.grid_size)
ds_grid_clear(global.space, noone)

global.floor = ds_grid_vector_create(global.grid_size)
ds_grid_clear(global.floor, 0)

global.tilemap = layer_tilemap_create(
	layer_create(1, "Tile"), 
	0, 
	0, 
	tileset_default, 
	global.grid_size.x, 
	global.grid_size.y
)

room_height = global.grid_size.x * global.cell_size
room_width  = global.grid_size.y * global.cell_size

generate_dungeon(5)

// TODO instantiate_space()
// TODO instance_create_grid
with instance_create_layer(0, 0, "Instances", obj_main_character) {
	set_position(vector_multiply(global.grid_size, .5))
}
