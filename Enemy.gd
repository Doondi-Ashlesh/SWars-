extends Node2D
@export var movement = 150
@export var EB: PackedScene

func _process(delta):
	position.y += movement *delta
	
	var eb= EB.instantiate()
	self.add_child(eb)
	eb.position =self.position 
	

#contact with bullet then enemy destryoed
func _on_area_entered(area):
	#print("bullet encountered") # Replace with function body.
	self.queue_free()
	State.score += 10
	#if area.is_in_group("player"):
		
	
