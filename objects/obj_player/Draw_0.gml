/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();


if (global.estadoObjeto.lanterna){
	
	//draw_set_colour(c_yellow);
    //draw_circle(x + 300, y, 120, false);
		var _angulo = angulo_mira;
	    var _alcance = 300;
	    var _abertura = 30; // quanto abre o cone

	    var _x1 = x;
	    var _y1 = y;

	    var _x2 = x + lengthdir_x(_alcance, _angulo - _abertura);
	    var _y2 = y + lengthdir_y(_alcance, _angulo - _abertura);

	    var _x3 = x + lengthdir_x(_alcance, _angulo + _abertura);
	    var _y3 = y + lengthdir_y(_alcance, _angulo + _abertura);

	    draw_set_color(c_yellow);
		draw_set_alpha(.7);
	    draw_triangle(_x1, _y1, _x2, _y2, _x3, _y3, false);
		draw_set_alpha(1);
	}
	