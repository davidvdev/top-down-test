extends CanvasLayer

func _on_ready():
	hide()

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		if get_tree().paused == false:
			get_tree().paused = true
			show()
		elif get_tree().paused == true:
			continue_game()

func _on_pause_continue_pressed():
	continue_game()

func _on_pause_options_pressed():
	var OPTIONS_MENU = load("res://src/scenes/options_menu.tscn").instantiate()
	$".".add_child(OPTIONS_MENU)
	hide()

func _on_pause_quit_pressed():
	return_to_main_menu()

func return_to_main_menu():
	var MAIN = load("res://src/scenes/main.tscn")
	get_tree().paused = false
	get_tree().change_scene_to_packed(MAIN)
	queue_free()

func continue_game():
	get_tree().paused = false
	hide()


func _on_child_exiting_tree(node):
	if node.name == 'OptionsMenu':
		show()
