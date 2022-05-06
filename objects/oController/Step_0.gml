switch(_state) {
	
	default:
	
		detect_gamepad()
	
		// get movement inputs and do movement
		var _horizontal_input = sign(gamepad_axis_value(_gamepad_slot, global.controller_horizontal))
		var _vertical_input = sign(gamepad_axis_value(_gamepad_slot, global.controller_vertical))
		movement(_horizontal_input, _vertical_input)
		
		if (gamepad_button_check(_gamepad_slot, global.controller_box_move_button)) {
			push_box()
		}
		
		break;
}
