extends Control

@export var CasterTextures : Array[Texture]

func _on_increase_pressed() -> void:
	if int($MissionPoints.text) < 99:
		$MissionPoints.text = str(int($MissionPoints.text) + 1)

func _on_decrease_pressed() -> void:
	if int($MissionPoints.text) > 0:
		$MissionPoints.text = str(int($MissionPoints.text) - 1)

func _on_change_caster_button_down() -> void:
	$CasterPanel.show()

func reset_mission_points() -> void:
	$MissionPoints.text = "0"

func set_caster(idx : int) -> void:
	$CasterImage.texture = CasterTextures[idx]
	$CasterPanel.hide()
