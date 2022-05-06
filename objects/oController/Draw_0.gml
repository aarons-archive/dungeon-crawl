event_inherited();

if (global.box_debug) {
	draw_set_alpha(0.5)
	draw_set_color(c_red)
	draw_rectangle(
		bbox_right, bbox_top + 0,
		bbox_right + 1, bbox_bottom - 0,  
		false
	)
	draw_rectangle(
		bbox_left, bbox_top + 0,
		bbox_left - 1, bbox_bottom - 0,
		false
	)
	draw_rectangle(
		bbox_left + 0, bbox_bottom,
		bbox_right - 0, bbox_bottom + 1,
		false
	)
	draw_rectangle(
		bbox_left + 0, bbox_top - 1,
		bbox_right - 0, bbox_top,
		false
	)
	draw_set_alpha(1)
}

