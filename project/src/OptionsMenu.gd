extends CanvasLayer

func _on_options_cancel_pressed():
	return_to_main_menu()


func _on_options_default_pressed():
	pass # Replace with function body.


func _on_options_accept_pressed():
	return_to_main_menu()

func return_to_main_menu():
	var MAIN_MENU = load("res://src/main_menu.tscn").instantiate()
	get_tree().root.add_child(MAIN_MENU)
	queue_free()
