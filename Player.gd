extends Node2D

var bullet_speed = 1000
var cannon_len = 150.0
var held = false
var bullet_class = load("res://Bullet.tscn")
onready var ship = get_node("Ship")
onready var turret = get_node("Ship/Turret")

func _ready():
	pass


func _process(delta):
	var shoot_command = Input.is_action_pressed("ui_select")
	if not held and shoot_command:
		held = false
		shoot()
	held = shoot_command


func shoot():
	var bullet = bullet_class.instance()
	bullet.velocity = ship.velocity + bullet_speed * Vector2(1.0, 0.0).rotated(turret.rotation)
	var cannon = Vector2(1.0, 0.0)
	bullet.position = ship.position + cannon.rotated(turret.rotation).normalized() * cannon_len
	bullet.z_index = -1
	add_child(bullet)


