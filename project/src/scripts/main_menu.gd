extends CanvasLayer
const GAME = preload("res://src/scenes/game.tscn")

func _on_menu_play_pressed():
	get_tree().change_scene_to_packed(GAME)
	queue_free()

func _on_menu_options_pressed():
	var OPTIONS_MENU = load("res://src/scenes/options_menu.tscn").instantiate()
	get_tree().root.add_child(OPTIONS_MENU)
	queue_free()

func _on_menu_quit_pressed():
	get_tree().quit()
