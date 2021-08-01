extends Area2D

var screen_size
export var velocity = Vector2()

func _ready():
	screen_size = get_viewport_rect().size



func _process(delta):
	position += delta * velocity
	if out_of_bounds(): 
		queue_free()


func out_of_bounds():
	if position.x > screen_size.x || position.x < 0:
		return true
	if position.y > screen_size.y || position.y < 0: 
		return true
	return false
