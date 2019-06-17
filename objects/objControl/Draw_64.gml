/// @description 
//UI Stuff 


//Resize Font
if(instance_exists(objCamera)){
	if(objCamera.size == 1){
		
		draw_set_font(fntGameFont); 
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		var _windHeight = window_get_height();
		var _windWidth = window_get_width();
		
		var xHSInt = 45; 
		var xGS = 25;
		var yGS = 15; 
		var textMovement = 8;
		//Game Score UI 
		if(global.gameScore = 0){
			draw_set_colour(c_red); 
			draw_text(xGS, yGS, "SCORE" );
			draw_set_colour(c_white);
			draw_text(xHSInt + (textMovement * 2), 15, string(global.gameScore));
		}else if(global.gameScore < 100){
			draw_set_colour(c_red); 
			draw_text(xGS, yGS, "SCORE" );
			draw_set_colour(c_white);
			draw_text(xHSInt + (textMovement * 2), 15, string(global.gameScore));
		}else if(global.gameScore < 1000){
			draw_set_colour(c_red); 
			draw_text(xGS, yGS, "SCORE" );
			draw_set_colour(c_white);
			draw_text(xHSInt + (textMovement * 2), 15, string(global.gameScore));	
		}else if(global.gameScore < 10000){
			draw_set_colour(c_red); 
			draw_text(xGS, yGS, "SCORE" );
			draw_set_colour(c_white);
			draw_text(xHSInt + (textMovement * 2), 15, string(global.gameScore));
		}
		
		draw_set_valign(fa_middle);
		draw_set_halign(fa_left);
		if(global.combo == 1){
			draw_text(_windWidth - 60, _windHeight - 10, "COMBO:" + string(global.combo));
		}else{
			draw_text(_windWidth - 80, _windHeight - 10, "COMBO:" + string(global.combo));	
		}
	
	//Draw the Health/Armor elements to the HUD

		var scale = 3; 
		if(global.playerArmor == 1){
			switch(global.playerHealth){
				case 1:
					draw_sprite_ext(sprPlayerHUDArmor, 0, 60, _windHeight - 20, scale, scale, 0, c_white, 0.75); 
				break; 
				case 2:
					draw_sprite_ext(sprPlayerHUDArmor, 1, 60, _windHeight - 20, scale, scale, 0, c_white, 0.75); 
				break; 
			}
		}else{
			switch(global.playerHealth){
				case 1:
					draw_sprite_ext(sprPlayerHUDHp, 0, 60, _windHeight - 20, scale, scale, 0, c_white, 0.75); 
				break; 
				case 2:
					draw_sprite_ext(sprPlayerHUDHp, 1, 60, _windHeight - 20, scale, scale, 0, c_white, 0.75); 
				break; 
			}
		}
		
		//Bombs
		var scale = 3 
		switch(global.currentBombs){
				case 1:
					draw_sprite_ext(sprBomb, 0, 40, _windHeight - 50, scale, scale, 0, c_white, 0.75); 
				break; 
				case 2:
					draw_sprite_ext(sprBomb, 1, 40, _windHeight - 50, scale, scale, 0, c_white, 0.75); 
				break; 
		}

	}else{
		draw_set_font(fntGameFontZoomTwo); 
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		var _windHeight = window_get_height();
		var _windWidth = window_get_width();
		
		var xHSInt = 120; 
		var xGS = 60;
		var yGS = 30; 
		var textMovement = 8;
		//Game Score UI 
		if(global.gameScore = 0){
			draw_set_colour(c_red); 
			draw_text(xGS, yGS, "SCORE" );
			draw_set_colour(c_white);
			draw_text(xHSInt + (textMovement * 2), 30, string(global.gameScore));
		}else if(global.gameScore < 100){
			draw_set_colour(c_red); 
			draw_text(xGS, yGS, "SCORE" );
			draw_set_colour(c_white);
			draw_text(xHSInt + (textMovement * 2), 30, string(global.gameScore));
		}else if(global.gameScore < 1000){
			draw_set_colour(c_red); 
			draw_text(xGS, yGS, "SCORE" );
			draw_set_colour(c_white);
			draw_text(xHSInt + (textMovement * 2) + 10, 30, string(global.gameScore));	
		}else if(global.gameScore < 10000){
			draw_set_colour(c_red); 
			draw_text(xGS, yGS, "SCORE" );
			draw_set_colour(c_white);
			draw_text(xHSInt + (textMovement * 2)+ 10, 30, string(global.gameScore));
		}
		
		draw_set_valign(fa_middle);
		draw_set_halign(fa_left);
		if(global.combo == 1){
			draw_text(_windWidth - 140, _windHeight - 20, "COMBO:" + string(global.combo));
		}else{
			draw_text(_windWidth - 190, _windHeight - 20, "COMBO:" + string(global.combo));	
		}
		
		//Draw the Health/Armor elements to the HUD
		var scale = 5; 
		if(global.playerArmor == 1){
			switch(global.playerHealth){
				case 1:
					draw_sprite_ext(sprPlayerHUDArmor, 0, 100, _windHeight - 35, scale, scale, 0, c_white, 0.75); 
				break; 
				case 2:
					draw_sprite_ext(sprPlayerHUDArmor, 1, 100, _windHeight - 35, scale, scale, 0, c_white, 0.75); 
				break; 
			}
		}else{
			switch(global.playerHealth){
				case 1:
					draw_sprite_ext(sprPlayerHUDHp, 0, 100, _windHeight - 35, scale, scale, 0, c_white, 0.75); 
				break; 
				case 2:
					draw_sprite_ext(sprPlayerHUDHp, 1, 100, _windHeight - 35, scale, scale, 0, c_white, 0.75); 
				break; 
			}
		}
		
		//Bombs
		var scale = 5; 
		switch(global.currentBombs){
				case 1:
					draw_sprite_ext(sprBomb, 0, 65, _windHeight - 85, scale, scale, 0, c_white, 0.75); 
				break; 
				case 2:
					draw_sprite_ext(sprBomb, 1, 65, _windHeight - 85, scale, scale, 0, c_white, 0.75); 
				break; 
		}
		
	}
}

//Screen Flash with Bomb mechanic 
if(global.flash){
	if(instance_exists(objCamera)){
		draw_rectangle(0, 0, room_width * objCamera.size , room_height * objCamera.size, false); 
	}
	global.flash = false; 
}

if(gameOver){
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_color(c_red);
	draw_text(objCamera.windowWidth / 2, objCamera.windowHeight / 2, "GAME OVER");
	draw_text(objCamera.windowWidth / 2, objCamera.windowHeight / 2 + 48, "PRESS R TO RESTART"); 
	draw_set_color(c_white);
}

if(global.gameWin){
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_color(c_red);
	draw_text(objCamera.windowWidth / 2, objCamera.windowHeight / 2, "YOU WON");
	draw_text(objCamera.windowWidth / 2, objCamera.windowHeight / 2 + 48, "PRESS R TO RESTART"); 
	draw_set_color(c_white);
}

