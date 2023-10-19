extends TextEdit
signal change()

@export var maxlen=10
@onready var last_text=""
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func onTextChange():
	if self.text.length()>maxlen:
		self.text=last_text
		return
	last_text=self.text
	change.emit()
