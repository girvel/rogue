function generate_dungeon(_size) {
	var entries = ds_list_of({pos: vector_multiply(global.grid_size, .5), dir: vector_right()})
	
	repeat (_size) {
		var random_i = irandom(ds_list_size(entries) - 1)
		var entry = entries[| random_i]
		ds_list_delete(entries, random_i)
		
		var new_entries = generate_room(entry.pos, entry.dir)
		ds_list_extend(entries, new_entries)
		ds_list_destroy(new_entries)
	}
	
	ds_list_destroy(entries)
}