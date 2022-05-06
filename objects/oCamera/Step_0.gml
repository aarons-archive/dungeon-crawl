if (instance_exists(follow)) {
	xTo = follow.x
	yTo = follow.y
}

x += (xTo - x) / 4
y += (yTo - y) / 4

x = clamp(x, view_w_half, room_width - view_w_half)
y = clamp(y, view_h_half, room_height - view_h_half)

camera_set_view_pos(camera, x - view_w_half, y - view_h_half)
