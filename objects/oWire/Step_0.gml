
if (_powered == true) {
	
	image_index = 1
	
	if (_powered_by._pressed == false) {
		_powered = false
		_powered_by = noone
	}
	else { 
		
		var _collision_right = collision_rectangle(
			bbox_right, bbox_top + 0,
			bbox_right + 1, bbox_bottom - 0, 
			oWire, true, false
		)
		var _collision_left = collision_rectangle(
			bbox_left - 2, bbox_top + 0,
			bbox_left - 1, bbox_bottom - 0,
			oWire, true, false
		)
		var _collision_down = collision_rectangle(
			bbox_left + 0, bbox_bottom,
			bbox_right - 0, bbox_bottom + 1,
			oWire, true, false
		)
		var _collision_up = collision_rectangle(
			bbox_left + 0, bbox_top - 2,
			bbox_right - 0, bbox_top - 1,
			oWire, true, false
		)

		if (_collision_right != noone) { 
			_collision_right._powered = true
			_collision_right._powered_by = _powered_by
		}
		if (_collision_left != noone) { 
			_collision_left._powered = true
			_collision_left._powered_by = _powered_by
		}
		if (_collision_down != noone) {
			_collision_down._powered = true
			_collision_down._powered_by = _powered_by
		}
		if (_collision_up != noone) { 
			_collision_up._powered = true
			_collision_up._powered_by = _powered_by
		}
		
	}
} 
else if (_powered == false) { 
	image_index = 0 
}

