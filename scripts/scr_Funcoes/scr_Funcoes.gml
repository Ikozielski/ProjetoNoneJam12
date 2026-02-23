function liga_lanterna(){
	
	if keyboard_check_released(ord("X")){
		global.estadoObjeto.lanterna = !global.estadoObjeto.lanterna;
	}

}