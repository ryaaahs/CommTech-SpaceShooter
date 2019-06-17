/// @description 

//Combo and score stuff


if(instance_exists(objPlayer)){
	if(y < room_height + sprite_yoffset){
		global.gameScore += ceil(shipScore * global.combo); 
	}
}
