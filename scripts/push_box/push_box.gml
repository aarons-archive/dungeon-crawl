function push_box() {
	
	if (mouse_check_button(global.keyboard_fire_key)) {
	
		var collision_box_right = collision_rectangle(
			bbox_right, 
			bbox_top + global.box_collision_check_inset,
			bbox_right + global.box_collision_check_distance, 
			bbox_bottom - global.box_collision_check_inset,  
			oMovableBox, true, false
		)
		var collision_box_left = collision_rectangle(
			bbox_left - global.box_collision_check_distance, 
			bbox_top + global.box_collision_check_inset,
			bbox_left, 
			bbox_bottom - global.box_collision_check_inset,
			oMovableBox, true, false
		)
		var collision_box_down = collision_rectangle(
			bbox_left + global.box_collision_check_inset, 
			bbox_bottom,
			bbox_right - global.box_collision_check_inset, 
			bbox_bottom + global.box_collision_check_distance,
			oMovableBox, true, false
		)
		var collision_box_up = collision_rectangle(
			bbox_left + global.box_collision_check_inset, 
			bbox_top - global.box_collision_check_distance,
			bbox_right - global.box_collision_check_inset, 
			bbox_top,
			oMovableBox, true, false
		)

		if (collision_box_right != noone) { collision_box_right._x_move += 1 }
		else if (collision_box_left != noone) { collision_box_left._x_move -= 1 }
		else if (collision_box_down != noone) { collision_box_down._y_move += 1 }
		else if (collision_box_up != noone) { collision_box_up._y_move -= 1 }
	}
}