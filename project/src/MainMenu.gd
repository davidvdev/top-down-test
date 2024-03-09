extends CanvasLayer

var OPTIONS_MENU = preload("res://src/options_menu.tscn").instantiate()
var MAIN = preload("res://src/main.tscn")

func _on_menu_play_pressed():
	pass
	# do some thing to start the game
	# possibly open a continue, start new, or level load

func _on_menu_options_pressed():
	get_tree().root.add_child(OPTIONS_MENU)
	queue_free()

func _on_menu_quit_pressed():
	get_tree().quit()
