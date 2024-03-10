extends CanvasLayer

func _on_menu_play_pressed():
	pass
	# do some thing to start the game
	# possibly open a continue, start new, or level load

func _on_menu_options_pressed():
	var OPTIONS_MENU = load("res://src/options_menu.tscn").instantiate()
	get_tree().root.add_child(OPTIONS_MENU)
	queue_free()

func _on_menu_quit_pressed():
	get_tree().quit()
