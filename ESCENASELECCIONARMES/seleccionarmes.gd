extends Control

func _ready() -> void:
	SumasGlobales.cargar_sumas()



func _on_enero_pressed() -> void:
	var enero = "res://ESCENAS ENERO/ENEROFRANCO.tscn"  # Ruta a la escena deseada
	get_tree().change_scene_to_file(enero)


func _on_febrero_pressed() -> void:
	var febrero = "res://ESCENAS FEBRERO/FEBREROFRANCO.tscn"  # Ruta a la escena deseada
	get_tree().change_scene_to_file(febrero)


func _on_marzo_pressed() -> void:
	var marzo = "res://ESCENAS MARZO/MARZOFRANCO.tscn"  # Ruta a la escena deseada
	get_tree().change_scene_to_file(marzo)
	
	
func _on_abril_pressed() -> void:
	var abril = "res://ESCENAS ABRIL/ABRILFRANCO.tscn"  # Ruta a la escena deseada
	get_tree().change_scene_to_file(abril)
	
func _on_mayo_pressed() -> void:
	var mayo = "res://ESCENAS MAYO/MAYOFRANCO.tscn"  # Ruta a la escena deseada
	get_tree().change_scene_to_file(mayo)
	
	
func _on_junio_pressed() -> void:
	var junio = "res://ESCENAS JUNIO/JUNIOFRANCO.tscn"  # Ruta a la escena deseada
	get_tree().change_scene_to_file(junio)
	
func _on_julio_pressed() -> void:
	var julio = "res://ESCENAS JULIO/JULIOFRANCO.tscn"  # Ruta a la escena deseada
	get_tree().change_scene_to_file(julio)
	
func _on_agosto_pressed() -> void:
	var agosto = "res://ESCENAS AGOSTO/AGOSTOFRANCO.tscn"  # Ruta a la escena deseada
	get_tree().change_scene_to_file(agosto)
	
func _on_septiembre_pressed() -> void:
	var septiembre = "res://ESCENAS SEPTIEMBRE/SEPTIEMBREFRANCO.tscn"  # Ruta a la escena deseada
	get_tree().change_scene_to_file(septiembre)
	
func _on_octubre_pressed() -> void:
	var octubre = "res://ESCENAS OCTUBRE/OCTUBREFRANCO.tscn"  # Ruta a la escena deseada
	get_tree().change_scene_to_file(octubre)
	
func _on_noviembre_pressed() -> void:
	var NOVIEMBRE = "res://ESCENAS NOVIEMBRE/NOVIEMBREFRANCO.tscn"  # Ruta a la escena deseada
	get_tree().change_scene_to_file(NOVIEMBRE)
	
func _on_diciembre_pressed() -> void:
	var DICIEMBRE = "res://ESCENAS DICIEMBRE/DICIEMBREFRANCO.tscn"  # Ruta a la escena deseada
	get_tree().change_scene_to_file(DICIEMBRE)
	


func _on_resumen_pressed() -> void:
	var RESUMEN = "res://RESUMEN.tscn"  # Ruta a la escena deseada
	get_tree().change_scene_to_file(RESUMEN)
	
