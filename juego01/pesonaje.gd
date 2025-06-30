class_name personaje
extends CharacterBody2D

@export var gravity: float = 100
@export var jump_speed = 10
@export var speed = 100

func _physics_process(delta):	
	#Horizontal
	var direction =Input.get_axis("Izquierda","Derecha")
	velocity.x = speed * direction
	
	#Gravedad
	if not is_on_floor():
		velocity.y = velocity.y + gravity * delta
		#Saltar
	var jump_pressed = Input.is_action_just_pressed("Arriba")
	if jump_pressed:
		velocity.y = velocity.y-(jump_speed)
	
	move_and_slide()
