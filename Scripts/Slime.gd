extends Node2D

const SPEED = 60
@onready var ray_cast_2d_right = $RayCast2DRight
@onready var ray_cast_2d_left = $RayCast2DLeft
@onready var animated_sprite_2d = $AnimatedSprite2D

var direction = 1;

func _process(delta):
	position.x += direction * SPEED * delta
	if ray_cast_2d_right.is_colliding():
		direction = -1 
		animated_sprite_2d.flip_h = true;
	if ray_cast_2d_left.is_colliding():
		direction = 1;
		animated_sprite_2d.flip_h = false;
	
	
