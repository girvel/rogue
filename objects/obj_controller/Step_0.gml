with (controls) {
	if keyboard_check_pressed(ord("W")) move(0, -1)
	if keyboard_check_pressed(ord("A")) move(-1, 0)
	if keyboard_check_pressed(ord("S")) move(0, 1)
	if keyboard_check_pressed(ord("D")) move(1, 0)
}