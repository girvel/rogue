// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_tile(_tilemap, _index, _pos) {
	tilemap_set(_tilemap, _index, _pos.x, _pos.y) 
	ds_grid_vector_set(global.floor, _pos, _index)
}