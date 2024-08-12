extends Label


func _process(delta):
	if State.gameover :
		self.visible = true
	
	if Input.is_action_just_pressed("ui_accept"):
		#Reload the scene
		get_tree().reload_current_scene()   
		State.reset()
