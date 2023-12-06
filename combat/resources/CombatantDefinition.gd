extends Resource
class_name CombatantDefinition

@export_category("Stats")
@export var name = ""
@export_range(1, 2, 1, "or_greater") var max_hp = 1
@export_enum("Melee", "Ranged", "Magic") var class_t = 0
@export_enum("Ground", "Flying", "Mounted") var class_m = 0
@export_range(1, 3, 1, "or_greater") var movement = 3
@export_range(1, 2, 1, "or_greater") var initiative = 1
@export_category("Visual")
@export var icon: Texture2D
@export var map_sprite: Texture2D
