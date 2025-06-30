class_name jefe
extends Node2D

@onready var animation_player= $AnimationPlayer

const ESCENA_BOMB = preload("res://bomb.tscn")	

func launch_bomb():
	var instancia_bomb = ESCENA_BOMB.instantiate()
	instancia_bomb.position =$BarnacleAttackA/SnailShell.position
	add_child(instancia_bomb)
	animation_player.play("Reposo")

func _on_timer_timeout():
	animation_player.play("Lanzar")
	$Timer.wait_time = randf_range(2,5)
