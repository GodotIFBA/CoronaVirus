extends TileMap


var flip = true
var posicao_inicial
var posicao_final_direita
var posicao_final_esquerda
var velocidade = 9


func _ready():
	posicao_inicial = $".".position.x
	posicao_final_direita = posicao_inicial + 600
	posicao_final_esquerda = posicao_inicial - 600
func _process(delta):
	if(posicao_inicial <= posicao_final_direita and flip):
		$"." . position.x += velocidade;
		if($".".position.x >= posicao_final_direita):
			flip = false
		
	if($".".position.x >= posicao_final_esquerda and !flip):
		$".".position.x -= velocidade
		if($".".position.x <= posicao_final_esquerda):
			flip = true
