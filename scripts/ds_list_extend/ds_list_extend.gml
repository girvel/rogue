function ds_list_extend(_destination, _source){
	for (var i = 0; i < ds_list_size(_source); ds_list_add(_destination, _source[| i++])) {}
}