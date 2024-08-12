extends Node2D

@export var movement =200

func _process(delta):
	position.y += movement * delta

#bullet comes in contact and disappears
func _on_area_entered(other):
	if other.is_in_group("player"):
		self.queue_free()





