extends CharacterBody2D


const velocidad = 100.0
@onready var player = $"."
@onready var animation = $AnimatedSprite2D

func _physics_process(_delta):
	
	if Input.is_action_pressed("ARRIBA"):
		animation.play("Arriba")
		player.position.y -= velocidad * _delta
	elif Input.is_action_pressed("IZQUIERDA"):
		animation.play("Izquierda")
		player.position.x -= velocidad * _delta
	elif Input.is_action_pressed("DERECHA"):
		animation.play("Derecha")
		player.position.x += velocidad * _delta
	elif Input.is_action_pressed("ABAJO"):
		animation.play("Abajo")
		player.position.y += velocidad * _delta
	else:
		animation.stop()
	move_and_slide()
