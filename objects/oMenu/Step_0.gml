
var menu = menu_pages[menu_page]
var menu_height = ds_grid_height(menu)


if (menu_inputting) {
	switch (menu[# 1, menu_selected_elements[menu_page]]) {
		
		case MenuElement.shift:
			var hinput = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
			if (hinput != 0) {
				menu[# 3, menu_selected_elements[menu_page]] += hinput;
				menu[# 3, menu_selected_elements[menu_page]] = clamp(menu[# 3, menu_selected_elements[menu_page]], 0, array_length(menu[# 4, menu_selected_elements[menu_page]]) - 1);
			}
			break;
	}
}
else {

	var change = (keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up))

	if (change != 0) {
		menu_selected_elements[menu_page] += change
		// If we went down past the last option, go up to the first option.
		if (menu_selected_elements[menu_page] > menu_height - 1) { menu_selected_elements[menu_page] = 0 }
		// If we went up past the first option, go down to the last option.
		if (menu_selected_elements[menu_page] < 0) { menu_selected_elements[menu_page] = menu_height - 1 }
	}
}


if (keyboard_check_pressed(vk_enter)) {
	
	switch (menu[# 1, menu_selected_elements[menu_page]]) {
		case MenuElement.run_script:
			script_execute(menu[# 2, menu_selected_elements[menu_page]])
			break
		case MenuElement.change_page:
			menu_page = menu[# 2, menu_selected_elements[menu_page]]
			break
		case MenuElement.shift:
		case MenuElement.slider:
		case MenuElement.toggle:
			if (menu_inputting) {
				script_execute(menu[# 2, menu_selected_elements[menu_page]], menu[# 3, menu_selected_elements[menu_page]]);
			}
		case MenuElement.input:
			menu_inputting = ! menu_inputting
	}
	
}
