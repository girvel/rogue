global.grid_size = 64

global.level_w = 100
global.level_h = 100

global.space = ds_grid_create(global.level_w, global.level_h)
ds_grid_clear(global.space, noone)

global.floor = ds_grid_create(global.level_w, global.level_h)
ds_grid_clear(global.floor, 0)

global.tilemap = layer_tilemap_create(
	layer_create(1, "Tile"), 
	0, 
	0, 
	tileset_default, 
	global.level_w, 
	global.level_h
)

room_height = global.level_h * global.grid_size
room_width  = global.level_w * global.grid_size

generate_room(global.level_h / 2, global.level_w / 2, 0, 1)

// TODO instantiate_space()
with instance_create_layer(0, 0, "Instances", obj_main_character) {
	set_position(global.level_h / 2, global.level_w / 2)
}