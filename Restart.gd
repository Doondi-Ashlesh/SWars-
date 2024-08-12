extends Label


func _process(delta):
	if State.gameover:
		self.visible= true
		
