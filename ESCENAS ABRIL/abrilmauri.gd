extends Node2D

# Variables semanas
var DiasSemana1 = [0, 0, 0, 0, 0, 0, 0] 
var DiasSemana2 = [0, 0, 0, 0, 0, 0, 0, 0] 
var DiasSemana3 = [0, 0, 0, 0, 0, 0, 0, 0] 
var DiasSemana4 = [0, 0, 0, 0, 0, 0, 0]

var SumaS1 = 0
var SumaS2 = 0
var SumaS3 = 0
var SumaS4 = 0
var SumaTM = 0

var PromMes = 0

var archivo_guardado = "user://mauri_abril.json"

func actualizar_totales():
		SumaS1 = 0
		for dia in DiasSemana1:
			SumaS1 += dia
		SumaS2 = 0
		for dia in DiasSemana2:
			SumaS2 += dia
		SumaS3 = 0
		for dia in DiasSemana3:
			SumaS3 += dia
		SumaS4 = 0
		for dia in DiasSemana4:
			SumaS4 += dia
		
		SumaTM = SumaS1 + SumaS2 + SumaS3 + SumaS4
		var total_dias = 30
		PromMes = SumaTM / float(total_dias)
		
		$PromMes.text = "PROMEDIO MES: %.2f" % PromMes
		$LabelSumaS1.text = "%.0f" % SumaS1
		$SumaMes.text = "SUMA TOTAL MES: %.0f" % SumaTM
		$SumaS2.text = "TOTAL: %.0f" % SumaS2
		$SumaS3.text = "TOTAL: %.0f" % SumaS3
		$SumaS4.text = "TOTAL: %.0f" % SumaS4

		guardar_suma()
func guardar_suma():
	SumasGlobales.sumas_mensuales["Abril"]["Mauri"] = SumaTM
	SumasGlobales.Guardar_sumas()
	

func cargar_datos():
	if FileAccess.file_exists(archivo_guardado):
		var file = FileAccess.open(archivo_guardado, FileAccess.READ)
		var json = JSON.new()
		var parse_result = json.parse(file.get_as_text())
		file.close()
		
		if parse_result == OK: 
			var datos = json.get_data() #
			if datos.has("DiasSemana1"):
				DiasSemana1 = datos["DiasSemana1"]
			if datos.has("DiasSemana2"):
				DiasSemana2 = datos["DiasSemana2"]
			if datos.has("DiasSemana3"):
				DiasSemana3 = datos["DiasSemana3"]
			if datos.has("DiasSemana4"):
				DiasSemana4 = datos["DiasSemana4"]
		else: 
			print("Error al cargar el archivo JSON")
			
	for dia_index in range(7): 
		var node_name = "DIA" + str(dia_index + 1)
		var node = $Semana1.get_node(node_name)
		if node:
			node.text = str(DiasSemana1[dia_index])
			
			
	for dia_index in range(8): 
		var node_name = "DIA" + str(dia_index + 1)
		var node = $Semana2.get_node(node_name)
		if node:
			node.text = str(DiasSemana2[dia_index])
			
	for dia_index in range(8):
		var node_name = "DIA" + str(dia_index + 1)
		var node = $Semana3.get_node(node_name)
		if node:
			node.text = str(DiasSemana3[dia_index])
			
			
	for dia_index in range(7):
		var node_name = "DIA" + str(dia_index + 1)
		var node = $Semana4.get_node(node_name)
		if node:
			node.text = str(DiasSemana4[dia_index])
		actualizar_totales()


func _ready():
	cargar_datos()
	conectar_semanas($Semana1, DiasSemana1)
	conectar_semanas($Semana2, DiasSemana2)
	conectar_semanas($Semana3, DiasSemana3)
	conectar_semanas($Semana4, DiasSemana4)
	actualizar_totales()
	
	
func conectar_semanas(semana_node, dias_array):
	for dia_index in range(dias_array.size()):
		var node_name = "DIA" + str(dia_index + 1)
		var line_edit = semana_node.get_node(node_name)
		if line_edit:
			line_edit.connect("text_changed", Callable(self, "_on_dia_text_changed").bind(dias_array, dia_index))
		else: 
			print("No se encontró el nodo:", node_name)

func _on_dia_text_changed(new_text, dias_array, dia_index):
	if dia_index >= 0 and dia_index < dias_array.size():
		if new_text.strip_edges().is_empty():
			dias_array[dia_index] = 0
		elif new_text.is_valid_float() and new_text.to_float() == int(new_text.to_float()):
			dias_array[dia_index] = int(new_text)  
		else:
			dias_array[dia_index] = 0
		print("Día actualizado:", dias_array)
		actualizar_totales()
		guardar_datos()

func guardar_datos():
	var datos = {
		"DiasSemana1": DiasSemana1,
		"DiasSemana2": DiasSemana2,
		"DiasSemana3": DiasSemana3,
		"DiasSemana4": DiasSemana4
	}
	var file = FileAccess.open(archivo_guardado, FileAccess.WRITE)
	file.store_string(JSON.stringify(datos, "\t"))
	file.close()

	
func _on_button_2_pressed() -> void:
	var nuevaEscena = "res://ESCENAS ABRIL/ABRILAZQUIELY.tscn"
	get_tree().change_scene_to_file(nuevaEscena)
	


func _on_b_1_pressed() -> void:
	var SeleEscena = "res://ESCENASELECCIONARMES/SELECCIONARMES.tscn"  # Ruta a la escena deseada
	get_tree().change_scene_to_file(SeleEscena)
	
	
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("IzquierdaKey"):
		Cambiar_escenaIzq()

func Cambiar_escenaIzq():
	var OtraEscena = "res://ESCENAS ABRIL/ABRILAZQUIELY.tscn"
	get_tree().change_scene_to_file(OtraEscena)
	
	
