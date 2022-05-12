if (instance_exists(follow)) {
	xTo = follow.x
	yTo = follow.y
}

x += (xTo - x) / 2
y += (yTo - y) / 2

x = clamp(x, view_w_half, room_width - view_w_half)
y = clamp(y, view_h_half, room_height - view_h_half)

camera_set_view_pos(camera, x - view_w_half, y - view_h_half)

if keyboard_check_pressed(vk_enter) {
	if (follow == oKeyboard) { 
		follow = oController
	}
	else {
		follow = oKeyboard
	}
}

