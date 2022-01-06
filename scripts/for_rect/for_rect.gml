function for_rect(_from, _to, _f) {
	var delta = new vector(0, 0)
	for (delta.x = _from.x; delta.x <= _to.x; delta.x++)
	for (delta.y = _from.y; delta.y <= _to.y; delta.y++) {
		_f(delta)
	}
}