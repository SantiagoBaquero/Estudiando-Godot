class_name jefe
extends Node2D


@onready var animation_player: AnimationPlayer = $AnimationPlayer

const ESCENA_SAW = preload("res://bomb.tscn")

func _process(delta):
	animation_player.play("lanzar")
	
	
func launch_saw():
	var instancia_saw = ESCENA_SAW.instantiate()
	instancia_saw.position =$Bomb4.position
	add_child(instancia_saw)
