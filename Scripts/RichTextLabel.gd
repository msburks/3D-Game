extends RichTextLabel

var ms = 0
var s = 0
var m = 0

func _process(delta):
	
	if ms > 9:
		s=+ 1
		ms = 0
	
	if s > 59:
		m += 1 
		s = 0
		
	set_text(str(m)+':'+str(s))
	
	pass


func _on_Timer_timeout():
	s+= 1
	pass # Replace with function body.
