function entry_by_projection(_from, _dir, _r) {
	return {
		pos: vector_add(_from, vector_multiply(_dir, _r)),
		dir: _dir
	}
}