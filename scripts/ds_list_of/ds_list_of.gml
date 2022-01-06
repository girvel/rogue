function ds_list_of() {
	var _list = ds_list_create()
	
	for (var i = 0; i < argument_count; i++) {
		ds_list_add(_list, argument[i])
	}
	
	return _list;
}