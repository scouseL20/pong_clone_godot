extends CharacterBody2D

var speed = 400

func _ready() -> void:
	velocity = Vector2(1, randf_range(-0.5, 0.5)).normalized() * speed

func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
