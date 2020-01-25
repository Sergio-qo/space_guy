extends Area2D

export (int) var velocidad
var movimiento = Vector2()
#
#func _ready():
#	limite = get_viewport_rect().size

func _process(delta):
#	Movimiento del personaje y su animación
	if Input.is_action_pressed("ui_right"):
		position.x += 0.01 * velocidad
#		Establecer animación correspondiente
		$AnimatedSprite.animation = "derecha"
	if Input.is_action_pressed("ui_left"):
#		Establecer animación correspondiente
		$AnimatedSprite.animation = "izquierda"
		position.x -= 0.01 * velocidad
	if Input.is_action_pressed("ui_down"):
		position.y += 0.01 * velocidad
	if Input.is_action_pressed("ui_up"):
		position.y -= 0.01 * velocidad
	var limite_max = get_tree().get_nodes_in_group("max")[0].global_position
	var limite_min = get_tree().get_nodes_in_group("min")[0].global_position
	
	if(global_position.x < limite_min.x):
		global_position.x = limite_min.x + 1
	if(global_position.y < limite_min.y):
		global_position.y = limite_min.y + 1
	if(global_position.x > limite_max.x):
		global_position.x = limite_max.x - 1
	if(global_position.y > limite_max.y):
		global_position.y = limite_max.y - 1
	
	
#	Este código haría que el personaje tenga la animacion que toca	
#	movimiento = Vector2()
#
#	if Input.is_action_pressed("ui_right"):
#		movimiento.x += 1
#	if Input.is_action_pressed("ui_left"):
#		movimiento.x -= 1
#	if Input.is_action_pressed("ui_up"):
#		movimiento.y -= 1
#	if Input.is_action_pressed("ui_down"):
#		movimiento.y += 1
#	if movimiento.length() > 0:
#		movimiento = movimiento.normalized() * velocidad
#
#	position += movimiento * delta
#	position.x = clamp(position.x, 0, limite.x)
#	position.y = clamp(position.y, 0, limite.y)
#
#	if movimiento.x > 0:
#		$AnimatedSprite.animation = "derecha"
#	if movimiento.x < 0:
#		$AnimatedSprite.animation = "izquierda"
	