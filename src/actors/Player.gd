extends Actor
var mascarado = false

func _physics_process(delta: float) -> void:
	var is_jump_interrupted: = Input.is_action_just_released("move_up")
	var direction = get_direction()
	_velocity = calculate_move_velocity(_velocity, direction, speed, is_jump_interrupted)
	_velocity = move_and_slide(_velocity, FLOOR_NORMAL)
	
	if !is_on_floor() and Input.is_action_pressed("move_up") and Input.is_action_pressed("move_right") and mascarado==false:
		$player.play("Jump")
		$player.flip_h = false
	elif !is_on_floor() and Input.is_action_pressed("move_up") and Input.is_action_pressed("move_left") and mascarado==false:
		$player.play("Jump")
		$player.flip_h = true
	elif Input.is_action_pressed("move_right") and mascarado==false:
		$player.play("Run")
		$player.flip_h = false
	elif Input.is_action_pressed("move_left") and mascarado==false:
		$player.play("Run")
		$player.flip_h = true
	elif !is_on_floor() and Input.is_action_pressed("move_up") and Input.is_action_pressed("move_right") and mascarado==true:
		$player.play("Jump Mask")
		$player.flip_h = false
	elif !is_on_floor() and Input.is_action_pressed("move_up") and Input.is_action_pressed("move_left") and mascarado==true:
		$player.play("Jump Mask")
		$player.flip_h = true
	elif Input.is_action_pressed("move_right") and mascarado==true:
		$player.play("Run Mask")
		$player.flip_h = false
	elif Input.is_action_pressed("move_left") and mascarado==true:
		$player.play("Run Mask")
		$player.flip_h = true
	else:
		if mascarado == false:
			$player.play("Idle")
		else:
			$player.play("Idle Mask")
	
func get_direction() -> Vector2:
	return Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		-1.0 if Input.is_action_just_pressed("move_up") and is_on_floor() else 1.0
		
	)
	
func calculate_move_velocity(linear_velocity: Vector2, direction: Vector2, speed: Vector2, is_jump_interrupted: bool):
	var out: = linear_velocity
	
	out.x = speed.x * direction.x
	out.y += gravity * get_physics_process_delta_time()
	
	if direction.y == -1.0:
		out.y = speed.y * direction.y
		
	if is_jump_interrupted:
		out.y = 0.0
	
	return out


func _on_Area2D_body_entered(body):
	if body.name == "Mask":
		mascarado = true


func _on_Area2D_area_entered(area):
	if area.name == "Mask":
		mascarado = true
