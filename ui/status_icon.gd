extends PanelContainer

func set_icon(texture: Texture2D):
	$Icon.texture = texture


func set_health(hp: int, hp_max: int):
	$Icon/Health.text = "{0}/{1}".format([hp, hp_max])
