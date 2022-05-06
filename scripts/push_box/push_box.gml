function push_box() {

	var _collision_right = collision_rectangle(
		bbox_right, bbox_top + 3,
		bbox_right + 1, bbox_bottom - 3,  
		oMovableBox, true, false
	)
	var _collision_left = collision_rectangle(
		bbox_left, bbox_top + 3,
		bbox_left - 1, bbox_bottom - 3,
		oMovableBox, true, false
	)
	var _collision_down = collision_rectangle(
		bbox_left + 3, bbox_bottom,
		bbox_right - 3, bbox_bottom + 1,
		oMovableBox, true, false
	)
	var _collision_up = collision_rectangle(
		bbox_left + 3, bbox_top - 1,
		bbox_right - 3, bbox_top,
		oMovableBox, true, false
	)

	if (_collision_right != noone) { _collision_right._x_move += 1 }
	else if (_collision_left != noone) { _collision_left._x_move -= 1 }
	else if (_collision_down != noone) { _collision_down._y_move += 1 }
	else if (_collision_up != noone) { _collision_up._y_move -= 1 }
	
}