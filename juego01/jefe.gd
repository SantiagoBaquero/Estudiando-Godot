class_name jefe
extends Node2D

@onready var animation_player= $AnimationPlayer
const ESCENA_BOMB = preload("res://bomb.tscn")	

func _process(delta):
	animation_player.play("Lanzar")
	

func launch_bomb():
	var instancia_bomb = ESCENA_BOMB.instantiate()
	instancia_bomb.global_position =$BarnacleAttackA/SnailShell.global_position
	add_child(instancia_bomb)
	
