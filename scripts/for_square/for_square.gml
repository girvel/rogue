function for_square(_r, _f) {
	var delta = new vector(0, 0)
	for (delta.x = -_r; delta.x <= _r; delta.x++)
	for (delta.y = -_r; delta.y <= _r; delta.y++) {
		_f(delta)
	}
}