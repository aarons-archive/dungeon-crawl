switch(_state) {
	
	default:
	
		// get movement inputs and do movement
		var _horizontal_input = keyboard_check(global.keyboard_right_key) - keyboard_check(global.keyboard_left_key)
		var _vertical_input = keyboard_check(global.keyboard_down_key) - keyboard_check(global.keyboard_up_key)
		movement(_horizontal_input, _vertical_input)
		
		if (mouse_check_button(global.keyboard_box_move_key)) {
			push_box()
		}
		
		break;
}

if (keyboard_check_pressed(ord("R"))) {
	restart_game()
}
