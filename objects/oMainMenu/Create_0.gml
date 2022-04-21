enum MainMenuPages {
	main,
	settings
}

ds_main_menu = create_menu(
	[
		["PLAY",		MenuElement.run_script,		start_game				],
		["SETTINGS",	MenuElement.change_page,	MainMenuPages.settings	],
		["EXIT",		MenuElement.run_script,		exit_game				],
	]
)
ds_main_menu_settings = create_menu(
	[
		["DIFFICULTY",	MenuElement.shift,			change_difficulty,		global.difficulty,		["EASY", "MEDIUM", "HARD"]	],
		["BACK",		MenuElement.change_page,	MainMenuPages.main,		undefined,				undefined					],
	]
)

main_menu_pages = [
	ds_main_menu,
	ds_main_menu_settings,
]
main_menu_page = 0
main_menu_inputting = false

for (var i = 0; i < array_length(main_menu_pages); i++) {
	main_menu_selected_elements[i] = 0
}
