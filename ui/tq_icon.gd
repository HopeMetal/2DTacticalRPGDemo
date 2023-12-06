extends TextureRect

var max_hp: int
var hp: int

func set_max_hp(max_hp: int):
	$Deadness.max_value = max_hp
	self.max_hp = max_hp
	update_deadness()

func set_hp(hp: int):
	self.hp = hp
	update_deadness()

func update_deadness():
	var deadness_value = max_hp - hp
	$Deadness.value = deadness_value

func set_side(side: int):
	match side:
		0:
			$Border.modulate = Color.DODGER_BLUE
		1:
			$Border.modulate = Color.CRIMSON
