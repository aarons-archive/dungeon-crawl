function detect_gamepad() {
	for (var i = 0; i < gamepad_get_device_count(); i++;) {
		if (gamepad_is_connected(i)) { 
			_gamepad_slot = i 
			gamepad_set_axis_deadzone(_gamepad_slot, _gamepad_analogue_deadzone)
			break
		}
	}
}
