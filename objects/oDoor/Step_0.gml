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

if (
	(_collision_right != noone and _collision_right._powered == true)
		or
	(_collision_left != noone and _collision_left._powered == true)
		or
	(_collision_down != noone and _collision_down._powered == true)
		or
	(_collision_up != noone and _collision_up._powered == true)
) { 
	_opened = true
}
else {
	_opened = false
}

if (_opened == true) {
	if (ceil(image_index) == 14) {
		image_speed = 0
	}
	else {
		image_speed = 1
	}
}
else if (_opened == false) {
	if (ceil(image_index) == 14) {
		image_speed = -1
	}
	else if (ceil(image_index) == 1){
		image_speed = 0
	}
}

