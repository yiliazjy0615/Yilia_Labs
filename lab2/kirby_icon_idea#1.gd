extends Node2D

# "int" is a type hint, meaning the variable it’s assigned to will hold integer values (whole numbers)
@export var speed: int = 200

func _process(delta):
	var direction = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	elif Input.is_action_pressed("ui_left"):
		direction.x -= 1

	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	elif Input.is_action_pressed("ui_up"):
		direction.y -= 1

	if direction != Vector2.ZERO:
		print("Moving")

#  Time elapsed since the last frame was processed
	position += direction * speed * delta 
