class_name jefe
extends Node2D

@onready var animation_player= $AnimationPlayer

const ESCENA_SAW = preload("res://bomb.tscn")

	
func launch_saw():
	var instancia_saw = ESCENA_SAW.instantiate()
	instancia_saw.position =$BarnacleAttackA/SnailShell/Bomb4.position
	add_child(instancia_saw)
	animation_player.play("Reposo")

func _on_timer_timeout():
	animation_player.play("Lanzar")
	$Timer.wait_time = randf_range(2,5)
