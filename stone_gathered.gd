extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	self.set_text(get_parent().get_node("RichTextLabel")._format_number(int(get_parent().get_node("RichTextLabel").stone)))
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
