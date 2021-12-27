// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_tile(_tilemap, _index, _x, _y) {
	tilemap_set(_tilemap, _index, _x, _y) 
	show_debug_message(string(_x) + "; " + string(_y) + " = " + string(_index))
	global.floor[# _x, _y] = _index
}