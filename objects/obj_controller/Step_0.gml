with (controls) {
	if keyboard_check_pressed(ord("W")) try_move(vector_up())
	if keyboard_check_pressed(ord("A")) try_move(vector_left())
	if keyboard_check_pressed(ord("S")) try_move(vector_down())
	if keyboard_check_pressed(ord("D")) try_move(vector_right())
} 