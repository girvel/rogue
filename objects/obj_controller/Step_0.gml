with (controls) {
	if keyboard_check_pressed(ord("W")) try_move(0, -1)
	if keyboard_check_pressed(ord("A")) try_move(-1, 0)
	if keyboard_check_pressed(ord("S")) try_move(0, 1)
	if keyboard_check_pressed(ord("D")) try_move(1, 0)
} 