/// @description 
//UI Stuff 


//Resize Font
if(instance_exists(objCamera)){
	if(objCamera.size == 1){
		draw_set_font(fntGameFont);
		draw_text(16, 16, "SCORE:" + string(global.gameScore));
		draw_text(16, 32, "COMBO:" + string(global.combo)); 
	}else{
		draw_set_font(fntGameFontZoomTwo); 
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		var _windHeight = window_get_height();
		
		if(global.gameScore = 0){
			draw_set_colour(c_red); 
			draw_text(70, 20, "SCORE" );
			draw_set_colour(c_white);
			draw_text(70, 40, string(global.gameScore));
		}else if(global.gameScore < 100){
			draw_set_colour(c_red); 
			draw_text(70, 20, "SCORE" );
			draw_set_colour(c_white);
			draw_text(71, 40, string(global.gameScore));
		}else if(global.gameScore < 1000){
			draw_set_colour(c_red); 
			draw_text(70, 20, "SCORE" );
			draw_set_colour(c_white);
			draw_text(72, 40, string(global.gameScore));	
		}else if(global.gameScore < 10000){
			draw_set_colour(c_red); 
			draw_text(73, 20, "SCORE" );
			draw_set_colour(c_white);
			draw_text(76, 40, string(global.gameScore));
		}
		draw_text(room_width, _windHeight - 20, "COMBO:" + string(global.combo));
	}
}

//Screen Flash with Bomb mechanic 
if(global.flash){
	if(instance_exists(objCamera)){
		draw_rectangle(0, 0, room_width * objCamera.size , room_height * objCamera.size, false); 
	}
	global.flash = false; 
}