function modulus(_a, _b) {
	if _a >= 0 { 
		return _a % _b 
	}
	
	return _b + (_a % _b)
}