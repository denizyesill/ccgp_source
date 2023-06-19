extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Resource1_mouse_entered():
	get_node("Research Center/lvl1").self_modulate = Color("#eeeeee")
	pass # Replace with function body.


func _on_Resource1_mouse_exited():
	get_node("Research Center/lvl1/").self_modulate = Color("#767676")
	pass # Replace with function body.
