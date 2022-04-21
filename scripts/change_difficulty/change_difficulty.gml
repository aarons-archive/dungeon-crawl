function change_difficulty(difficulty) {
	switch (difficulty) {
		case "EASY":
			global.difficulty = GameDifficulty.easy
			break
		case "MEDIUM":
			global.difficulty = GameDifficulty.medium
			break
		case "HARD":
			global.difficulty = GameDifficulty.hard
			break
	}
}