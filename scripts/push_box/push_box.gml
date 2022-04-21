function push_box() {
	
	if (mouse_check_button(global.keyboard_fire_key)) {
	
		var collision_box_right = collision_rectangle(
			bbox_right, bbox_top,
			bbox_right + 10, bbox_bottom, 
			oMovableBox, true, false
		)
		var collision_box_left = collision_rectangle(
			bbox_left - 10, bbox_top,
			bbox_left, bbox_bottom,
			oMovableBox, true, false
		)
		var collision_box_down = collision_rectangle(
			bbox_left, bbox_bottom,
			bbox_right, bbox_bottom + 10,
			oMovableBox, true, false
		)
		var collision_box_up = collision_rectangle(
			bbox_left, bbox_top - 10,
			bbox_right, bbox_top,
			oMovableBox, true, false
		)

		if (collision_box_right != noone) { collision_box_right._x_move += 1 }
		else if (collision_box_left != noone) { collision_box_left._x_move -= 1 }
		else if (collision_box_down != noone) { collision_box_down._y_move += 1 }
		else if (collision_box_up != noone) { collision_box_up._y_move -= 1 }
	}
}