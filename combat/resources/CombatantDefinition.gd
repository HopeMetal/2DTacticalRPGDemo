extends Resource
class_name CombatantDefinition

@export_category("Stats")
@export var name = ""
@export var max_hp = 1
@export_enum("Melee", "Ranged", "Magic") var class_t = 0
@export var movement = 3
@export_category("Visual")
@export var icon: Texture2D
@export var map_sprite: Texture2D
