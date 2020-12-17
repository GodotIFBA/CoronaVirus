extends TileMap


var flip = true
var posicao_inicial
var posicao_final
var velocidade = 3


func _ready():
	posicao_inicial = $".".position.y
	posicao_final = posicao_inicial + 380
	
func _process(delta):
	if(posicao_inicial <= posicao_final and flip):
		$"." . position.y += velocidade;
		if($".".position.y >= posicao_final):
			flip = false
		
	if($".".position.y >= posicao_inicial and !flip):
		$".".position.y -= velocidade
		if($".".position.y <= posicao_inicial):
			flip = true
