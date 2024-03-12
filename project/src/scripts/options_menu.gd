extends CanvasLayer
var ParentNode

#func _on_ready():
	#ParentNode = get_parent().scene_file_path
	#print(ParentNode)

func _on_options_cancel_pressed():
	return_to_previous_menu()


func _on_options_default_pressed():
	pass # Replace with function body.


func _on_options_accept_pressed():
	return_to_previous_menu()

func return_to_previous_menu():
	if get_parent().name == 'root':
		get_tree().root.add_child(load("res://src/scenes/main_menu.tscn").instantiate())
	queue_free()
