class_name saw
extends RigidBody2D

@export var  demasiado_abajo = 1000

func _process(delta):
	if  position.y >1000:
		queue_free()
