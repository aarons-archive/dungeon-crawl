event_inherited();

if (global.box_debug) {
	draw_rectangle(
		bbox_right, 
		bbox_top + global.box_collision_check_inset,
		bbox_right + global.box_collision_check_distance, 
		bbox_bottom - global.box_collision_check_inset, 
		false
	)
	draw_rectangle(
		bbox_left - global.box_collision_check_distance, 
		bbox_top + global.box_collision_check_inset,
		bbox_left, 
		bbox_bottom - global.box_collision_check_inset,
		false
	)
	draw_rectangle(
		bbox_left + global.box_collision_check_inset, 
		bbox_bottom,
		bbox_right - global.box_collision_check_inset, 
		bbox_bottom + global.box_collision_check_distance,
		false
	)
	draw_rectangle(
		bbox_left + global.box_collision_check_inset, 
		bbox_top - global.box_collision_check_distance,
		bbox_right - global.box_collision_check_inset, 
		bbox_top,
		false
	)
}

