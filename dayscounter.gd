extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var toggle = false
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func _process(delta):
	self.set_text(String(get_parent().get_node("RichTextLabel").clock)+"  days passed.")
	match get_parent().get_node("RichTextLabel").clock:
			100:
				get_parent().get_node("bonuses").set_text(String("Build trade center.(Reward: 10000 Science)"))
				if get_parent().get_node("RichTextLabel").population>10:
					get_parent().get_node("RichTextLabel").gold=+1000
					get_parent().get_node("Success").visible=true
					pass
				else:
					get_parent().get_node("Failure").visible=true
					pass
#				get_parent().get_node("RichTextLabel").timer.stop()
			350:
				get_parent().get_node("Success").visible=false
				get_parent().get_node("Success").get_node("Message").set_text(String("Success!! You've earned 10000 Science"))
				get_parent().get_node("Failure").visible=false
				get_parent().get_node("Failure").get_node("Message").set_text(String("Failed but you've a new mission"))
			34000:
				print("Two are better than one!")
				get_parent().get_node("RichTextLabel").timer.stop()
				get_parent().get_node("Milestone1").visible=true
			"test":
				print("Oh snap! It's a string!")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass





