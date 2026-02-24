/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


controla_player();

if (keyboard_check_pressed(ord("2"))) {
	
	if (instance_exists(obj_radio)){
		instance_destroy(obj_radio);
		global.estadoObjeto.radio = false;
		global.itemEquipado.radio = false;
	}
	
	if (!instance_exists(obj_lanterna)){
		_instancia_lanterna = instance_create_layer(x, y, "Objetos", obj_lanterna);
		//_instancia_lanterna.x = x;
		//_instancia_lanterna.y = y;
	}

	global.itemEquipado.lanterna = !global.itemEquipado.lanterna;
	
}


if(global.itemEquipado.lanterna && keyboard_check_pressed(ord("F"))){
	global.estadoObjeto.lanterna = !global.estadoObjeto.lanterna;
			
}


//--------------------------------------------------------------------------------------------


if (keyboard_check_pressed(ord("1"))) {
	
	if (instance_exists(obj_lanterna)){
		instance_destroy(obj_lanterna);
		global.estadoObjeto.lanterna = false;
		global.itemEquipado.lanterna = false;
	}
	
	if (!instance_exists(obj_radio)){
		_instancia_lanterna = instance_create_layer(x, y, "Objetos", obj_radio);
		_instancia_lanterna.x = x;
		_instancia_lanterna.y = y;
	}

	global.itemEquipado.radio = !global.itemEquipado.radio;
	
}


if(global.itemEquipado.radio && keyboard_check_pressed(ord("R"))){
	global.estadoObjeto.radio = !global.estadoObjeto.radio;
			
}


show_debug_message(global.estadoObjeto.radio);