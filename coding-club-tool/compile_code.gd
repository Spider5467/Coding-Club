extends Node

var code
var codeE
#var new_script = $Control/TabContainer/New_Script/CodeEdit2.text

func _ready() -> void:
	codeE = $"."
	code = $Control/TabContainer/HelloWorld/CodeEdit.text

func _process(delta):
	
	#code[1] = new_script
	my_script(code)
	print("bob")


func my_script(input):
	var script=GDScript.new()
	script.set_source_code("func eval:" + input)
	script.reload(true)
	print(script.source_code)
	print("bob")
	codeE.add_child(script)

	


	
	
	
