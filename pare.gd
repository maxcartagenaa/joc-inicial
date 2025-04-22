extends CharacterBody2D

var velocitat := 200
var salt := -450


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	if is_on_ceiling():
		velocity.y = 0
	if Input.is_action_just_pressed("salta") and is_on_floor():
		velocity.y = salt
	var direction = Input.get_axis("mou_esquerra","mou_dreta")
	if direction:
		velocity.x = direction * velocitat
	else:
		velocity.x = 0
	move_and_slide()
	if velocity.x > 0:
		$pare.visible = true
		$pare2.visible = false
		$pare3.visible = false
	if velocity.x < 0:
		$pare2.visible = true
		$pare.visible = false 
		$pare3.visible = false
	if velocity.x == 0:
		$pare3.visible = true
		$pare2.visible = false
		$pare.visible = false
	
 

	
	
