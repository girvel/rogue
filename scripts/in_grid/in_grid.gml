// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function in_grid(_x, _y, _grid) {
	return _x >= 0 and _y >= 0 and _x < ds_grid_width(_grid) and _y < ds_grid_height(_grid)
}