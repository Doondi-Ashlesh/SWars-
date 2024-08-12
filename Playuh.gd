extends Area2D

@export var bullet_tscn: PackedScene 


func _process(delta):
	var ship_m=get_global_mouse_position()
	position.x = ship_m.x
	
	#FireBullet only if the player presses the key
	if Input.is_action_just_pressed("fireBullet"):
		print("Bullet Fired !!!\n")
		var bull = bullet_tscn.instantiate()
		add_sibling(bull)
		bull.position =self.position 
		bull.position.y -=45
		 

func _on_area_entered(area):
	if area.is_in_group("enemy"):
		self.queue_free() 
		State.gameover = true
