extends CharacterBody2D

@export var speed := 200.0

func _physics_process(_delta):
	var direction = Input.get_axis("left_paddle_up", "left_paddle_down")

	velocity.y = direction * speed
	move_and_slide()
