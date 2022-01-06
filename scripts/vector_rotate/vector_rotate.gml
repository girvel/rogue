function vector_rotate(_v, _n = 1) {
	var m = modulus(_n, 4)
	if m == 0 { 
		_v = vector_copy(_v)
	}
	else if m == 1 {
		_v = vector_copy(_v)
		
		var temp = _v.x
		_v.x = _v.y
		_v.y = -temp
	}
	else if m == 2 {
		_v = vector_multiply(_v, -1)
	}
	else {
		_v = vector_copy(_v)
		
		var temp = _v.x
		_v.x = -_v.y
		_v.y = temp
	}
	
	return _v
}