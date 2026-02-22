/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//gravity = .1;

velocidade = 5;

controla_player = function(){
	
	var _cima, _baixo, _esquerda, _direita, _interagir;
	_cima = keyboard_check(ord("W")) or keyboard_check(vk_up);
	_baixo = keyboard_check(ord("S")) or keyboard_check(vk_down);
	_esquerda = keyboard_check(ord("A")) or keyboard_check(vk_left);
	_direita = keyboard_check(ord("D")) or keyboard_check(vk_right);
	_interagir = keyboard_check(ord("Z")) or mouse_check_button(mb_left);
	
	if (keyboard_check(vk_shift)) {
		velocidade = 2;
	}else{
		velocidade = 5;
	}
	
	
	//Direção do movimento, mas a velocidade diagonal fica maior
	//var _velocidadeH = (_direita - _esquerda) * velocidade;
	//x += _velocidadeH;
		
	//var _velocidadeV = (_baixo - _cima) * velocidade;
	//y += _velocidadeV;
	
	// Calcula direção do movimento
	var _movimento_horizontal = (_direita - _esquerda);
	var _movimento_vertical = (_baixo - _cima);

	// Calcula o tamanho do vetor
	var _comprimento = point_distance(0, 0, _movimento_horizontal, _movimento_vertical);

	// Normaliza para evitar velocidade maior na diagonal
	if (_comprimento > 0) {
	    _movimento_horizontal = _movimento_horizontal / _comprimento;
	    _movimento_vertical = _movimento_vertical / _comprimento;
	}

	// Aplica movimento
	x = x + _movimento_horizontal * velocidade;
	y = y + _movimento_vertical * velocidade;
	
	show_debug_message(velocidade)
	
	liga_lanterna()
	
//	if (_velocidadeH != 0 || _velocidadeV != 0) {

//    // Diagonais
//    if (_velocidadeH > 0 && _velocidadeV < 0) {
//        sprite_index = spr_player_cima_direita;
//    }
//    else if (_velocidadeH < 0 && _velocidadeV < 0) {
//        sprite_index = spr_player_cima_esquerda;
//    }
//    else if (_velocidadeH > 0 && _velocidadeV > 0) {
//        sprite_index = spr_player_baixo_direita;
//    }
//    else if (_velocidadeH < 0 && _velocidadeV > 0) {
//        sprite_index = spr_player_baixo_esquerda;
//    }

//    // Horizontais
//    else if (_velocidadeH > 0) {
//        sprite_index = spr_player_direita;
//    }
//    else if (_velocidadeH < 0) {
//        sprite_index = spr_player_esquerda;
//    }

//    // Verticais
//    else if (_velocidadeV > 0) {
//        sprite_index = spr_player_baixo;
//    }
//    else if (_velocidadeV < 0) {
//        sprite_index = spr_player_cima;
//    }

//    image_speed = 1;

//} else {

//    image_speed = 0;
//    image_index = 0;

//}

	
	
}