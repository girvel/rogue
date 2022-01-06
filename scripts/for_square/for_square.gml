function for_square(_from, _to, _f) {
	return for_rect(vector_multiply(vector_one(), _from), vector_multiply(vector_one(), _to), _f)
}