enum MainMenuPages {
	main,
	settings
}
enum MenuElement {
	run_script,
	change_page,
	slider,
	shift,
	toggle,
	input
}

_menu = create_menu(
	[
		["PLAY",		MenuElement.run_script,		start_game				],
		["SETTINGS",	MenuElement.change_page,	MainMenuPages.settings	],
		["EXIT",		MenuElement.run_script,		exit_game				],
	]
)
_settings_menu = create_menu(
	[
		["DIFFICULTY",	MenuElement.shift,			change_difficulty,		global.difficulty,	["EASY", "MEDIUM", "HARD"]	],
		["BACK",		MenuElement.change_page,	MainMenuPages.main,		undefined,			undefined					],
	]
)

menu_pages = [
	_menu,
	_settings_menu
]
menu_page = 0
menu_inputting = false

for (var i = 0; i < array_length(menu_pages); i++) {
	menu_selected_elements[i] = 0
}
