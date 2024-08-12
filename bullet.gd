extends Node2D

@export var movement =300

func _process(delta):
	position.y -= movement * delta

#bullet comes in contact and disappears
func _on_area_entered(some):
	if some.is_in_group("enemy"):
		self.queue_free()
