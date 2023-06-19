extends Node2D

export (Color,RGBA) var mouse_out
export (Color,RGBA) var mouse_over

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var resource_center_level=0
var military_camp_level=0
var grand_bazaar_level=0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




#resource center upgrades
func _on_TextureButton_pressed():
	if resource_center_level==0 && get_parent().get_node("RichTextLabel").science>100:
		get_node("Research Center/lvl1").set_modulate(mouse_over)
		resource_center_level=resource_center_level+1
		get_node("Research Center/ProgressBar").value=34
		get_node("Research Center/lvl2").set_modulate(mouse_out)
		get_parent().get_node("RichTextLabel").science-=100
	pass # Replace with function body.


func _on_TextureButton2_pressed():
	if resource_center_level==1:
		get_node("Research Center/lvl2").set_modulate(mouse_over)
		get_node("Research Center/ProgressBar").value=51
		resource_center_level=resource_center_level+1
		get_node("Research Center/lvl3").set_modulate(mouse_out)
	pass # Replace with function body.


func _on_TextureButton3_pressed():
	if resource_center_level==2:
		get_node("Research Center/lvl3").set_modulate(mouse_over)
		get_node("Research Center/ProgressBar").value=68
		resource_center_level=resource_center_level+1
		get_node("Research Center/lvl4").set_modulate(mouse_out)
	pass # Replace with function body.


func _on_TextureButton4_pressed():
	if resource_center_level==3:
		get_node("Research Center/lvl4").set_modulate(mouse_over)
		get_node("Research Center/ProgressBar").value=85
		get_node("Research Center/ProgressBar2").value=85
		get_node("Research Center/ProgressBar3").value=85
		resource_center_level=resource_center_level+1	
		get_node("Research Center/lvl5").set_modulate(mouse_out)
	pass # Replace with function body.


func _on_TextureButton2_mouse_entered():
	get_node("Research Center/InfoBox").set_bbcode("GRAND LIBRARY                                                                    Word goes on, writings remain and the science works cumulatively. Build a library so new scientists can learn from the elders.")
	pass # Replace with function body.


func _on_TextureButton2_mouse_exited():
	get_node("Research Center/InfoBox").set_bbcode("INFO BOX")
	pass # Replace with function body.


func _on_TextureButton_mouse_entered():
	get_node("Research Center/InfoBox").set_bbcode("MAIN BUILDING                                                                    You can build a lot of things inside this building to improve science gathering.")
	pass # Replace with function body.


func _on_TextureButton_mouse_exited():
	get_node("Research Center/InfoBox").set_bbcode("INFO BOX")
	pass # Replace with function body.


func _on_TextureButton3_mouse_entered():
	get_node("Research Center/InfoBox").set_bbcode("LABORATORY                                                                                                        Experiments is the key to make science. Build this and science go brrrr")
	pass # Replace with function body.


func _on_TextureButton3_mouse_exited():
	get_node("Research Center/InfoBox").set_bbcode("INFO BOX")
	pass # Replace with function body.


func _on_TextureButton4_mouse_entered():
	get_node("Research Center/InfoBox").set_bbcode("BASIC EDUCATION                                                                 With basic education, new scientist will come out easily.")	
	pass # Replace with function body.


func _on_TextureButton4_mouse_exited():
	get_node("Research Center/InfoBox").set_bbcode("INFO BOX")
	pass # Replace with function body.





#military camp upgrades


func _on_m_camp_lvl1_pressed():
	if military_camp_level==0:
		get_node("MilitaryCamp/m_camp_lvl1_img").set_modulate(mouse_over)
		military_camp_level=military_camp_level+1
		get_node("MilitaryCamp/m_camp_progress").value=34
		get_node("MilitaryCamp/m_camp_lvl2_img").set_modulate(mouse_out)
	pass # Replace with function body.


func _on_m_camp_lvl1_mouse_entered():
	get_node("Research Center/InfoBox").set_bbcode("MAIN BUILDING                                                                 With basic education, new scientist will come out easily.")	
	pass # Replace with function body.


func _on_m_camp_lvl1_mouse_exited():
	get_node("Research Center/InfoBox").set_bbcode("INFO BOX")
	pass # Replace with function body.



func _on_m_camp_lvl2_pressed():
	if military_camp_level==1:
		get_node("MilitaryCamp/m_camp_lvl2_img").set_modulate(mouse_over)
		military_camp_level=military_camp_level+1
		get_node("MilitaryCamp/m_camp_progress").value=51
		get_node("MilitaryCamp/m_camp_lvl3_img").set_modulate(mouse_out)
	pass # Replace with function body.

func _on_m_camp_lvl2_mouse_entered():
	get_node("Research Center/InfoBox").set_bbcode("CAVALRY UNITS                                                                         With basic education, new scientist will come out easily.")	
	pass # Replace with function body.


func _on_m_camp_lvl2_mouse_exited():
	get_node("Research Center/InfoBox").set_bbcode("INFO BOX")
	pass # Replace with function body.
	


func _on_m_camp_lvl3_pressed():
	if military_camp_level==2:
		get_node("MilitaryCamp/m_camp_lvl3_img").set_modulate(mouse_over)
		military_camp_level=military_camp_level+1
		get_node("MilitaryCamp/m_camp_progress").value=68
		get_node("MilitaryCamp/m_camp_lvl4_img").set_modulate(mouse_out)
	pass # Replace with function body.


func _on_m_camp_lvl3_mouse_entered():
	get_node("Research Center/InfoBox").set_bbcode("BLACK SMITHS                                                                 With basic education, new scientist will come out easily.")	
	pass # Replace with function body.


func _on_m_camp_lvl3_mouse_exited():
	get_node("Research Center/InfoBox").set_bbcode("INFO BOX")
	pass # Replace with function body.




func _on_m_camp_lvl4_pressed():
	if military_camp_level==3:
		get_node("MilitaryCamp/m_camp_lvl4_img").set_modulate(mouse_over)
		military_camp_level=military_camp_level+1
		get_node("MilitaryCamp/m_camp_progress").value=85

		get_node("MilitaryCamp/m_camp_lvl5_img").set_modulate(mouse_out)
	pass # Replace with function body.


func _on_m_camp_lvl4_mouse_entered():
	get_node("Research Center/InfoBox").set_bbcode("ADVENTURERS                                                                                                With basic education, new scientist will come out easily.")	
	pass # Replace with function body.


func _on_m_camp_lvl4_mouse_exited():
	get_node("Research Center/InfoBox").set_bbcode("INFO BOX")
	pass # Replace with function body.


 #grand bazaar

func _on_g_bazaar_lvl1_pressed():
	if grand_bazaar_level==0:
		get_node("GrandBazaar/g_bazaar_lvl1_img").set_modulate(mouse_over)
		grand_bazaar_level=grand_bazaar_level+1
		get_node("GrandBazaar/g_bazaar_prog").value=34
		get_node("GrandBazaar/g_bazaar_lvl2_img").set_modulate(mouse_out)
	pass # Replace with function body.
	
	
func _on_g_bazaar_lvl2_pressed():
	if grand_bazaar_level==1:
		get_node("GrandBazaar/g_bazaar_lvl2_img").set_modulate(mouse_over)
		grand_bazaar_level=grand_bazaar_level+1
		get_node("GrandBazaar/g_bazaar_prog").value=51
		get_node("GrandBazaar/g_bazaar_lvl3_img").set_modulate(mouse_out)
	pass # Replace with function body.


func _on_g_bazaar_lvl3_pressed():
	if grand_bazaar_level==2:
		get_node("GrandBazaar/g_bazaar_lvl3_img").set_modulate(mouse_over)
		grand_bazaar_level=grand_bazaar_level+1
		get_node("GrandBazaar/g_bazaar_prog").value=68
		get_node("GrandBazaar/g_bazaar_lvl4_img").set_modulate(mouse_out)
	pass # Replace with function body.

func _on_g_bazaar_lvl4_pressed():
	if grand_bazaar_level==3:
		get_node("GrandBazaar/g_bazaar_lvl4_img").set_modulate(mouse_over)
		grand_bazaar_level=grand_bazaar_level+1
		get_node("GrandBazaar/g_bazaar_prog").value=85
		get_node("GrandBazaar/g_bazaar_lvl5_img").set_modulate(mouse_out)
	pass # Replace with function body.


func _on_g_bazaar_lvl5_pressed():
	if grand_bazaar_level==4:
		get_node("GrandBazaar/g_bazaar_lvl5_img").set_modulate(mouse_over)
		grand_bazaar_level=grand_bazaar_level+1
		get_node("GrandBazaar/g_bazaar_prog").value=34
		get_node("GrandBazaar/g_bazaar_lvl6_img").set_modulate(mouse_out)
	pass # Replace with function body.
	pass # Replace with function body.


func _on_g_bazaar_lvl1_mouse_entered():
	get_node("Research Center/InfoBox").set_bbcode("MAIN BUILDING                                                                    A center for the people to buy, sell and excange.")
	pass # Replace with function body.


func _on_g_bazaar_lvl1_mouse_exited():
	get_node("Research Center/InfoBox").set_bbcode("INFO BOX")
	pass # Replace with function body.


func _on_g_bazaar_lvl2_mouse_entered():
	get_node("Research Center/InfoBox").set_bbcode("TAVERN                                                                                                                A tavern for the foreign merchants and their customers to stay.")	
	pass # Replace with function body.


func _on_g_bazaar_lvl2_mouse_exited():
	get_node("Research Center/InfoBox").set_bbcode("INFO BOX")
	pass # Replace with function body.


func _on_g_bazaar_lvl3_mouse_entered():
	get_node("Research Center/InfoBox").set_bbcode("TRADE ROUTES                                                                    With maps and trade routes, our economy will develop rapidly.")
	pass # Replace with function body.


func _on_g_bazaar_lvl3_mouse_exited():
	get_node("Research Center/InfoBox").set_bbcode("INFO BOX")
	pass # Replace with function body.


func _on_g_bazaar_lvl4_mouse_entered():
	get_node("Research Center/InfoBox").set_bbcode("BAZAAR GRUARDS                                                                    Soldiers that will provide security specially on the grand bazaar area.")
	pass # Replace with function body.


func _on_g_bazaar_lvl4_mouse_exited():
	get_node("Research Center/InfoBox").set_bbcode("INFO BOX")
	pass # Replace with function body.


func _on_resourceCenterButton_pressed():
	get_parent().get_node("r_center_window").visible=true
	pass # Replace with function body.



func _on_Continiue_pressed():
	get_parent().get_node("r_center_window").visible=false
	pass # Replace with function body.
