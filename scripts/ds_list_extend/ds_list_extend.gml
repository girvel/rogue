function ds_list_extend(_list, _by) {
	for (var i = 0; i < ds_list_size(_by); i++) {
		ds_list_add(_list, _by[| i])	
	}
}
