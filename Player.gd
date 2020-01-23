extends Area2D

export (int) var velocidad
var movimiento = Vector2()
var limite

func _ready():
	limite = get_viewport_rect().size

func _process(delta):
	if Input.is_action_pressed("ui_right"):
		position.x += 0.01 * velocidad
	if Input.is_action_pressed("ui_left"):
		position.x -= 0.01 * velocidad
	if Input.is_action_pressed("ui_down"):
		position.y += 0.01 * velocidad
	if Input.is_action_pressed("ui_up"):
		position.y -= 0.01 * velocidad
	
	
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
#		$Sprite_player.animation = "derecha"
#	if movimiento.x < 0:
#		$Sprite_player.animation = "izquierda"
	