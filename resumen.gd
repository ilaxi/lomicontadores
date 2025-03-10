extends Control

#Enero
var sumaEneroFranco = 0
var sumaEneroJoaco = 0
var sumaEneroWal = 0
var sumaEneroAzquiely = 0
var SEM = 0 

#Febrero
var SFF = 0
var SFJ = 0
var SFW = 0
var SFA = 0
var SFM = 0 

#Marzo
var SMF = 0
var SMJ = 0
var SMW = 0
var SMA = 0
var SMM = 0

#Abril
var SAF = 0
var SAJ = 0
var SAW = 0
var SAA = 0
var SAM = 0

#Mayo
var SMMF = 0 
var SMMJ = 0
var SMMW = 0
var SMMA = 0
var SMMM = 0

#Junio
var SJF = 0
var SJJ = 0
var SJW = 0
var SJA = 0
var SJM = 0

#Julio
var SJJF = 0
var SJJJ = 0
var SJJW = 0
var SJJA = 0
var SJJM = 0

#Agosto
var SAAF = 0
var SAAJ = 0
var SAAW = 0
var SAAA = 0
var SAAM = 0

#Septiembre
var SSF = 0
var SSJ = 0
var SSW = 0
var SSA = 0
var SSM = 0

#Octubre
var SOF = 0
var SOJ = 0
var SOW = 0
var SOA = 0
var SOM = 0

#Noviembre
var SNF = 0
var SNJ = 0
var SNW = 0
var SNA = 0
var SNM = 0

#Diciembre 
var SDF = 0
var SDJ = 0
var SDW = 0
var SDA = 0
var SDM = 0

var TotalFranco = 0
var TotalJoaco = 0
var TotalWal = 0
var TotalMauri = 0
var TotalAzquiely = 0

var PromFranco = 0
var PromJoaco = 0
var PromWal = 0
var PromAzq = 0
var PromMauri = 0

func _on_volver_pressed() -> void:
	var volver = "res://ESCENASELECCIONARMES/SELECCIONARMES.tscn"
	get_tree().change_scene_to_file(volver)
	
	
func valores_de_sumas(Enero):
	if SumasGlobales.sumas_mensuales.has(Enero):
		var suma = SumasGlobales.sumas_mensuales[Enero]
		sumaEneroFranco = "ENERO: " + str(suma["Franco"])
		sumaEneroJoaco = "ENERO: " + str(suma["Joaco"])
		sumaEneroWal = "ENERO: " + str(suma["Wal"])
		sumaEneroAzquiely = "ENERO: " + str(suma["Azquiely"])
		SEM = "ENERO: " + str(suma["Mauri"])
		$MESESFRANCO/ENEROFRANCO.text = str(sumaEneroFranco)
		$MESESJOACO/ENEROFRANCO.text = str(sumaEneroJoaco)
		$MESESWAL/ENEROFRANCO.text = str(sumaEneroWal)
		$MESESAZQUIELY/ENEROFRANCO.text = str(sumaEneroAzquiely)
		$MESESMAURI/ENEROFRANCO.text = str(SEM)
		
		
func valores_de_sumasF(Febrero):
	if SumasGlobales.sumas_mensuales.has(Febrero):
		var suma = SumasGlobales.sumas_mensuales[Febrero]
		SFF  = "FEBRERO: " + str(suma["Franco"])
		SFJ = "FEBRERO: " + str(suma["Joaco"])
		SFW = "FEBRERO: " + str(suma["Wal"])
		SFA = "FEBRERO: " + str(suma["Azquiely"])
		SFM = "FEBRERO: " + str(suma["Mauri"])
		$MESESFRANCO/FEBREROFRANCO.text = str(SFF)
		$MESESJOACO/FEBREROFRANCO.text = str(SFJ)
		$MESESWAL/FEBREROFRANCO.text = str(SFW)
		$MESESAZQUIELY/FEBREROFRANCO.text = str(SFA)
		$MESESMAURI/FEBREROFRANCO.text = str(SFM)
		
		
		
func valores_de_sumasMAR(Marzo):
	if SumasGlobales.sumas_mensuales.has(Marzo):
		var suma = SumasGlobales.sumas_mensuales[Marzo]
		SMF = "MARZO: " + str(suma["Franco"])
		SMJ = "MARZO: " + str(suma["Joaco"])
		SMW = "MARZO: " + str(suma["Wal"])
		SMA = "MARZO: " + str(suma["Azquiely"])
		SMM = "MARZO: " + str(suma["Mauri"])
		$MESESJOACO/MARZOFRANCO.text = str(SMJ)
		$MESESFRANCO/MARZOFRANCO.text = str(SMF)
		$MESESWAL/MARZOFRANCO.text = str(SMW)
		$MESESAZQUIELY/MARZOFRANCO.text = str(SMA)
		$MESESMAURI/MARZOFRANCO.text = str(SMM)
		
		
func valores_de_sumasAB(Abril):
	if SumasGlobales.sumas_mensuales.has(Abril):
		var suma = SumasGlobales.sumas_mensuales[Abril]
		SAF = "ABRIL: " + str(suma["Franco"])
		SAJ = "ABRIL: " + str(suma["Joaco"])
		SAW = "ABRIL: " + str(suma["Wal"])
		SAA = "ABRIL: " + str(suma["Azquiely"])
		SAM = "ABRIL: " + str(suma["Mauri"])
		$MESESFRANCO/ABRILFRANCO.text = str(SAF)
		$MESESJOACO/ABRILFRANCO.text = str(SAJ)
		$MESESWAL/ABRILFRANCO.text = str(SAW)
		$MESESAZQUIELY/ABRILFRANCO.text = str(SAA)
		$MESESMAURI/ABRILFRANCO.text = str(SAM)
		
func valores_sumasMM(Mayo):
	if SumasGlobales.sumas_mensuales.has(Mayo):
		var suma = SumasGlobales.sumas_mensuales[Mayo]
		SMMF = "MAYO: " + str(suma["Franco"])
		SMMJ = "MAYO: " + str(suma["Joaco"])
		SMMW = "MAYO: " + str(suma["Wal"])
		SMMA = "MAYO: " + str(suma["Azquiely"])
		SMMM = "MAYO: " + str(suma["Mauri"])
		$MESESFRANCO/MAYOFRANCO.text = str(SMMF)
		$MESESJOACO/MAYOFRANCO.text = str(SMMJ)
		$MESESWAL/MAYOFRANCO.text = str(SMMW)
		$MESESAZQUIELY/MAYOFRANCO.text = str(SMMA)
		$MESESMAURI/MAYOFRANCO.text = str(SMMM)
		
		
		
func valores_sumaJUN(Junio):
	if SumasGlobales.sumas_mensuales.has(Junio):
		var suma = SumasGlobales.sumas_mensuales[Junio]
		SJF = "JUNIO: " + str(suma["Franco"])
		SJJ = "JUNIO: " + str(suma["Joaco"])
		SJW = "JUNIO: " + str(suma["Wal"])
		SJA = "JUNIO: " + str(suma["Azquiely"])
		SJM = "JUNIO: " + str(suma["Mauri"])
		$MESESJOACO/JUNIOFRANCO.text = str(SJJ)
		$MESESFRANCO/JUNIOFRANCO.text = str(SJF)
		$MESESWAL/JUNIOFRANCO.text = str(SJW)
		$MESESAZQUIELY/JUNIOFRANCO.text = str(SJA)
		$MESESMAURI/JUNIOFRANCO.text = str(SJM)
		
func valores_sumasJJUL(Julio):
	if SumasGlobales.sumas_mensuales.has(Julio):
		var suma = SumasGlobales.sumas_mensuales[Julio]
		SJJF = "JULIO: " + str(suma["Franco"])
		SJJJ = "JULIO: " + str(suma["Joaco"])
		SJJW = "JULIO: " + str(suma["Wal"])
		SJJA = "JULIO: " + str(suma["Azquiely"]) 
		SJJM = "JULIO: " + str(suma["Mauri"])
		$MESESJOACO/JULIOFRANCO.text = str(SJJJ)
		$MESESFRANCO/JULIOFRANCO.text = str(SJJF)
		$MESESWAL/JULIOFRANCO.text = str(SJJW)
		$MESESAZQUIELY/JULIOFRANCO.text = str(SJJA)
		$MESESMAURI/JULIOFRANCO.text = str(SJJM)
		
func valores_sumaAGO(Agosto):
	if SumasGlobales.sumas_mensuales.has(Agosto):
		var suma = SumasGlobales.sumas_mensuales[Agosto]
		SAAF = "AGOSTO: " + str(suma["Franco"])
		SAAJ = "AGOSTO: " + str(suma["Joaco"])
		SAAW = "AGOSTO: " + str(suma["Wal"])
		SAAA = "AGOSTO: " + str(suma["Azquiely"])
		SAAM = "AGOSTO: " + str(suma["Mauri"])
		$MESESFRANCO/AGOSTOFRANCO.text = str(SAAF)
		$MESESJOACO/AGOSTOFRANCO.text = str(SAAJ)
		$MESESWAL/AGOSTOFRANCO.text = str(SAAW)
		$MESESAZQUIELY/AGOSTOFRANCO.text = str(SAAA)
		$MESESMAURI/AGOSTOFRANCO.text = str(SAAM)
		
		
func valores_sumaSEP(Septiembre):
	if SumasGlobales.sumas_mensuales.has(Septiembre):
		var suma = SumasGlobales.sumas_mensuales[Septiembre]
		SSF = "SEPTIEMBRE: " + str(suma["Franco"])
		SSJ = "SEPTIEMBRE: " + str(suma["Joaco"])
		SSW = "SEPTIEMBRE: " + str(suma["Wal"])
		SSA = "SEPTIEMBRE: " + str(suma["Azquiely"])
		SSM = "SEPTIEMBRE: " + str(suma["Mauri"])
		$MESESFRANCO/SEPTIEMBREFRANCO.text = str(SSF)
		$MESESJOACO/SEPTIEMBREFRANCO.text = str(SSJ)
		$MESESWAL/SEPTIEMBREFRANCO.text = str(SSW)
		$MESESAZQUIELY/SEPTIEMBREFRANCO.text = str(SSA)
		$MESESMAURI/SEPTIEMBREFRANCO.text = str(SSM)
		
		
func valores_sumaOCT(Octubre):
	if SumasGlobales.sumas_mensuales.has(Octubre):
		var Suma = SumasGlobales.sumas_mensuales[Octubre]
		SOF = "OCTUBRE: " + str(Suma["Franco"])
		SOJ = "OCTUBRE: " + str(Suma["Joaco"])
		SOW = "OCTUBRE: " + str(Suma["Wal"])
		SOA = "OCTUBRE: " + str(Suma["Azquiely"])
		SOM = "OCTUBRE: " + str(Suma["Mauri"])
		$MESESFRANCO/OCTUBREFRANCO.text = str(SOF)
		$MESESJOACO/OCTUBREFRANCO.text = str(SOJ)
		$MESESWAL/OCTUBREFRANCO.text = str(SOW)
		$MESESAZQUIELY/OCTUBREFRANCO.text = str(SOA)
		$MESESMAURI/OCTUBREFRANCO.text = str(SOM)
		
func valores_sumaNOV(Noviembre):
	if SumasGlobales.sumas_mensuales.has(Noviembre):
		var Suma = SumasGlobales.sumas_mensuales[Noviembre]
		SNF = "NOVIEMBRE: " + str(Suma["Franco"])
		SNJ = "NOVIEMBRE: " + str(Suma["Joaco"])
		SNW = "NOVIEMBRE: " + str(Suma["Wal"])
		SNA = "NOVIEMBRE: " + str(Suma["Azquiely"])
		SNM = "NOVIEMBRE: " + str(Suma["Mauri"])
		$MESESFRANCO/NOVIEMBREFRANCO.text = str(SNF)
		$MESESJOACO/NOVIEMBREFRANCO.text = str(SNJ)
		$MESESWAL/NOVIEMBREFRANCO.text = str(SNW)
		$MESESAZQUIELY/NOVIEMBREFRANCO.text = str(SNA)
		$MESESMAURI/NOVIEMBREFRANCO.text = str(SNM)

func valores_sumaDIC(Diciembre):
	if SumasGlobales.sumaDIC.has(Diciembre):
		var suma = SumasGlobales.sumaDIC[Diciembre]
		SDF = "DICIEMBRE: " + str(suma["Franco"])
		SDJ = "DICIEMBRE: " + str(suma["Joaco"])
		SDW = "DICIEMBRE: " + str(suma["Wal"])
		SDA = "DICIEMBRE: " + str(suma["Azquiely"])
		SDM = "DICIEMBRE: " + str(suma["Mauri"])
		$MESESFRANCO/DICIEMBREFRANCO.text = SDF
		$MESESJOACO/DICIEMBREFRANCO.text = SDJ
		$MESESWAL/DICIEMBREFRANCO.text = SDW
		$MESESAZQUIELY/DICIEMBREFRANCO.text = SDA
		$MESESMAURI/DICIEMBREFRANCO.text = SDM
		
		
func _physics_process(delta: float) -> void:
	TotalFranco = int(sumaEneroFranco) + int(SDF) + int(SFF) + int(SMF) + int(SAF) + int(SMMF) + int(SJF) + int(SJJF) + int(SAAF) + int(SSF) + int(SOF) + int(SNF) 
	TotalJoaco = int(sumaEneroJoaco) + int(SDJ) + int(SFJ) + int(SMJ) + int(SAJ) + int(SMMJ) + int(SJJ) + int(SJJJ) + int(SAAJ) + int(SSJ) + int(SOJ) + int(SNJ) 
	TotalWal = int(sumaEneroWal) + int(SDW) + int(SFW) + int(SMW) + int(SAW) + int(SMMW) + int(SJW) + int(SJJW) + int(SAAW) + int(SSW) + int(SOW) + int(SNW) 
	TotalAzquiely = int(sumaEneroAzquiely) + int(SDA) + int(SFA) + int(SMA) + int(SAA) + int(SMMA) + int(SJA) + int(SJJA) + int(SAAA) + int(SSA) + int(SOA) + int(SNA) 
	TotalMauri = int(SEM) + int(SDM) + int(SFM) + int(SMM) + int(SAM) + int(SMMM) + int(SJM) + int(SJJM) + int(SAAM) + int(SSM) + int(SOM) + int(SNM) 
	$TOTALES/TotalMauri.text = "TOTAL: " + str(TotalMauri)
	$TOTALES/TotalFranco.text = "TOTAL: " + str(TotalFranco)
	$TOTALES/TotalJoaco.text =  "TOTAL: " + str(TotalJoaco)
	$TOTALES/TotalWal.text = "TOTAL: " + str(TotalWal)
	$TOTALES/TotalAzquiely.text = "TOTAL: " + str(TotalAzquiely)
	
	
	var DiasDelAno = 365
	PromFranco = TotalFranco / float(DiasDelAno)
	PromJoaco = TotalJoaco / float(DiasDelAno)
	PromWal = TotalWal / float(DiasDelAno)
	PromAzq = TotalAzquiely / float(DiasDelAno)
	PromMauri = TotalMauri / float(DiasDelAno)
	
	$PROMEDIOS/PromFranco.text = "PROMEDIO P/D:  %.2f" % PromFranco
	$PROMEDIOS/PromJoaco.text = "PROMEDIO P/D:  %.2f" % PromJoaco
	$PROMEDIOS/PromMauri.text = "PROMEDIO P/D:  %.2f" % PromMauri
	$PROMEDIOS/PromAzq.text = "PROMEDIO P/D:  %.2f" % PromAzq
	$PROMEDIOS/PromWal.text =  "PROMEDIO P/D:  %.2f" % PromWal
	
	var TotalGral = 0
	TotalGral = TotalFranco + TotalAzquiely + TotalJoaco + TotalMauri + TotalWal
	$TotalGral.text = "TOTAL GENERAL: " + str(TotalGral)
	
	var PromGral = 0 
	PromGral = TotalGral / float(DiasDelAno)
	$PROMGRAL.text = "PROMEDIO GENERAL: %.2f" % PromGral
	
func _ready() -> void:
	SumasGlobales.cargar_sumas()
	SumasGlobales.cargarDIC()
	valores_de_sumas("Enero")
	valores_de_sumasF("Febrero")
	valores_de_sumasMAR("Marzo")
	valores_de_sumasAB("Abril")
	valores_sumasMM("Mayo")
	valores_sumaJUN("Junio")
	valores_sumasJJUL("Julio")
	valores_sumaAGO("Agosto")
	valores_sumaSEP("Septiembre")
	valores_sumaOCT("Octubre")
	valores_sumaNOV("Noviembre")
	valores_sumaDIC("Diciembre")
	 
	
	
