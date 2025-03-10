extends Node

var archivo_de_guardado = "user://sumas_globales.json"
var archivoDIC = "user://sumasdiciembre.json"

var sumas_mensuales = {
	"Enero": {"Franco": 0, "Joaco": 0, "Wal": 0, "Azquiely": 0, "Mauri": 0},
	"Febrero":{"Franco": 0, "Joaco": 0, "Wal": 0, "Azquiely": 0, "Mauri": 0},
	"Marzo": {"Franco": 0, "Joaco": 0, "Wal": 0, "Azquiely": 0, "Mauri": 0},
	"Abril": {"Franco": 0, "Joaco": 0, "Wal": 0, "Azquiely": 0, "Mauri": 0},
	"Mayo": {"Franco": 0, "Joaco": 0, "Wal": 0, "Azquiely": 0, "Mauri": 0},
	"Junio": {"Franco": 0, "Joaco": 0, "Wal": 0, "Azquiely": 0, "Mauri": 0},
	"Julio": {"Franco": 0, "Joaco": 0, "Wal": 0, "Azquiely": 0, "Mauri": 0},
	"Agosto": {"Franco": 0, "Joaco": 0, "Wal": 0, "Azquiely": 0, "Mauri": 0},
	"Septiembre": {"Franco": 0, "Joaco": 0, "Wal": 0, "Azquiely": 0, "Mauri": 0},
	"Octubre": {"Franco": 0, "Joaco": 0, "Wal": 0, "Azquiely": 0, "Mauri": 0},
	"Noviembre": {"Franco": 0, "Joaco": 0, "Wal": 0, "Azquiely": 0, "Mauri": 0},
	}
	
var sumaDIC = {
	"Diciembre": {"Franco": 0, "Joaco": 0, "Wal": 0, "Azquiely": 0, "Mauri": 0},
}

func guardarDIC():
	var file = FileAccess.open(archivoDIC, FileAccess.WRITE)
	file.store_string(JSON.stringify(sumaDIC, "\t" ))
	file.close()
	
func cargarDIC():
	if FileAccess.file_exists(archivoDIC):
		var file = FileAccess.open(archivoDIC, FileAccess.READ)
		var json = JSON.new()
		var resultparse = json.parse(file.get_as_text())
		file.close()
	
		if resultparse == OK:
			sumaDIC = json.get_data()
		else:
			print("ERROR AL CARGAR EL ARCHIVO")
	else:
		guardarDIC()


func Guardar_sumas():
	var file = FileAccess.open(archivo_de_guardado, FileAccess.WRITE)
	file.store_string(JSON.stringify(sumas_mensuales, "\t" ))
	file.close()
	
func cargar_sumas():
	if FileAccess.file_exists(archivo_de_guardado):
		var file = FileAccess.open(archivo_de_guardado, FileAccess.READ)
		var json = JSON.new()
		var resultparse = json.parse(file.get_as_text())
		file.close()
	
		if resultparse == OK:
			sumas_mensuales = json.get_data()
		else:
			print("ERROR AL CARGAR EL ARCHIVO")
	else:
		Guardar_sumas()
		
		
		
