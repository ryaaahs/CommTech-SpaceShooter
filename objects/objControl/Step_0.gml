/// @description 

show_debug_message(room_width); 
global.highScore = global.gameScore; 
//Respawn the player
if(global.playerHealth > 0){
	if(!instance_exists(objPlayer)){
		//Respawn
		var _spawnX = room_width / 2;
		var _spawnY = room_height - 48; // 64 is player Sprite size * 2
		//show_message("X: " + string(_spawnX));
		//show_message("Y: " + string(_spawnY));
		instance_create_layer(_spawnX, _spawnY, "Instances", objPlayer);
	}
}else{
	//gameover	
}
