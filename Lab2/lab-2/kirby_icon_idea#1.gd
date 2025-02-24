extends Node2D

@export var speed: int = 200  

func _process(delta):
	var direction = Vector2.ZERO

	# User Input
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	elif Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	elif Input.is_action_pressed("ui_up"):
		direction.y -= 1

	# Conditional Logic
	if direction != Vector2.ZERO:
		print("Moving!")

	# Move the node
	position += direction * speed * delta
