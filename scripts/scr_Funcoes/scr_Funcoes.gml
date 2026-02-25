//function liga_lanterna(){
	

//		global.estadoObjeto.lanterna = !global.estadoObjeto.lanterna;

//}

function pegarCarta(){
	
	var _alcance = 100;
	if(distance_to_object(obj_player) <= _alcance && global.itemVisivel && keyboard_check_pressed(ord("E"))){
		instance_destroy(); 
		global.cartasColetadas += 1;
		
		show_debug_message(global.cartasColetadas);
	}
	
}

function revelar_com_lanterna()
{
  
   if(global.estadoObjeto.lanterna){
		var _angulo_player = obj_player.image_angle;
		var _angulo_objeto = point_direction(obj_player.x, obj_player.y, x, y);
		var _diferencia_angulo = angle_difference(_angulo_player, _angulo_objeto);
		var _abertura_lanterna = 60; 
		var _alcance = 150;
		
		if (abs(_diferencia_angulo) <= _abertura_lanterna && distance_to_object(obj_player) <= _alcance) {
		
	        image_alpha = lerp(image_alpha, 1, 0.15);
			global.itemVisivel = 1;
			
	    }
	    else
	    {
	        image_alpha = lerp(image_alpha, 0, 0.15);
			global.itemVisivel = 0;
	    }
	
   }else{
		image_alpha = lerp(image_alpha, 0, 0.15);
		global.itemVisivel = 0;
   }
}


function seguePlayer(){
	x = obj_player.x;
	y = obj_player.y;
	image_angle = obj_player.image_angle;
	
}