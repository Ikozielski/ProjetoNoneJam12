/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


controla_player();


#region Inventário Lanterna
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

#endregion

//--------------------------------------------------------------------------------------------

#region Inventário Rádio 

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

#endregion


#region Atravessa Porta
	
	
	//Poderia ter feito com função, mas como só vou fazer pra um objeto, to fazendo assim mesmo kkkkkk 
	//E também to sem tempo pra entregar esse projeto
	if (global.estadoObjeto.lanterna && obj_colisaoT.fantasma){
		inst_59583BF6.solid = false;
	} else {
		inst_59583BF6.solid = true;
	}
	
	
#endregion
