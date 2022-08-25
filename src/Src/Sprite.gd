extends Sprite
# variables 
var pag = 0
var mensagem
var texts = [
	"(Meneguzzi): Aahh, quick! here! . I do not have much time….",
	"(Cleiton): What happened? Where is everyone?",
	"(Meneguzzi): Everyone is infected with the mpj-1 virus and as far as I know we are the only survivors…",
	"(Cleiton): The only survivors!? What should I do?",
	"(Meneguzzi): You…..you, MUST FIND THE CURE!",
	"(Cleiton): What kind of cure for something like that?",
	"(Meneguzzi): POMA",
	"(Cleiton): Poma? What does this mean?",
	"(Meneguzzi): Product Operation Maturity Assessment, a model created by Dell and it is the cure!!!,",
	"(Cleiton): Where can I find the cure?",
	"(Meneguzzi): The antidote is only available if you pass through the six floors of Dell headquarters and master the nine concepts of the POMA model",
	"(Meneguzzi): Here is a quick reminder 1(hands paper explaining what happened and the objectives) .…. PROMISE ME YOU WILL SAVE EVERYONE.",	
]

# function execute comands in dialog box 
func _process(_delta):	
	if(pag>=0):
		mensagem = str(texts[pag])
	$Panel/Label.set_text(str(mensagem))
	if pag >= 11 || pag<0:
		hide()
		pag = 1
	if Input.is_action_just_pressed("Passar dialgo"):
		pag += 1
	if Input.is_action_just_pressed("Voltar Dialogo"):
		pag -= 1

# function show the dialog box 
func _on_Area2D_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	show()
