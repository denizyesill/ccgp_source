extends ProgressBar


# Declare member variables here. Examples:
# varvar incremento=1 a = 2
# var b = "text"
var a =1

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.
func _process(delta):
	self.set_value(get_parent().get_node("RichTextLabel").scientist+get_parent().get_node("RichTextLabel").miner+get_parent().get_node("RichTextLabel").fighter+get_parent().get_node("RichTextLabel").hunter+get_parent().get_node("RichTextLabel").totalfighters+get_parent().get_node("RichTextLabel").totallabors)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_era_upgrade_pressed():
	if self.value == self.max_value:
		get_parent().get_node("DemoOver").visible=true
		get_parent().get_node("RichTextLabel").timer.stop()
		a+=1
		self.max_value= self.max_value + 50 * a
		get_parent().get_node("inc_scientist").disabled=false
		get_parent().get_node("dec_scientist").disabled=false
		get_parent().get_node("science_booster1").disabled=false
		get_parent().get_node("buy_scientist").disabled=false
		get_parent().get_node("science_gathered").visible=true
		get_parent().get_node("Scientists").visible=true
		get_parent().get_node("ScienceBoostBlocker").visible=false
		get_parent().get_node("unlockera2").visible=false
		get_parent().get_node("unlockera2_2").visible=false
		get_parent().get_node("ScientistBlocker").visible=false
		get_parent().get_node("era_upgrade").set_text("enter era3")
		 
	pass # Replace with function body.




func _on_Continiue_pressed():
	get_parent().get_node("RichTextLabel").timer.start()
	get_parent().get_node("DemoOver").visible=false
	pass # Replace with function body.
