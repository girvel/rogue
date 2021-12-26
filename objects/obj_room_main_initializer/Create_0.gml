global.space_grid_size = 64
global.space = ds_grid_create(100, 100)
ds_grid_clear(global.space, noone)

// TODO instantiate_space()
with instance_create_layer(0, 0, "Instances", obj_main_character) set_position(5, 5)

room.floor = ds_grid_create(100, 100)
ds_grid_clear(room.floor, noone)

var tilemap = layer_tilemap_get_id(layer_get_id("Background"))
tilemap_set_at_pixel(tilemap, tile_stone, 0, 0)

//room.floor[# 5, 5] = 