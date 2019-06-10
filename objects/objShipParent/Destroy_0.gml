/// @description 

//Combo and score stuff
if(global.combo != 2.5){
	if(instance_exists(objPlayer)){
		if(y < room_height + sprite_yoffset){
			global.combo += 0.1;
			global.gameScore += ceil(shipScore * global.combo); 
		}
		
	}
}
