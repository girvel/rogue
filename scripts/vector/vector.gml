// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vector(_x, _y) constructor {
	x = _x
	y = _y
	
	static toString = function() {
		return "{" + string(x) + "; " + string(y) + "}"	
	}
}