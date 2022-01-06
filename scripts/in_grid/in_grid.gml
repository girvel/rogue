function in_grid(_pos, _grid) {
	return _pos.x >= 0 and _pos.y >= 0 and _pos.x < ds_grid_width(_grid) and _pos.y < ds_grid_height(_grid)
}