extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.disabled=true
	pass # Replace with function body.


func _process(delta):
	if get_parent().get_node("ProgressBar").max_value<=get_parent().get_node("ProgressBar").value:
		self.disabled=false

	else:
		self.disabled=true

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

