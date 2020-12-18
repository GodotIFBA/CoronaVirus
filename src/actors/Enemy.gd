extends Actor

func _ready() -> void:
	_velocity.x = -speed.x
	$enemy.play("walk")

func _physics_process(delta: float) -> void:
	_velocity.y += gravity * delta
	
	if is_on_wall():
		_velocity.x *= -1.0
		$enemy.scale.x *= -1.0
	_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y
