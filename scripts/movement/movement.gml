function movement(_horizontal_input, _vertical_input) {
	
	if (_horizontal_input != 0 || _vertical_input != 0) {
		var _direction = point_direction(0, 0, _horizontal_input, _vertical_input)
		_horizontal_speed = clamp(lengthdir_x(_acceleration, _direction), -_max_acceleration, _max_acceleration)
		_vertical_speed = clamp(lengthdir_y(_acceleration, _direction), -_max_acceleration, _max_acceleration)
	} 
	else {
		_horizontal_speed = 0
		_vertical_speed = 0
	}
	
	// check for collisions
	if (place_meeting(x + _horizontal_speed, y, oSolid)) {
		while (not place_meeting(x + sign(_horizontal_speed), y, oSolid)) {
			x += sign(_horizontal_speed)
		}
		_horizontal_speed = 0
	}
	if (place_meeting(x, y + _vertical_speed, oSolid)) {
		while (not place_meeting(x, y + sign(_vertical_speed), oSolid)) {
			y += sign(_vertical_speed)
		}
		_vertical_speed = 0
	}
	
	// actually move player
	x += _horizontal_speed
	y += _vertical_speed
}
