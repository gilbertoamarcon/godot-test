extends Area2D

export var rotation_velocity = 120.0

func _ready():
	pass


func _process(delta):
	if Input.is_action_pressed("ui_right"):
		rotation_degrees += rotation_velocity * delta
	if Input.is_action_pressed("ui_left"):
		rotation_degrees -= rotation_velocity * delta
