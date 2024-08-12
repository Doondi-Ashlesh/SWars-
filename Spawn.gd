extends Node2D

@export var Enemy_tscn: PackedScene


#spawn new enemies every 1.5 seconds
func _on_timer_timeout():
	
	#if is_instance_valid(player):
		var enemy=Enemy_tscn.instantiate()
		self.add_child(enemy)
		enemy.position.y-=25
	
		var vp=get_viewport().size
	
		var randx = randf_range(50,vp.x-50)
		enemy.position.x= randx
		
	#var randy =randf_range(0,(vp.y)/2)
	#enemy.position.y=randy
		print("ships spawned!!")
	#else:
		#pass
	

	
