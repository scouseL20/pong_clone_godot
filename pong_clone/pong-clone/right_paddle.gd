extends CharacterBody2D

@export var speed := 200.0

func _physics_process(_delta):
	var direction = Input.get_axis("right_paddle_up", "right_paddle_down")

	velocity.y = direction * speed
	move_and_slide()
