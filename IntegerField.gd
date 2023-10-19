extends TextEdit
signal change()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func onTextChange():
	var res=""
	var minusUsable=true
	for e in self.text:
		if e=='-' and minusUsable:
			res+=e
		minusUsable=false
		if e in "1234567890":
			res+=e
	print(self.text,res)
	self.text=res
	change.emit()
