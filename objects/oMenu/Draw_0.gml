
// Set font and alignments
draw_set_font(fMenu)
draw_set_halign(fa_left)
draw_set_valign(fa_top)


// Get current menu page
var _menu = menu_pages[menu_page]
var _menu_height = ds_grid_height(_menu)


// Calculate positions
var _menu_start_x = 30

var _option_offset_y = 40
var _option_start_x = _menu_start_x * 2
var _option_start_y = (room_height / 2) - ((_menu_height * _option_offset_y) / 2) + 30

var _shift_option_offset = 150


// Draw elements
for (var i = 0; i < _menu_height; i++) {
	
	// Option name
	if (menu_selected_elements[menu_page] == i) { draw_set_color(c_yellow) } else { draw_set_color(c_white) }
	draw_text(
		_option_start_x, 
		_option_start_y + (i * _option_offset_y), 
		_menu[# 0, i], 
	)
	
	// Option type
	switch (_menu[# 1, i]) {

		// Shift element
		case MenuElement.shift:
			
			// Set colour depending on current operation
			if (menu_selected_elements[menu_page] == i) { 
				if (menu_inputting) { 
					var colour = c_lime 
				} else { 
					var colour = c_white 
				} 
			} else { 
				var colour = c_ltgray 
			}
			
			var current_value = _menu[# 3, i]
			
			// Set correct marker for position in shift element
			if (current_value != 0) { var left_shift = "<<" } else { var left_shift = "" } 
			if (current_value != array_length(_menu[# 4, i]) - 1) { var right_shift = ">>" } else { var right_shift = "" }
			
			// Draw shift element
			draw_text_color(
				_option_start_x + _shift_option_offset
				, 
				_option_start_y + (i * _option_offset_y), 
				left_shift + _menu[# 4, i][current_value] + right_shift,
				colour, colour, colour, colour, 
				1
			)
			break
	}
}
